const express = require ("express");

const app = express ();

app.use(express.json());

app.use(express.urlencoded(
    {
        extended:true
    }
))

const personData=[];

port=3000;

app.listen(port,()=>
{
    console.log(`Successfully connected to ${port}`)
})


//Post
app.post("/api/add_person",(req,res)=>{

    console.log("Result",req.body);
    const pdata ={
        "id": personData.length+1,
        "pname": req.body.pname,
        "page": req.body.page,
        "prollno": req.body.prollno,
    }

    personData.push(pdata);
    
    console.log("Final result",pdata);

    res.statusCode(200).send({
        "Status_code": 200,
        "Message": "person is added successfully",
        "person": pdata
    
    }
    )
//get 
app.get("api/get_person",(req,res)=>{
    if(personData.length >0){
        res.status(200).send({
            'statuscode':200,        
            'person':personData
        })
    }
    else{
        res.status(200).send({
            'statuscode':200,        
            'person':[]
        })
    }
})

})