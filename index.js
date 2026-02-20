
import express from 'express';

const app = express();

app.get('/', (req, res) =>{
    res.send("Hello World")


})

app.get("/greet/:name", (req, res) => {
    const name = req.params.name;
    res.send(`Hello, ${name}!`);
});

app.listen(3000, () => {
    console.log("Server is running on port 3000")
})

export default app;
