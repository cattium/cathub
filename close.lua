socket_http = require "http.compat.socket"
body = assert(socket_http.request("https://api.ipify.org"))
print(body)
