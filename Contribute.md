## Manual Installation
- Install Node.js
- Clone the repository
- Install dependencies (npm install)
- start the Db locally
    - docker run --name some-postgres -e POSTGRES_PASSWORD=mysecretpassword -d postgres
    - Go to Neon and get the connection string
- Change the .env and update the db credentials
- npx prisma migrate dev
- npx prisma generate
- npm run build
- npm run start


## Docker Installation
- Install Docker
- Start the Db
    - docker run --name some-postgres -e POSTGRES_PASSWORD=mysecretpassword -d postgres
- Build the image
    - `docker build -t users-project .`
- Run the container/ start the Image
    - `docker run -p 3000:3000 users-project`

## Docker Compose Installation
- Install Docker Compose
- Run the docker compose file
    - `docker compose up`

