const GET_CREDENTIALS = (id) => {
	return `SELECT password FROM users WHERE id=${id} limit 1;`;
};

const PUT_CREDENTIALS = (info) => {
	return `UPDATE users SET password='${info.newPassword}',updated_at='${info.dateTime}' WHERE id=${info.id} limit 1;`;
};

const GET_PROFILE = (id) => {
	return `SELECT users.id, users.fk_role, users.lastnames, users.names, identity_documents.abbreviation AS identity_document,
  users.fk_identity_document AS id_identity_document, users.document_number, types_of_workday.name AS workday, users.fk_type_of_workday AS id_workday,
  users.job_title, users.email, users.genre, cities.name AS city, users.fk_city AS id_city, users.address, users.phone_number, 
  users.created_at, users.updated_at
  FROM users
  INNER JOIN identity_documents ON identity_documents.id = users.fk_identity_document
  INNER JOIN types_of_workday ON types_of_workday.id = users.fk_type_of_workday
  INNER JOIN cities ON cities.id = users.fk_city
  WHERE users.id=${id};`;
};

const UPDATE_PROFILE = (info) => {

	const sensibleInfo =
		info.role != 38
			? `${info.lastnames ? `lastnames='${info.lastnames}',` : ''} 
      ${info.names ? `names='${info.names}',` : ''} 
      ${info.identity_document != 0 ? `fk_identity_document=${info.identity_document},` : ''} 
      ${info.document_number ? `document_number='${info.document_number}',` : ''}`
			: '';

	return `UPDATE users SET ${sensibleInfo} 
      ${info.address ? `address='${info.address}',` : ''} 
      ${info.phone_number ? `phone_number='${info.phone_number}',` : ''} 
      ${info.workday != 0 ? `fk_type_of_workday=${info.workday},` : ''} 
      ${info.email ? `email='${info.email}',` : ''} 
      ${info.job ? `job_title='${info.job}',` : ''} 
      ${info.genre ? `genre='${info.genre}',` : ''} 
      ${info.city != 0 ? `fk_city=${info.city},` : ''} 
      updated_at='${info.dateTime}'
  WHERE users.id=${info.id};`;
};

module.exports = {
	GET_CREDENTIALS,
	PUT_CREDENTIALS,
	GET_PROFILE,
	UPDATE_PROFILE,
};
