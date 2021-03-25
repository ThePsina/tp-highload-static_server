#include "Handler.h"
#include "../utils/responseMethods.h"
#include "../utils/mimeType.h"
#include <iostream>
#include <filesystem>

std::string url_decode(std::string& filename) {
    std::string tmp;
    int j = 0;
    char ch;
    for (int i = 0; i < filename.size(); ++i) {
        if (int(filename[i]) == 37) {
            sscanf(filename.substr(i + 1, 2).c_str(), "%x", &j);
            ch = static_cast<char>(j);
            tmp += ch;
            i += 2;
        } else {
            tmp += filename[i];
        }
    }

    return tmp;
}

int Handler::Handle(std::string &response, Request &req, std::string &doc_root, std::string &path) {
    if (req.method != "GET" && req.method != "HEAD") {
        response = ResponseStatus::MethodNotAllowed;
        return 0;
    }

    if (req.uri.find("../") != std::string::npos) {
        response = ResponseStatus::Forbidden;
        return 0;
    }

    auto pos = req.uri.find('?');
    if (pos != std::string::npos) {
        req.uri = req.uri.substr(0, pos);
    }

    req.uri = url_decode(req.uri);
    bool lastSlash = req.uri.rfind('/') == req.uri.size() - 1;
    if (lastSlash) {
        if (req.uri.rfind('/') > req.uri.rfind('.')) {
            response = ResponseStatus::NotFound;
            return 0;
        }
        req.uri += "index.html";
    }

    pos = req.uri.rfind('.');
    if (pos == std::string::npos) {
        response = ResponseStatus::BadRequest;
        return 0;
    }

    bool bad_path = false;
    path = doc_root + req.uri;
    int size = 0;
    try {
        size = std::filesystem::file_size(path);
    } catch(std::filesystem::filesystem_error& e) {
        bad_path = true;
        std::cout << e.what() << '\n';
        if (req.uri.rfind("index.html") != std::string::npos) {
            response = ResponseStatus::Forbidden;
        } else {
            response = ResponseStatus::NotFound;
        }
    }
    if (bad_path) {
        return 0;
    }

    std::string mime_type = get_mime_type(req.uri.substr(pos));
    std::stringstream resp;
    resp << "HTTP/1.1 200 OK\r\n"
         << "Content-Type: " << mime_type << "\r\n"
         << "Server: server on c++\r\n"
         << "Content-Length: " << size << "\r\n"
         << "Connection: close"
         << "\r\n\r\n";
    response = std::move(resp.str());

    return size;
}

void Handler::Error(std::string &response, Request &req) {
    response = ResponseStatus::BadRequest;
}
