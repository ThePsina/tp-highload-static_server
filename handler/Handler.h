//
// Created by user on 21.03.2021.
//

#ifndef TP_HIGHLOAD_STATIC_SERVER_HANDLER_H
#define TP_HIGHLOAD_STATIC_SERVER_HANDLER_H


#include <string>
#include "../request/request.h"

struct Handler {
    static int Handle(std::string &response, Request &req, std::string& doc_root, std::string& path);
    static void Error(std::string &response, Request &req);
};


#endif //TP_HIGHLOAD_STATIC_SERVER_HANDLER_H
