#ifndef TP_HIGHLOAD_STATIC_SERVER_CONFIG_H
#define TP_HIGHLOAD_STATIC_SERVER_CONFIG_H

#include <fstream>
#include <sstream>

struct Config {
    static std::pair<Config, bool> read_config(const std::string& address) {
        std::ifstream fin(address);
        if (!fin.is_open()) {
            return std::make_pair(Config{}, false);
        }

        Config config;
        std::stringstream ss;

        std::string line;
        while (!fin.eof()) {
            getline(fin, line);
            ss << line;
        }
        fin.close();

        ss >> config.cpu;
        ss >> config.doc_root;

        return std::make_pair(config, true);
    }

    int cpu;
    std::string doc_root;
};

#endif //TP_HIGHLOAD_STATIC_SERVER_CONFIG_H
