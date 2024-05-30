"use strict";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const cors_1 = __importDefault(require("cors"));
const express_1 = __importDefault(require("express"));
const router_1 = __importDefault(require("./router"));
const http_1 = __importDefault(require("http"));
const handle_error_1 = require("./src/common/handle-error");
const sequelize_1 = require("./sequelize");
(() => __awaiter(void 0, void 0, void 0, function* () {
    yield (0, sequelize_1.initSequelize)();
    const app = (0, express_1.default)();
    app.use((0, cors_1.default)());
    app.use(express_1.default.json());
    app.use(express_1.default.urlencoded());
    app.use("api/v1", router_1.default);
    app.use(handle_error_1.handleErrorMiddleware);
    const server = http_1.default.createServer(app);
    const PORT = 3000;
    server.listen(PORT, () => {
        console.log(`KDS server is running on port ${PORT}`);
    });
}))();
