#Base image as alpine 
FROM alpine:latest

#Install nodejs and npm 
RUN apk add --no-cache nodejs npm

#Working directory is /app
WORKDIR /app

#Copy packge file to app folder 
COPY ./package*.json /app/

#Install dependency 
RUN npm install

#Copy all code to /app folder
COPY . /app

# #Expose port 
# EXPOSE 3000

#env variable
ENV ENV_NODE=production

ENTRYPOINT ["node"]
CMD ["server.js"]

