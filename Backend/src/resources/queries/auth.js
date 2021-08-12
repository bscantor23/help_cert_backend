
const SIGN_IN = (info) => {
	return `SELECT users.id, users.email, users.password, users.fk_company, companies.name AS company, 
  users.fk_role, roles.name AS role, users.lastnames, users.names, users.status
  FROM users 
  INNER JOIN roles ON roles.id=users.fk_role
  INNER JOIN companies ON companies.id=fk_company 
  WHERE email='${info.email}' limit 1;`;
};

const CHECK_STATUS = (id) => {
	return `SELECT status FROM users WHERE id=${id} limit 1;`;
};

module.exports = {
	SIGN_IN,
	CHECK_STATUS,
};
