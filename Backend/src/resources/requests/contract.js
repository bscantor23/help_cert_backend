//CONTRACTS REQUESTS 
const createContract = {
  user: "number",
  job: "number",
  labor: "number",
  start_date: "string",
  end_date: "string",
  salary: "number",
  specific: "string",
};

const saveFile = {
  code: "number",
  company: "number",
};

const createAmendment = {
  functions: "string",
  end_date: "string",
  remarks: "string",
  path: "number",
  code: "number",
  company: "number"
}

const indexContracts = {
  code: "string",
  status: "number",
  company: "number",
};

const indexOfContract = {
  code: "number",
  company: "number",
};

const statusContract = {
  reason_status: "string",
  code: "number",
};

module.exports = {
  createContract,
  saveFile,
  createAmendment,
  indexContracts,
  indexOfContract,
  statusContract
};
