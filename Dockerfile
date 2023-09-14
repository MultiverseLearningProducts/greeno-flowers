# pull rebuilt image step
FROM node:18
# copy our current dir diles into directory in the container
COPY . /app
# navigate to that new directory in the container
WORKDIR /app
# run a command to install dependencies in the container
RUN npm install
# expose the port
EXPOSE 8080
# define a command that will be used to run when we boot up the container
CMD [ "npm", "start" ]