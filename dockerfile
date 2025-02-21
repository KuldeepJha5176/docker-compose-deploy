FROM node:20-alpine

WORKDIR /app

COPY package* .

RUN npm install

COPY . .

ENV DATABASE_URL="postgresql://postgres:mysecretpassword@localhost:5432/postgres"

RUN npx prisma migrate dev
RUN npx prisma generate
RUN npm run build

EXPOSE 3000

CMD ["npm", "start"]
