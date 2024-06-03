"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
Date.prototype.add = function (milliseconds) {
    const newDate = new Date(this.getTime() + milliseconds);
    this.setTime(newDate.getTime());
    return this;
};
Date.prototype.subtract = function (milliseconds) {
    const newDate = new Date(this.getTime() - milliseconds);
    this.setTime(newDate.getTime());
    return this;
};
Date.prototype.addYears = function (years) {
    const newYear = this.getFullYear() + years;
    this.setFullYear(newYear);
    return this;
};
Date.prototype.subtractYears = function (years) {
    return this.addYears(-years);
};
Date.prototype.addMonths = function (months) {
    const newMonth = this.getMonth() + months;
    const yearsToAdd = Math.floor(newMonth / 12);
    const newYear = this.getFullYear() + yearsToAdd;
    const newMonthInYear = newMonth % 12;
    this.setFullYear(newYear);
    this.setMonth(newMonthInYear);
    return this;
};
Date.prototype.subtractMonths = function (months) {
    return this.addMonths(-months);
};
Date.prototype.addDays = function (days) {
    const newDate = new Date(this.getTime() + days * 24 * 60 * 60 * 1000);
    this.setTime(newDate.getTime());
    return this;
};
Date.prototype.subtractDays = function (days) {
    return this.addDays(-days);
};
Date.prototype.addHours = function (hours) {
    const newDate = new Date(this.getTime() + hours * 60 * 60 * 1000);
    this.setTime(newDate.getTime());
    return this;
};
Date.prototype.subtractHours = function (hours) {
    return this.addHours(-hours);
};
Date.prototype.addMinutes = function (minutes) {
    const newDate = new Date(this.getTime() + minutes * 60 * 1000);
    this.setTime(newDate.getTime());
    return this;
};
Date.prototype.subtractMinutes = function (minutes) {
    return this.addMinutes(-minutes);
};
Date.prototype.addSeconds = function (seconds) {
    const newDate = new Date(this.getTime() + seconds * 1000);
    this.setTime(newDate.getTime());
    return this;
};
Date.prototype.subtractSeconds = function (seconds) {
    return this.addSeconds(-seconds);
};
Date.prototype.toISODateString = function () {
    return this.toISOString().substring(0, 10);
};
