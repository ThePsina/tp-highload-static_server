//
// Created by user on 20.03.2021.
//

#ifndef TP_HIGHLOAD_STATIC_SERVER_SERVER_H
#define TP_HIGHLOAD_STATIC_SERVER_SERVER_H

#include <cstdio>
#include <string_view>
#include "../client/Client.h"

class Server {
public:
    Server(int port, int limit, std::string doc_root);
    ~Server();
    std::shared_ptr<Client> Accept();

private:
    int socket;
    std::string doc_root_;
    std::unordered_map<std::string, Mapping> map;
};


#endif //TP_HIGHLOAD_STATIC_SERVER_SERVER_H
