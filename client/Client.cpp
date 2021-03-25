#include "Client.h"
#include "../utils/parser/Parser.h"
#include "../handler/Handler.h"
#include <string>
#include <cerrno>
#include <cstring>
#include <sys/socket.h>
#include <iostream>
#include <sys/mman.h>
#include <fcntl.h>
#include <sys/sendfile.h>
#include <unistd.h>

#define BUF_SIZE 8000

Client::Client(int s, std::string doc_root): socket(s), doc_root_(std::move(doc_root)) {}

Client::~Client() {
    if (socket > 0) {
        ::close(this->socket);
    }
}

void Client::Serve() {
    try {
        std::string req = this->read();

        auto status = Parser::Parse(this->request, req);

        if (status == Status::Ready) {
            std::string path;
            int size = Handler::Handle(this->response, this->request, this->doc_root_, path);
            write(path, size);
        }

        if (status == Status::Error) {
            std::string path;
            Handler::Error(this->response, this->request);
            write("", 0);
        }
    } catch (const std::exception &e) {
        std::cout << e.what() << std::endl;
    }
}

std::string Client::read() const {
    std::string result;
    char *buf = new char[BUF_SIZE];
    size_t package_size = 0;
    while (package_size != BUF_SIZE) {
        ssize_t received = ::recv(socket, buf + package_size, BUF_SIZE - package_size, 0);
        if (received == -1 || received == 0) {
            delete[] buf;
            throw std::runtime_error("read failed: " + std::string(std::strerror(errno)));
        }

        package_size += received;
        result.append(buf, received);
        if (result.find("\r\n\r\n") != std::string::npos) {
            break;
        }
    }

    delete[] buf;
    return result;
}

void Client::write(const std::string &path, int size_file) {
    send(response.data(), response.size());

    if (request.method == "GET" && !path.empty()) {
        int fd = open(path.c_str(), 0);
        sendfile(socket, fd, 0, size_file);
        close(fd);
    }
}

void Client::send(const char *start, int size) const {
    size_t left = size;
    ssize_t sent = 0;
    while (left > 0) {
        sent = ::send(socket, start + sent, size - sent, 0);
        if (-1 == sent) {
            throw std::runtime_error("write failed: " + std::string(strerror(errno)));
        }

        left -= sent;
    }
}
