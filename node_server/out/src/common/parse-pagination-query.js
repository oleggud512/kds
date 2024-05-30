"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.parsePaginationQuery = void 0;
const tryParseInt_1 = require("./tryParseInt");
function parsePaginationQuery(obj) {
    var _a, _b;
    console.log(`parsePaginationQuery from=${obj.from} pageSize=${obj.pageSize}`);
    const from = (_a = (0, tryParseInt_1.tryParseInt)(obj.from)) !== null && _a !== void 0 ? _a : 0;
    const pageSize = (_b = (0, tryParseInt_1.tryParseInt)(obj.pageSize)) !== null && _b !== void 0 ? _b : 20;
    console.log({ from, pageSize });
    return { from, pageSize };
}
exports.parsePaginationQuery = parsePaginationQuery;
