import cors from 'cors';
import express from 'express';
import rootRouter from './router';
import http from "http"
import { handleErrorMiddleware } from './src/common/handle-error';
import { initSequelize } from './sequelize';
import { setupSocketIoServer } from './socket';
import Db from './mysql';


(async () => {
  await Db.init()
  await initSequelize()

  const app = express()
  
  app.use(cors())
  app.use(express.json())
  app.use(express.urlencoded())
  
  app.use("/api/v1", rootRouter)
  app.use(handleErrorMiddleware)
  
  const server = http.createServer(app)
  
  const PORT = 3000

  setupSocketIoServer(server)
    
  server.listen(PORT, () => {
    console.log(`KDS server is running on port ${PORT}`)
  })
})()
