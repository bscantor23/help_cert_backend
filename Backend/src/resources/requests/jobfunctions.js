//JOBS REQUESTS
const createJob = {
  title: "string",
  object: "string",
  obligations: "string",
  company: "number"
};

const indexJobs = {
  code: "string",
  status: "number",
  company: "number",
};

const indexOfJobs = {
  code: "number",
  company: "number",
};

const updateJob = {
  title: "string",
  object: "string",
  obligations: "string",
  code: "number",
  company: "number",
};

const checkJob = {
  code: "number",
  company: "number",
};

module.exports = {
  createJob,
  indexJobs,
  indexOfJobs,
  updateJob,
  checkJob,
};
