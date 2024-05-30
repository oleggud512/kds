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
exports.handleErrorMiddleware = exports.guardianMiddleware = exports.handleError = exports.guard = void 0;
function guard(res, func) {
    return __awaiter(this, void 0, void 0, function* () {
        try {
            console.log('trying');
            yield func();
            console.log('trying - ok');
        }
        catch (err) {
            console.log('trying - fail');
            handleError(res, err);
        }
    });
}
exports.guard = guard;
function handleError(res, err) {
    console.log('handling error');
    const response = { error: true, message: `${err.code} - ${err.message}` };
    res.status(500).json(response);
    console.log(`error handled - response sent - ${JSON.stringify(response)}`);
    console.log(`print the error:`);
    console.log(err);
    // throw err
}
exports.handleError = handleError;
function guardianMiddleware(req, res, next) {
    return __awaiter(this, void 0, void 0, function* () {
        yield guard(res, next);
    });
}
exports.guardianMiddleware = guardianMiddleware;
function handleErrorMiddleware(error, req, res, next) {
    console.log(error);
    console.log('(console.log(error))');
    return res.status(500).json({ error: error });
}
exports.handleErrorMiddleware = handleErrorMiddleware;
