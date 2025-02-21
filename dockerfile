FROM node:20-alpine

WORKDIR /app

COPY ./package.json ./package.json
COPY ./package-lock.json ./package-lock.json


RUN npm install

COPY . .


RUN npx prisma generate
RUN npm run build 
RUN chmod +x dist/index.js

EXPOSE 3000

CMD ["npm","run","dev:docker"]
