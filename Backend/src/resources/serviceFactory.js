//Libraries
const redis = require("redis");

const path = require("path");

const redis_endpoint = process.env.REDIS_ENDPOINT;
const redis_password = process.env.REDIS_PASSWORD;

const client = redis.createClient({
	url: `redis://${redis_endpoint}`,
	no_ready_check: true,
	auth_pass: redis_password,
	retry_strategy: (options) => {
		return 5000;
	},
});

const ServiceFactory = {
	currentApi: "/api/v2",
	routes: {
		auth: "/auth",
		users: "/users",
		profile: "/profile",
		jobfunctions: "/jobs",
		certifications: "/certifications",
		contracts: "/contracts",
		info: "/info",
	},
};

function customeService(route) {
	return ServiceFactory.currentApi + ServiceFactory.routes[route];
}

module.exports = {
	clientRedis: client,
	roles: [
		{ name: "admin", id: "16" },
		{ name: "team", id: "24" },
		{ name: "funct", id: "38" },
	],
	customeService,
};
