const CREATE_METH = (info) => {
	return `INSERT INTO job_functions SELECT '${info.generatedCode}'+(SELECT IFNULL(COUNT(id)+1,1) FROM job_functions),
  ${info.company},'${info.title}', '${info.object}', '${info.obligations}',1,'${info.dateTime}','${info.dateTime}';`;
};

const INDEX_METH = (info) => {
	return `SELECT id as id_job, title_job_functions, status, 
  (SELECT COUNT(*) FROM contracts WHERE fk_job_functions=id_job) AS num_contracts
  FROM job_functions
  WHERE id LIKE '%${info.code}%' AND status=${info.status} AND fk_company=${info.company};`;
};

const INDEX_OF_METH = (info) => {
	return `SELECT *, (SELECT COUNT(*) FROM contracts WHERE fk_job_functions=${info.code}) AS num_contracts
  FROM job_functions
  WHERE id = ${info.code} AND fk_company=${info.company};`;
};

const CHECK_CONTRACTS = (code) => {
	return `SELECT COUNT(*) AS num FROM contracts WHERE fk_job_functions=${code};`;
};

const UPDATE_METH = (info) => {
	return `UPDATE job_functions SET
  ${info.title ? `title_job_functions='${info.title}',` : ""} 
  ${info.object ? `contract_object='${info.object}',` : ""} 
  ${info.obligations ? `specific_obligations='${info.obligations}',` : ""} 
  updated_at='${info.dateTime}'
  WHERE id = ${info.code} AND fk_company=${info.company};`;
};

const UPDATE_STATUS = (info) => {
	return `UPDATE job_functions SET status = CASE status WHEN 1 THEN 0 WHEN 0 THEN 1 END, updated_at='${info.dateTime}' 
  WHERE id = ${info.code} AND fk_company=${info.company};`;
};

const DELETE_METH = (info) => {
	return `DELETE FROM job_functions WHERE id = ${info.code} AND fk_company=${info.company};`;
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
