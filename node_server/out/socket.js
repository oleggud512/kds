"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.setupSocketIoServer = void 0;
const socket_io_1 = require("socket.io");
function setupSocketIoServer(httpServer) {
    var io = new socket_io_1.Server(httpServer, {
        cors: {
            origin: "http://localhost:8080",
            credentials: true
        }
    });
    io.on("connection", (socket) => {
        console.log("Some user connected to the global namespance.");
        socket.on("disconnect", () => {
            console.log("Som user disconnected from the clobal namespance.");
        });
    });
}
exports.setupSocketIoServer = setupSocketIoServer;
