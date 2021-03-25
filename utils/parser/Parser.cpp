#include <sstream>
#include "Parser.h"

Status Parser::Parse(Request &request, std::string &req) {
    std::stringstream stringStream(req);
    stringStream >> request.method;
    stringStream >> request.uri;

    std::string input;
    while (stringStream >> input) {
        if (request.method == "GET" || request.method == "HEAD" || request.method == "OPTIONS" ||
            request.method == "PUT" || request.method == "DELETE" || request.method == "POST") {
            return Status::Ready;
        }
        return Status::Error;
    }

    return InProgress;
}
