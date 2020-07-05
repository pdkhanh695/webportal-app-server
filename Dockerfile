# Where specify base image 
FROM node:10-alpine  

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

# Instruction establishes the subdirectory we created as the working directory for any RUN, CMD, ENTRYPOINT, COPY and ADD
WORKDIR /home/node/app

# Adds files from your Docker client’s current directory.
COPY package*.json ./

USER node

RUN npm install

# Change owner and group chown [options] :new_group object(s)
COPY --chown=node:node . .

# Informs Docker that the container listens on the specified network ports at runtime
EXPOSE 8080

# CMD ["executable", "param1", "param2"…]
# Specifies what command to run within the container.
CMD [ "node", "server.js" ]
