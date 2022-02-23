# Build stage 1.
#to build and compile the frontend
FROM node as builder

# define working directory
WORKDIR /app

# copy configuration files
COPY package.json ./

# install npm
RUN npm install

# copy all code file from local to container
COPY . ./

# Bundles the app into static files for production.
RUN npm run build

# Build stage 2.
#ready for production with Nginx
FROM nginx

# define working directory
WORKDIR /usr/share/nginx/html

# remove all files from html inside container
RUN rm -rf ./*

# we can copy files from a previous stage , we'll copy it to the nginx directory, just as static files
COPY --from=builder /app/build .

# Run nginx in the foreground.
ENTRYPOINT ["nginx", "-g", "daemon off;" ]