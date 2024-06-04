# Use the official PHP image with Apache
FROM php:apache

# Install mysqli extension
RUN docker-php-ext-install mysqli

# Copy the contents of the current directory to the web root
COPY . /var/www/html/

# Ensure the web root has the correct permissions
RUN chown -R www-data:www-data /var/www/html
