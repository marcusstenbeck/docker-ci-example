var koa = require('koa');
var app = koa();

app.use(function*() {
	this.body = 'https://github.com/marcusstenbeck/docker-ci-example';
});

app.listen(3000);
