cmake_minimum_required(VERSION 3.17)
project(tp_highload_static_server)

set(CMAKE_CXX_STANDARD 20)

add_executable(tp_highload_static_server main.cpp  server/server.cpp server/server.h request/request.h client/Client.cpp client/Client.h utils/parser/Parser.cpp utils/parser/Parser.h handler/Handler.cpp handler/Handler.h utils/responseMethods.h utils/mimeType.h utils/config.h)