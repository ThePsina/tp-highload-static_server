##Запуск сервера статики
- docker build -t server -f server.Dockerfile .
- docker run -p 8082:8082 --name server -t server
##Func
````
test_directory_index (__main__.HttpServer)
directory index file exists ... ok
test_document_root_escaping (__main__.HttpServer)
document root escaping forbidden ... ok
test_empty_request (__main__.HttpServer)
Send empty line ... ok
test_file_in_nested_folders (__main__.HttpServer)
file located in nested folders ... ok
test_file_not_found (__main__.HttpServer)
absent file returns 404 ... ok
test_file_type_css (__main__.HttpServer)
Content-Type for .css ... ok
test_file_type_gif (__main__.HttpServer)
Content-Type for .gif ... ok
test_file_type_html (__main__.HttpServer)
Content-Type for .html ... ok
test_file_type_jpeg (__main__.HttpServer)
Content-Type for .jpeg ... ok
test_file_type_jpg (__main__.HttpServer)
Content-Type for .jpg ... ok
test_file_type_js (__main__.HttpServer)
Content-Type for .js ... ok
test_file_type_png (__main__.HttpServer)
Content-Type for .png ... ok
test_file_type_swf (__main__.HttpServer)
Content-Type for .swf ... ok
test_file_urlencoded (__main__.HttpServer)
urlencoded filename ... ok
test_file_with_dot_in_name (__main__.HttpServer)
file with two dots in name ... ok
test_file_with_query_string (__main__.HttpServer)
query string with get params ... ok
test_file_with_slash_after_filename (__main__.HttpServer)
slash after filename ... ok
test_file_with_spaces (__main__.HttpServer)
filename with spaces ... ok
test_head_method (__main__.HttpServer)
head method support ... ok
test_index_not_found (__main__.HttpServer)
directory index file absent ... ok
test_large_file (__main__.HttpServer)
large file downloaded correctly ... ok
test_post_method (__main__.HttpServer)
post method forbidden ... ok
test_request_without_two_newlines (__main__.HttpServer)
Send GET without to newlines ... ok
test_server_header (__main__.HttpServer)
Server header exists ... ok

----------------------------------------------------------------------
Ran 24 tests in 0.016s

OK
````
##Benchmark
````
Configuring to send GET requests to: http://localhost:8082/httptest/wikipedia_russia.html
Generating the requests...
Finished generating the requests
Sending the requests to the server...
Finished sending the requests
Processing the results...

=========================== Results ========================================

Total requests:                                 20000
Time taken to complete requests:        13.442480557s
Requests per second:                             1488
Max response time (ms):                            23
Min response time (ms):                             1
Avg response time (ms):                          6.21

========= Percentage of responses by status code ==========================

Number of connection errors:                        0
Number of 1xx responses:                            0
Number of 2xx responses:                        20000
Number of 3xx responses:                            0
Number of 4xx responses:                            0
Number of 5xx responses:                            0

========= Percentage of responses received within a certain time (ms)======

         3% : 3 ms
        36% : 5 ms
        80% : 7 ms
        95% : 9 ms
        98% : 11 ms
        99% : 13 ms
        99% : 15 ms
        99% : 17 ms
        99% : 19 ms
       100% : 23 ms

===========================================================================
````
##нагрузка на процессор во время нагрузочного тестирования
````
  1  [|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||| 92.0%]   Tasks: 202, 701 thr; 4 running
  2  [|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||  90.5%]   Load average: 1.63 1.09 0.63
  3  [|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||92.5%]   Uptime: 10:38:13
  4  [|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||    87.9%]
  Mem[|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||4.89G/7.66G]
  Swp[||||                                                                   80.0M/2.00G]
````
##запуск сервера nginx
````
- docker build -t nginx -f nginx.Dockerfile .
- docker run -p 8082:8082 --name nginx -t nginx
````
##Benchmark
````
Configuring to send GET requests to: http://localhost:8082/httptest/wikipedia_russia.html
Generating the requests...
Finished generating the requests
Sending the requests to the server...
Finished sending the requests
Processing the results...

=========================== Results ========================================

Total requests:                                 20000
Time taken to complete requests:        11.244538906s
Requests per second:                             1779
Max response time (ms):                            28
Min response time (ms):                             0
Avg response time (ms):                          5.11

========= Percentage of responses by status code ==========================

Number of connection errors:                        0
Number of 1xx responses:                            0
Number of 2xx responses:                        20000
Number of 3xx responses:                            0
Number of 4xx responses:                            0
Number of 5xx responses:                            0

========= Percentage of responses received within a certain time (ms)======

        14% : 2 ms
        46% : 4 ms
        75% : 6 ms
        89% : 8 ms
        95% : 10 ms
        98% : 12 ms
        99% : 14 ms
        99% : 16 ms
        99% : 18 ms
       100% : 28 ms

===========================================================================
````