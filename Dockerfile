FROM php:8.2

# Install Node.js and npm
RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && \
    apt-get install -y nodejs

# Set the working directory
WORKDIR /var/www

# Copy your application files
COPY . .

# Install PHP dependencies
RUN composer install

# Install Node.js dependencies
RUN npm install

# Build assets
RUN npm run build