#!/usr/bin/env python

import http.server
import socketserver

PORT = 8081

handler = http.server.SimpleHTTPRequestHandler
httpd = socketserver.TCPServer(("", PORT), handler)

print("Serving at port", PORT)
httpd.serve_forever()