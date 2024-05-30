"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.setupSocketIoServer = void 0;
const socket_io_1 = require("socket.io");
const socket_1 = require("./src/features/orders/socket");
function setupSocketIoServer(httpServer) {
    var io = new socket_io_1.Server(httpServer, {
        cors: {
            origin: "http://localhost:3009",
            credentials: true
        }
    });
    io.on("connection", (socket) => {
        console.log("Some user connected to the global namespance.");
        socket.on("disconnect", () => {
            console.log("Som user disconnected from the clobal namespance.");
        });
    });
    (0, socket_1.setupOrderSockets)(io);
}
exports.setupSocketIoServer = setupSocketIoServer;
