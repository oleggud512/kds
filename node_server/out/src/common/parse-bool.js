"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.tryParseBool = exports.parseBool = void 0;
function parseBool(b) {
    switch (b) {
        case 'true': return true;
        case 'false': return false;
    }
    throw `${b} is incorrect`;
}
exports.parseBool = parseBool;
function tryParseBool(b) {
    try {
        return parseBool(b);
    }
    catch (e) {
        return undefined;
    }
}
exports.tryParseBool = tryParseBool;
