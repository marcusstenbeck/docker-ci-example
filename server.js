var koa = require('koa');
var app = koa();

app.use(function*() {
	this.body = 'Marcus Stenbeck';
});

app.listen(3000);
