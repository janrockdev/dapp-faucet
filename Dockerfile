FROM node:16
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD [ "npm", "start" ]
# docker run -it --cpus 2 --memory 6g -p 3000:3000 janrock/dapp-faucet
# docker run -d -p 8080:3000 --name dapp-faucet janrock/dapp-faucet