## Manual Installation
- Install Node.js
- Clone the repository
- Install dependencies (npm install)
- start the Db locally
    - docker run -e POSTGRES_PASSWORD=mysecretpassword -d -p 5432:5432 postgres
    - Go to Neon and get the connection string
- Change the .env and update the db credentials
- npx prisma migrate dev
- npx prisma generate
- npm run build
- npm run start


## Docker Installation
- Install Docker
- Create a network - docker network create user_project
- Start the Db
    - `docker run --network user_project --name postgres -e POSTGRES_PASSWORD=mysecretpassword -d -p 5432:5432 postgres`
- Build the image
    - `docker build --network=host -t user-project .`
- Run the container/ start the Image
    - `docker run -e  DATABASE_URL=postgresql://postgres:mysecretpassword@postgres:5432/postgres --network user_project -p 3000:3000 user-project `

## Docker Compose Installation
- Install Docker Compose
- Run the docker compose file
    - `docker compose up`

