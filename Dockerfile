#This installs the operating system and nodejs
FROM node:14-alpine3.15 

#this is saying copy everything you see here (in this project) and move it to...our docker file (image)
COPY . .

#this will create node modules for us bc we have node_modules in .dockerignore so it will install whatever library you need for your current machine
RUN npm install

#set environmental variables
ENV PORT=3000

#open up port 3000
EXPOSE 3000

#run our app. will keep it running continuoulsy we want that bc it's our api
CMD ["node", "./index.js"]





