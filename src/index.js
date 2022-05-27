
const express = require('express')
const app = express()
const port = process.env.PORT_SERVER
const { record } = require('./route/record')
app.use('/', record)

app.listen(port, () => {
  console.log(`Example app listening on p ${port}`)
})

