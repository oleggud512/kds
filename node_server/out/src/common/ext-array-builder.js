"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
// Array.prototype.add = function<T>(item: T): Array<T> {
//   this.push(item)
//   return this
// };
Array.prototype.add = function (...items) {
    for (const item of items) {
        this.push(item);
    }
    return this;
};
Array.prototype.addIf = function (cond, ...items) {
    if (cond)
        return this.add(items);
    return this;
};
