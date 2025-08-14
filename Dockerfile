FROM node:18-alpine

# Install wstunnel globally
RUN npm install -g wstunnel

# Set working directory
WORKDIR /app

# Copy start script
COPY start.sh .

# Make script executable
RUN chmod +x start.sh

# Expose port (Render provides $PORT)
EXPOSE 8080

# Start server
CMD ["./start.sh"]
