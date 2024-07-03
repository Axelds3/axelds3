const express = require('express')
const db = require('./repository/repoFile')
const app = express()
const port = 3000


app.get('/', (req, res) => {
  res.send('Hello World!')
})

app.get('/cars', async(req, res) => {
  let carsList = await db.findAll()
  res.status(200).json(carsList)
})

app.get('/cars/:carId', async (req, res) => {
  let car = await db.findById(req.params.carId)
  if (car) {
    res.status(200).json(car)
  } else {
    res.status(404).json({message: "Car Not Found"})
  }
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})
