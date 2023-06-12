# We are starting with the base image of Nginx. Since we have not specified tag here, this will use whatever
# Nginx image has been tagged as latest.
FROM nginx

# Below command is to copy a file. We are copying nginx.local.conf (which is available inside nginx solution folder)
# to the /etc/nginx/nginx.conf location on the container that will be created. When Nginx starts, it looks at this file
# to control how it behaves. All the configuration settings defined in the nginx/nginx.local.conf gets copied into the
# Nginx container when it gets built by the copy command.
# nginx.local.conf file should contain information that tells Nginx how to get traffic to our IdentityServer application.
COPY nginx/nginx.local.conf /etc/nginx/nginx.conf

COPY nginx/id-local.crt /etc/ssl/certs/id-local.globomantics.com.crt
COPY nginx/id-local.key /etc/ssl/private/id-local.globomantics.com.key