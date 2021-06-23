FROM node:10.16.0-alpine

# Add package*.json files and install dependencies
COPY package*.json ./
RUN npm install

# Copy all application files
COPY *.js ./

EXPOSE 3000
CMD [ "npm", "run", "start" ]