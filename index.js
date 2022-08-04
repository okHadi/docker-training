const express = require('express')
const app = express()

app.get('/', (req, res)=>{
    res.send("Hello world")
})

app.listen(8081,()=>{
    console.log("App is running on the port 8081")
})