const express = require('express');
const app = express();
const morgan = require('morgan');
const { PORT = 3000 } = process.env;

app.use(morgan('dev'));

app.use(express.static('public'));

app.listen(PORT, () => {
  console.log(`Server is listening at http://localhost:${PORT}`);
});