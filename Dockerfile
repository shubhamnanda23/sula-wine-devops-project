# Step 1: Light-weight server image
FROM nginx:alpine

# Step 2: Copy our frontend code to Nginx server path
COPY ./frontend /usr/share/nginx/html

# Step 3: Expose Port 80
EXPOSE 80