import { PrismaClient } from "@prisma/client";
import express from "express";
 
const app = express();
const prismaClient = new PrismaClient

app.get( "/", async (req,res) => {
    const data  = await prismaClient.user.findMany()
    res.json({message: "get endpoint",data});
})
app.post ( "/", async  (req,res) => {
    const users = await prismaClient.user.create({
        data: { 
            username: Math.random().toString(),
            password: Math.random().toString(),
        }
    })
    res.json({message: "post endpoint "});
})

app.listen(3000, () => {
  console.log("Server is running on port 3000");
});
