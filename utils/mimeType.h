#ifndef TP_HIGHLOAD_STATIC_SERVER_MIMETYPE_H
#define TP_HIGHLOAD_STATIC_SERVER_MIMETYPE_H

#include <unordered_map>

std::unordered_map<std::string, std::string> mime_types = {
        {".txt",  "text/plain"},
        {".html", "text/html"},
        {".css",  "text/css"},
        {".js",   "text/javascript"},
        {".png",  "image/png"},
        {".jpg",  "image/jpeg"},
        {".jpeg", "image/jpeg"},
        {".swf",  "application/x-shockwave-flash"},
        {".gif",  "image/gif"}
};

std::string get_mime_type(std::string extension) {
    std::transform(extension.begin(), extension.end(), extension.begin(),
                   [](unsigned char c) { return std::tolower(c); });

    auto type = mime_types.find(extension);
    if (type == mime_types.end()) {
        return "application/octet-stream";
    }

    return type->second;
}

#endif //TP_HIGHLOAD_STATIC_SERVER_MIMETYPE_H
