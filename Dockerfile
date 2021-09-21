FROM node:14

# Create app directory
WORKDIR /usr/src/app

COPY . /usr/src/app

WORKDIR /usr/src/app/example
RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# start will run ts build
RUN npm start

# Port to expose
EXPOSE 443

