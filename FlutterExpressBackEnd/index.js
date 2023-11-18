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
    password:'password@123',
    database:'mec'
})

base.connect(()=>{
    console.log("database connected")
})

app.listen(2000,()=>{
    console.log("server is running!!!!!!!!!!!!!!")
})

// routings

app.delete("/:num",async(req,res)=>{
    const accNum=req.params.num
    const sql="delete from customers where acc_number=?"
    base.query(sql,[accNum],(err,ack)=>{
        if(err){
            res.status(500).json({error:err.message})
            return
        }
        if(ack.affectedRows==0){
            res.status(404).json({error:"No records are deleted"})
            return
        }
        res.status(200).json({message:"Record has deleted"})
    })
})

app.put("/",async(req,res)=>{
    const{accNumber,accHolder,accBal}=req.body
    const sql="update customers set acc_holder=?,acc_bal=? where acc_number=?"
    base.query(sql,[accHolder,accBal,accNumber],(err,results)=>{
        if(err){
            res.status(500).json({error:err.message})
            return
        }
        if(results.affectedRows==0){
            res.status(404).json({error:"No matched record to be updated"})
            return
        }
        res.status(200).json({"message":"Records are updated"})
    })
})

app.get("/:num",async(req,res)=>{
    const sql="select * from customers where acc_number=?"
    base.query(sql,[req.params.num],(err,records)=>{
        if(err){
            res.status(500).json({error:err.message})
            return
        }
        if(records.length==0){
            res.status(404).json({error:"No records ae matched"})
            return
        }
        res.status(200).json({message:records[0]})
    })
})

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