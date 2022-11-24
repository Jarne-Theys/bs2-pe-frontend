FROM node:alpine
WORKDIR /frontend
COPY package.json /frontend/package.json
COPY package-lock.json /frontend/package-lock.json
COPY . /frontend
RUN npm i
EXPOSE 8080
CMD ["npm", "run", "start"]
