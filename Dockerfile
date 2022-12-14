# ==== CONFIGURE =====
# Use a Node 16 base image
FROM node:16-alpine 

# Set the working directory to /app inside the container

WORKDIR /app

# Copy app files

COPY . .


# Install dependencies

RUN npm install 


# ==== BUILD =====


RUN npm run build

# ==== RUN =======
# Set the env to "development"

ENV NODE_ENV development

# Expose the port on which the app will be running (3000 is the default that `serve` uses)

EXPOSE 3000

# Start the app
CMD [ "npm", "start", "build" ]
