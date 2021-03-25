#ifndef TP_HIGHLOAD_STATIC_SERVER_REQUEST_H
#define TP_HIGHLOAD_STATIC_SERVER_REQUEST_H


#include <string>

struct Request {
    std::string method;
    std::string uri;
};


#endif //TP_HIGHLOAD_STATIC_SERVER_REQUEST_H
