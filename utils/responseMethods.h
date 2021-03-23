//
// Created by user on 21.03.2021.
//

#ifndef TP_HIGHLOAD_STATIC_SERVER_RESPONSEMETHODS_H
#define TP_HIGHLOAD_STATIC_SERVER_RESPONSEMETHODS_H

namespace ResponseStatus {
    using Type = std::string_view;
    constexpr Type MethodNotAllowed = "HTTP/1.1 405 Method Not Allowed\r\nServer: server on c++\r\nConnection: close\r\n\r\n";
    constexpr Type Forbidden = "HTTP/1.1 403 Forbidden\r\nServer: server on c++\r\nConnection: close\r\n\r\n";
    constexpr Type BadRequest = "HTTP/1.0 400 Bad Request\r\nServer: server on c++\r\nConnection: close\r\n\r\n";
    constexpr Type NotFound = "HTTP/1.0 404 Not Found\r\nServer: server on c++\r\nConnection: close\r\n\r\n";
}

#endif //TP_HIGHLOAD_STATIC_SERVER_RESPONSEMETHODS_H
