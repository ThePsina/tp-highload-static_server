#include <iostream>
#include <tuple>
#include <zconf.h>
#include "utils/config.h"
#include "client/Client.h"
#include "server/server.h"

int main() {
    Config config;
    bool status;
    std::tie(config, status) = Config::read_config();
    if (!status) {
        std::cout << "bad config" <<std::endl;
    }

    try {
        Server server(8081, 50, config.doc_root);
        for (int i = 1; i < config.cpu; i++) {
            pid_t pid = fork();
            if (pid == fork()) {
                break;
            } else if (pid < 0) {
                std::cout << "bad fork " << std::endl;
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
