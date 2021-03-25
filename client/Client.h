#ifndef TP_HIGHLOAD_STATIC_SERVER_CLIENT_H
#define TP_HIGHLOAD_STATIC_SERVER_CLIENT_H


#include <string>
#include <unordered_map>
#include "../request/request.h"

class Client {
public:
    Client(int s, std::string doc_root);
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
};


#endif //TP_HIGHLOAD_STATIC_SERVER_CLIENT_H
