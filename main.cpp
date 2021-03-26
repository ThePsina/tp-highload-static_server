#include <iostream>
#include <tuple>
#include <zconf.h>
#include <memory>
#include "utils/config.h"
#include "client/Client.h"
#include "server/server.h"

// /home/gg/Work/Technopark/ThirdSem/tp-highload-static_server/test

int main() {
    Config config;
    bool status;
    std::tie(config, status) = Config::read_config("/etc/server.conf");
    if (!status) {
        std::cout << "bad config" <<std::endl;
    }

    try {
        Server server(8082, 5, config.doc_root);
        for (int i = 1; i < config.cpu; i++) {
            pid_t pid = 0;
            if (pid == fork()) {
                break;
            } else if (pid < 0) {
                std::cout << "bad fork " << std::endl;
                return -2;
            }
        }

        while(true) {
            std::shared_ptr<Client> client = server.Accept();
            client->Serve();
        }
    } catch (std::exception& e) {
        std::cerr << "exception: " << e.what() << "\n";
    }
}
