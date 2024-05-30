import { Namespace, Server, Socket } from "socket.io"
import http from "http"
import { setupOrderSockets } from "./src/features/orders/socket"

export function setupSocketIoServer(httpServer: http.Server) {
  var io = new Server(httpServer, {
    cors: {
      origin: "http://localhost:3009",
      credentials: true
    }
  })
  
  io.on("connection", (socket) => {
    console.log("Some user connected to the global namespance.")
    socket.on("disconnect", () => {
      console.log("Som user disconnected from the clobal namespance.")
    })
  })
  
  setupOrderSockets(io)
}