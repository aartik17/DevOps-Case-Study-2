// src/index.js

const express = require('express');
const app = express();
const PORT = 3000;

app.get('/', (req, res) => {
    res.send('Server is up and running developed by Aarti Kamble');
});

app.listen(PORT, () => {
    console.log(`Server is running on http://localhost:${PORT}`);
});
