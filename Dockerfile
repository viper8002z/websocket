FROM ubuntu:24.04

# Install dependencies
RUN apt update && apt install -y ttyd bash curl vim git && apt clean

# Expose the port Render uses
EXPOSE 10000

# Use Render's $PORT environment variable
CMD ["sh", "-c", "ttyd -p $PORT bash"]
