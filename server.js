const http = require("http");
const express = require("express");
const app = express();
app.get("/", (request, response) => {
  response.sendStatus(200);
});
app.listen(process.env.PORT);
setInterval(() => {
  http.get(`http://iplayfx.glitch.me/`);
}, 280000);
const client = new Discord.Client();
const Discord = require('discord.js');
client.login("NDk0OTA2NTMwNTQ2NzEyNTc2.XRyXVQ.8MoVJhpn8kIKKFh7baAOxDtWmYI");