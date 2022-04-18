require('dotenv').config()
const express = require('express')
const app = express();

app.get('/healthcheck', (req, res)=>{

    if(process.env.ENV_NODE === "production"){
        res.status(200).send({"code": 2000, "msg": "Production Mode: Healthcheck is success!"})
        }
    else
        res.status(200).send({"code": 2000, "msg": "Local Mode: Healthcheck is success!"})
})
app.get('/',(req,res)=>{
    res.end("hello node");
})


app.listen(3000, () =>{
    console.log("Server is running...");
})
                                                                                                                    