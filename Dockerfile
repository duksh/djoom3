# Use the official Joomla image as a base
FROM joomla:latest

# Set the working directory
WORKDIR /var/www/html

# Copy local Joomla files to the container
COPY src/ /var/www/html

# Ensure the correct permissions
RUN chown -R www-data:www-data /var/www/html

# Expose port 80 for the web server
EXPOSE 80

# Start Apache in the foreground
CMD ["apache2-foreground"]
