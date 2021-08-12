const CREATE_METH = (info) => {
  return `INSERT INTO contracts SELECT '${info.generatedCode}'+(SELECT IFNULL(COUNT(id)+1,1) FROM contracts),
  ${info.user},${info.job},${info.labor},'${info.term}','${info.start_date}','${info.end_date}',${info.salary},
  '${info.path}',${info.specific ? `'${info.specific}'` : `NULL`},1,NULL,'${info.dateTime}','${info.dateTime}';`;
};

const GET_PATH = (info, original) => {
  return original == 0 ?
    `SELECT contracts.file_path,contracts.updated_at FROM contracts 
  INNER JOIN users ON users.id = contracts.fk_user
  WHERE contracts.id=${info.code} AND users.fk_company=${info.company};`
    :
    `SELECT contract_amendments.file_path,contracts.updated_at 
    FROM contracts  
    INNER JOIN contract_amendments ON contracts.id = contract_amendments.fk_contract 
    WHERE contract_amendments.created_at='${info.updated_at}';`
    ;
};

const INDEX_METH = (info) => {
  return `SELECT contracts.id,identity_documents.abbreviation,users.document_number,contracts.start_date,contracts.end_date
  FROM contracts
  INNER JOIN users ON users.id = contracts.fk_user
  INNER JOIN identity_documents ON identity_documents.id = users.fk_identity_document
  WHERE contracts.id LIKE '%${info.code}%' AND contracts.status=${info.status} AND users.fk_company=${info.company};`;
};

const INDEX_OF_METH = (info) => {
  return `SELECT contracts.*, labor_contracts.name, identity_documents.abbreviation, users.document_number,
  (SELECT COUNT(*) AS num FROM contract_amendments WHERE fk_contract=${info.code}) AS num_amen,
  job_functions.title_job_functions,job_functions.contract_object,job_functions.specific_obligations
  FROM contracts
  INNER JOIN users ON users.id = contracts.fk_user
  INNER JOIN labor_contracts ON labor_contracts.id = contracts.fk_labor_contract
  INNER JOIN identity_documents ON identity_documents.id = users.fk_identity_document
  INNER JOIN job_functions ON job_functions.id = contracts.fk_job_functions
  WHERE contracts.id = ${info.code} AND users.fk_company=${info.company};`;
};

const CREATE_AMEND = (info) => {
  return `INSERT INTO contract_amendments SELECT '${info.generatedCode}' + (SELECT IFNULL(COUNT(id) + 1, 1) FROM contract_amendments),
    ${info.code}, ${info.functions ? `'${info.functions}'` : `NULL`}, ${info.term ? `'${info.term}'` : `NULL`},
  ${info.end_date ? `'${info.end_date}'` : `NULL`}, ${info.path ? `'${info.path}'` : `NULL`},
  ${info.remarks ? `'${info.remarks}'` : `NULL`}, '${info.dateTime}';`;
};


const GET_AMENDMENTS = (info) => {
  return `SELECT contract_amendments.* FROM contract_amendments
  INNER JOIN contracts ON contracts.id = contract_amendments.fk_contract
  WHERE contracts.id = ${info.code} `;
};

const CHECK_CONTRACTS = (code) => {
  return `SELECT COUNT(*) AS num FROM contracts WHERE fk_job_functions = ${code}; `;
};

const UPDATE_DATE = (info) => {
  return `UPDATE contracts SET updated_at = '${info.dateTime}' WHERE id = ${info.code};`;
}

const UPDATE_STATUS = (info) => {
  return `UPDATE contracts SET status = CASE status WHEN 1 THEN 0 WHEN 0 THEN 1 END, reason_status='${info.reason_status}', updated_at = '${info.dateTime}'
  WHERE id = ${info.code}`;
};

module.exports = {
  CREATE_METH,
  GET_PATH,
  INDEX_METH,
  INDEX_OF_METH,
  CREATE_AMEND,
  GET_AMENDMENTS,
  CHECK_CONTRACTS,
  UPDATE_STATUS,
  UPDATE_DATE
};
