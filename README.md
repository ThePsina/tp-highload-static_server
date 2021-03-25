````
запуск сервера статики
````
- docker build -t server -f server.Dockerfile .
- docker run -p 8082:8082 --name server -t server

````
Benchmark: 4 core
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

```
нагрузка на процессор во время нагрузочного тестирования
```
  1  [|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||| 92.0%]   Tasks: 202, 701 thr; 4 running

  2  [|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||  90.5%]   Load average: 1.63 1.09 0.63

  3  [|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||92.5%]   Uptime: 10:38:13

  4  [|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||    87.9%]

  Mem[|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||4.89G/7.66G]

  Swp[||||                                                                   80.0M/2.00G]

````
запуск сервера nginx
````
- docker build -t nginx -f nginx.Dockerfile .
- docker run -p 8082:8082 --name nginx -t nginx

````
Benchmark
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
