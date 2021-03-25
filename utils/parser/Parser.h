#ifndef TP_HIGHLOAD_STATIC_SERVER_PARSER_H
#define TP_HIGHLOAD_STATIC_SERVER_PARSER_H


#include <string>
#include "../../request/request.h"

enum Status {
    Ready,
    InProgress,
    Error
};

struct Parser {
    static Status Parse(Request& request, std::string& req);
};


#endif //TP_HIGHLOAD_STATIC_SERVER_PARSER_H
