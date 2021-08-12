const GET_CARDS = (company) => {
	return `SELECT (SELECT COUNT(*) FROM users WHERE fk_role=38 AND fk_company=${company}) AS users,
  (SELECT COUNT(*) FROM contracts INNER JOIN users ON users.id=contracts.fk_user
  WHERE users.fk_company=${company}) AS contracts, (SELECT COUNT(*) FROM certifications
  INNER JOIN contracts ON contracts.id=certifications.fk_contract
  INNER JOIN users ON users.id=contracts.fk_user
  WHERE users.fk_company=${company})AS certifications FROM DUAL;`;
};

const GET_NUM_CERT = (user) => {
	return `SELECT SUM(num_exp) AS certifications FROM certifications
  INNER JOIN contracts ON contracts.id=certifications.fk_contract
  WHERE contracts.fk_user=${user};`;
};

const GET_FORMS = (type) => {
	if (type == "users") {
		return `SELECT *,'documents' AS 'form' FROM identity_documents 
    UNION ALL SELECT *,'workdays' AS 'form' FROM types_of_workday 
    UNION ALL SELECT *,NULL AS 'abbreviation','cities' AS 'form' FROM cities;`;
	}
	if (type == "certifications") {
		return `SELECT * FROM types_certification;`;
	}
	if (type == "labors") {
		return `SELECT * FROM labor_contracts;`;
	}
	return null;
};

module.exports = {
	GET_CARDS,
	GET_NUM_CERT,
	GET_FORMS,
};
