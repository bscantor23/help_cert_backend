
const CREATE_METH = (info) => {
	return `INSERT INTO users SELECT (SELECT IFNULL(MAX(id)+1,1) FROM users),${info.fk_role},${info.fk_company}, ${info.fk_identity_document}, ${info.fk_city},${info.fk_type_of_workday},'${info.names}',
    '${info.lastnames}','${info.document_number}','${info.job_title}','${info.email}','${info.password}',
    '${info.genre}','${info.phone_number}','${info.address}',${info.status},'${info.dateTime}','${info.dateTime}';`;
};

const INDEX_METH = (info) => {
	return `SELECT users.id,identity_documents.abbreviation AS identity_document,users.document_number, users.lastnames,
  users.names,types_of_workday.name AS wokday, users.status FROM users 
  INNER JOIN identity_documents ON identity_documents.id=users.fk_identity_document 
  INNER JOIN types_of_workday ON types_of_workday.id=users.fk_type_of_workday 
  WHERE document_number LIKE '%${info.document}%'
  AND users.status=${info.status}
  AND fk_company=${info.company} AND users.fk_role=${info.role};`;
};

const INDEX_OF_METH = (info) => {
	return `SELECT users.id, (SELECT COUNT(*) FROM contracts WHERE fk_user=${info.id}) AS num_contracts, 
  users.fk_role, users.lastnames, users.names, identity_documents.abbreviation AS identity_document,
  users.fk_identity_document AS id_identity_document, users.document_number, types_of_workday.name AS workday, users.fk_type_of_workday AS id_workday,
  users.job_title, users.genre, cities.name AS city, users.fk_city AS id_city, users.address, users.phone_number, 
  users.status, users.created_at, users.updated_at
  FROM users
  INNER JOIN identity_documents ON identity_documents.id = users.fk_identity_document
  INNER JOIN types_of_workday ON types_of_workday.id = users.fk_type_of_workday
  INNER JOIN cities ON cities.id = users.fk_city
  WHERE users.id=${info.id} AND users.fk_role=${info.role} AND users.fk_company=${info.company};`;
};

const CHECK_CONTRACTS = (code) => {
	return `SELECT COUNT(*) AS num FROM contracts WHERE fk_user=${code};`;
};

const UPDATE_METH = (info, custom) => {
	const sensibleInfo =
		custom == 0
			? `${info.lastnames ? `lastnames='${info.lastnames}',` : ''} 
      ${info.names ? `names='${info.names}',` : ''} 
      ${info.identity_document != 0 ? `fk_identity_document=${info.identity_document},` : ''} 
      ${info.document_number ? `document_number='${info.document_number}',` : ''}`
			: '';

	return `UPDATE users SET ${sensibleInfo} 
      ${info.address ? `address='${info.address}',` : ''} 
      ${info.phone_number ? `phone_number='${info.phone_number}',` : ''} 
      ${info.workday != 0 ? `fk_type_of_workday=${info.workday},` : ''} 
      ${info.job ? `job_title='${info.job}',` : ''} 
      ${info.genre ? `genre='${info.genre}',` : ''} 
      ${info.city != 0 ? `fk_city=${info.city},` : ''} 
      updated_at='${info.dateTime}'
  WHERE users.id=${info.id} AND users.fk_role=${info.role} AND users.fk_company=${info.company};`;
};

const UPDATE_STATUS = (info) => {
	return `UPDATE users SET status = CASE status WHEN 1 THEN 0 WHEN 0 THEN 1 END, updated_at='${info.dateTime}' 
  WHERE users.id=${info.id} AND users.fk_role=${info.role} AND users.fk_company=${info.company};`;
};

const DELETE_METH = (info) => {
	return `DELETE FROM users WHERE users.id=${info.id} AND users.fk_role=${info.role} AND users.fk_company=${info.company};`;
};

module.exports = {
	CREATE_METH,
	INDEX_METH,
	INDEX_OF_METH,
	CHECK_CONTRACTS,
	UPDATE_METH,
	UPDATE_STATUS,
	DELETE_METH,
};
