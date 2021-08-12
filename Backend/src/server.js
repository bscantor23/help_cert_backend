//Libraries
const express = require("express");
const path = require("path");
require("dotenv").config();

//Responses Management
const responseHandling = require("./utils/responseHandling");

//Express Backend
const app = express();

//List Routes
const routes = require("./routes/server.routes");

//Settings -> Configuraciones
app.set("port", process.env.PORT || 3000);

//Public Dirs
app.use("/public", express.static(path.join(__dirname, "/public")));

//Bodyparser
app.use(express.urlencoded({ extended: true }));
app.use(express.json());

//Route info
app.use((req, res, next) => {
	try {
		console.log(`\n${req.url} - ${req.method}`);
		next();
	} catch (error) {
		console.log("\n" + error);
		return responseHandling(res, 500, "ERR_SERVER", error);
	}
});

//Routes
routes(app);

//Start the Server
app.listen(app.get("port"), () => {
	console.log("Server on port", app.get("port"));
});
