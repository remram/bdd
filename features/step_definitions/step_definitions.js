module.exports = function () {
    this.Before(function (scenario) {
        this.actionwords = Object.create(require('./actionwords.js').Actionwords);
    });

    this.After(function (scenario) {
        this.actionwords = null;
    });


    this.Given(/^Select book "(.*)"$/, function (title, callback) {
        this.actionwords.selectBook(title);
        callback();
    });

    this.Given(/^Check book count "(.*)"$/, function (count, callback) {
        this.actionwords.checkBookCount(count);
        callback();
    });
}
