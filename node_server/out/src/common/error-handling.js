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
Object.defineProperty(exports, "__esModule", { value: true });
exports.sync = exports.promiseBuilder = exports.promise = void 0;
function promise(promise) {
    return __awaiter(this, void 0, void 0, function* () {
        try {
            return [yield promise, null];
        }
        catch (error) {
            return [null, error];
        }
    });
}
exports.promise = promise;
function promiseBuilder(builder) {
    return __awaiter(this, void 0, void 0, function* () {
        try {
            const result = yield builder();
            return [result, null];
        }
        catch (error) {
            return [null, error];
        }
    });
}
exports.promiseBuilder = promiseBuilder;
function sync(func, ...params) {
    try {
        return [func(...params), null];
    }
    catch (error) {
        return [null, error];
    }
}
exports.sync = sync;
