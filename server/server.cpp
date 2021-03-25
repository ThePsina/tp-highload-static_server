//
// Created by user on 20.03.2021.
//

#include <stdexcept>
#include <cstring>
#include <sys/socket.h>
#include <netinet/in.h>
#include <unistd.h>
#include <cerrno>
#include <utility>
#include <memory>
#include "server.h"

Server::Server(int port, int limit, std::string doc_root) {
    int sd = ::socket(PF_INET, SOCK_STREAM, IPPROTO_TCP);
    if (sd <= 0) {
        throw std::runtime_error("socket: " + std::string(strerror(errno)));
    }

    int yes = 1;
    if (setsockopt(sd, SOL_SOCKET, SO_REUSEADDR, &yes, sizeof(int)) == -1) {
        ::close(sd);
        throw std::runtime_error("setopt: " + std::string(strerror(errno)));
    }

    struct sockaddr_in serv_addr{};

    serv_addr.sin_family = AF_INET;
    serv_addr.sin_addr.s_addr = htonl(INADDR_ANY);
    serv_addr.sin_port = htons(port);

    if (::bind(sd, (struct sockaddr*)&serv_addr, sizeof(serv_addr)) < 0) {
        ::close(sd);
        throw std::runtime_error("bind: " + std::string(strerror(errno)));
    }

    ::listen(sd, limit);
    socket = sd;
    doc_root_ = std::move(doc_root);
}

std::shared_ptr<Client> Server::Accept() {
    struct sockaddr_in client{};
    memset(&client, 0, sizeof(client));
    socklen_t cli_len = sizeof(client);

    int cli_sd = ::accept(socket, (struct sockaddr*)&client, &cli_len);
    if (-1 == cli_sd) {
        return std::shared_ptr<Client>();
    }

    return std::make_shared<Client>(cli_sd, doc_root_, map);
}

Server::~Server() {
    if (socket > 0) {
        ::close(socket);
    }
}
