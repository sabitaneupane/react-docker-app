# React-docker-app

> Step 1: Create react app

cmd
```
create-react-app react-docker-app
```

> Step 2: Run react app 

cmd
```
cd react-docker-app
yarn run start
```

> Step 3: Add Dockerfile file

file
```
# Use a lighter version of Node as a parent image 
FROM node:10.15.0
# Set the working directory to /app 
WORKDIR /app
# copy package.json into the container at / 
COPY package.json ./
# copy yarn.lock into the container at / 
COPY yarn.lock ./
# install dependencies 
RUN yarn install
# Copy the current directory contents into the container at / 
COPY . ./
# Make port 3000 available to the world outside this container 
EXPOSE 3000
# Run the app when the container launches 
CMD ["yarn", "start"]
```

Build the image

cmd
```
docker build -t reactdockerapp .
```

Run the container

cmd
```	
docker run -it -p 3000:3000 reactdockerapp  
```