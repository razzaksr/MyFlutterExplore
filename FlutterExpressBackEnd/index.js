const express = require('express')
const cors = require('cors')
const mysql = require('mysql2')

const app = express()
app.use(cors())

const base = mysql.createConnection({
    host:'localhost',
    user:'root',
    password:'Razak@123',
    database:'muthayammal'
})

base.connect(()=>{
    console.log("database connected")
})

app.listen(2000,()=>{
    console.log("server is running!!!!!!!!!!!!!!")
})

// routings

app.get("/",async(req,res)=>{
    const sql="select * from customers"
    base.query(sql,(err,results)=>{
        if(err){
            res.status(500).json({error:err.message})
        }
        if(results.length==0){
            res.status(404).json({error:"no customers available"})
        }
        res.status(200).json({message:results})
    })
})