#!/bin/sh

# Default port for Render
PORT=${PORT:-8080}

# Start wstunnel server on all interfaces
wstunnel -s 0.0.0.0:$PORT
