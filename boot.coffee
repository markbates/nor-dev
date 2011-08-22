app = require('./node_modules/nor/lib/nor').app
app.root = __dirname
app.boot()
app.mount()