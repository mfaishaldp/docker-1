# Dockerfile
FROM node:20

# Set working directory di container
WORKDIR /app

# Copy file dependency
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy seluruh project
COPY . .

# Expose port
EXPOSE 3000

# Default command
CMD ["node", "--watch", "bin/www"]