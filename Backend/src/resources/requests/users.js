//USERS REQUESTS
const createUser = {
  fk_role: "number",
  fk_company: "number",
  fk_identity_document: "number",
  fk_city: "number",
  fk_type_of_workday: "number",
  names: "string",
  lastnames: "string",
  document_number: "string",
  job_title: "string",
  email: "string",
  genre: "string",
  phone_number: "string",
  address: "string",
};

const indexUsers = {
  role: "number",
  document: "string",
  status: "number",
  company: "number",
};

const indexOfUsers = {
  id: "number",
  role: "number",
  company: "number",
};

const updateUsers = {
  role: "number",
  lastnames: "string",
  names: "string",
  identity_document: "number",
  document_number: "string",
  address: "string",
  phone_number: "string",
  workday: "number",
  job: "string",
  genre: "string",
  city: "number",
  id: "number",
  company: "number",
};

const checkUser = {
  role: "number",
  id: "number",
  company: "number",
};

const deleteUser = {
  id: "number",
  company: "number",
};

module.exports = {
  createUser,
  indexUsers,
  indexOfUsers,
  updateUsers,
  checkUser,
  deleteUser
};
