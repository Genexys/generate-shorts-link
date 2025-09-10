FROM node:18-alpine

RUN apk add --no-cache python3 py3-pip

RUN pip3 install yt-dlp

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

CMD ["node", "index.js"]