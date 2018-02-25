var express = require('express');
var app = express();
var port = 8080;

app.get('/', function (req, res) {
    res.send('Hello World!');
});

app.listen(port, function () {
    console.log(`Server started at ${port}`);
});