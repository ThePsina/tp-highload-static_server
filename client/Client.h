//
// Created by user on 21.03.2021.
//

#ifndef TP_HIGHLOAD_STATIC_SERVER_CLIENT_H
#define TP_HIGHLOAD_STATIC_SERVER_CLIENT_H


#include <string>
#include <unordered_map>
#include "../utils/mapping.h"
#include "../request/request.h"

class Client {
public:
    Client(int s, std::string doc_root, std::unordered_map<std::string, Mapping>& map);
    ~Client();
    void Serve();

private:
    std::string read() const;
    void write(const std::string& path, int size_file);
    void send(const char* start, int size) const;

    int socket;
    std::string doc_root_;
    Request request;
    std::string response;

    std::unordered_map<std::string, Mapping>& map_;
};


#endif //TP_HIGHLOAD_STATIC_SERVER_CLIENT_H
