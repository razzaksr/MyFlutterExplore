const express = require('express')
const cors = require('cors')
const mysql = require('mysql2')
const bodyParser=require('body-parser')

const app = express()
app.use(cors())
app.use(bodyParser.urlencoded({extended:true}))
app.use(bodyParser.json())

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

app.post("/",async(req,res)=>{
    const{accNumber,accHolder,accBal}=req.body
    const sql="insert into customers values(?,?,?)"
    base.query(sql,[accNumber,accHolder,accBal],(err,result)=>{
        if(err){
            res.status(500).json({error:err.message})
            return
        }
        if(result.affectedRows==0){
            res.status(404).json({error:"unable to insert"})
            return
        }
        res.status(200).json({message:"Record inserted"})
    })
})

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