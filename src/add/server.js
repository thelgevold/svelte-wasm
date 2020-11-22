const express = require('express');

const app = express();

app.use("/assets", express.static("./src/add"));
app.use("/wasm", express.static("./src/add/add"));

app.get("/", (_req, res) => {
  res.sendFile("index.html", { root: "./src/add" });
});

const port = process.env.PORT || 7000;
app.listen(port, () => console.log(`App listening on port ${port}`));