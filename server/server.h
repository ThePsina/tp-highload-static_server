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
};


#endif //TP_HIGHLOAD_STATIC_SERVER_SERVER_H
