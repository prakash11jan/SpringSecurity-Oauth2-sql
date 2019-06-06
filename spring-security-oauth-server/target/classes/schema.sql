--------------- H2 ---------------

--drop table if exists oauth_client_details;
create table if not exists oauth_client_details (
 client_id VARCHAR(255) PRIMARY KEY,
  resource_ids VARCHAR(255),
client_secret VARCHAR(255),
 scope VARCHAR(255),
  authorized_grant_types VARCHAR(255),
  web_server_redirect_uri VARCHAR(255),
  authorities VARCHAR(255),
  access_token_validity INTEGER,
  refresh_token_validity INTEGER,
  additional_information VARCHAR(4096),
  autoapprove VARCHAR(255)
);

create table if not exists oauth_client_token (
  token_id VARCHAR(255),
  token LONG VARBINARY,
  authentication_id VARCHAR(255) PRIMARY KEY,
  user_name VARCHAR(255),
  client_id VARCHAR(255)
);

create table if not exists oauth_access_token (
  token_id VARCHAR(255),
  token LONG VARBINARY,
  authentication_id VARCHAR(255) PRIMARY KEY,
  user_name VARCHAR(255),
  client_id VARCHAR(255),
  authentication LONG VARBINARY,
  refresh_token VARCHAR(255)
);

create table if not exists oauth_refresh_token (
  token_id VARCHAR(255),
  token LONG VARBINARY,
  authentication LONG VARBINARY
);

create table if not exists oauth_code (
  code VARCHAR(255), authentication LONG VARBINARY
);

create table if not exists oauth_approvals (
	userId VARCHAR(255),
	clientId VARCHAR(255),
	scope VARCHAR(255),
	status VARCHAR(10),
	expiresAt TIMESTAMP,
	lastModifiedAt TIMESTAMP
);

create table if not exists ClientDetails (
  appId VARCHAR(255) PRIMARY KEY,
  resourceIds VARCHAR(255),
  appSecret VARCHAR(255),
  scope VARCHAR(255),
  grantTypes VARCHAR(255),
  redirectUrl VARCHAR(255),
  authorities VARCHAR(255),
  access_token_validity INTEGER,
  refresh_token_validity INTEGER,
  additionalInformation VARCHAR(4096),
  autoApproveScopes VARCHAR(255)
);

CREATE TABLE if not exists users (
  username VARCHAR(45) NOT NULL ,
  password VARCHAR(45) NOT NULL ,
  enabled TINYINT NOT NULL DEFAULT 1 ,
  PRIMARY KEY (username));
  
  CREATE TABLE if not exists user_roles (
  user_role_id int(11) NOT NULL AUTO_INCREMENT,
  username varchar(45) NOT NULL,
  role varchar(45) NOT NULL,
  PRIMARY KEY (user_role_id),
  UNIQUE KEY uni_username_role (role,username),
  KEY fk_username_idx (username),
  CONSTRAINT fk_username FOREIGN KEY (username) REFERENCES users (username));

--------------- MySQL ---------------
--drop table if exists oauth_client_details;
--create table oauth_client_details (
--  client_id VARCHAR(255) PRIMARY KEY,
--  resource_ids VARCHAR(255),
--  client_secret VARCHAR(255),
--  scope VARCHAR(255),
--  authorized_grant_types VARCHAR(255),
--  web_server_redirect_uri VARCHAR(255),
--  authorities VARCHAR(255),
--  access_token_validity INTEGER,
--  refresh_token_validity INTEGER,
--  additional_information VARCHAR(4096),
--  autoapprove VARCHAR(255)
--);
--
--create table if not exists oauth_client_token (
--  token_id VARCHAR(255),
--  token LONG VARBINARY,
--  authentication_id VARCHAR(255) PRIMARY KEY,
--  user_name VARCHAR(255),
--  client_id VARCHAR(255)
--);
--
--create table if not exists oauth_access_token (
--  token_id VARCHAR(255),
--  token LONG VARBINARY,
--  authentication_id VARCHAR(255) PRIMARY KEY,
--  user_name VARCHAR(255),
--  client_id VARCHAR(255),
--  authentication LONG VARBINARY,
--  refresh_token VARCHAR(255)
--);
--
--create table if not exists oauth_refresh_token (
--  token_id VARCHAR(255),
--  token LONG VARBINARY,
--  authentication LONG VARBINARY
--);
--
--create table if not exists oauth_code (
--  code VARCHAR(255), authentication LONG VARBINARY
--);
--
--create table if not exists oauth_approvals (
--	userId VARCHAR(255),
--	clientId VARCHAR(255),
--	scope VARCHAR(255),
--	status VARCHAR(10),
--	expiresAt TIMESTAMP,
--	lastModifiedAt TIMESTAMP
--);
--
--create table if not exists ClientDetails (
--  appId VARCHAR(255) PRIMARY KEY,
--  resourceIds VARCHAR(255),
--  appSecret VARCHAR(255),
--  scope VARCHAR(255),
--  grantTypes VARCHAR(255),
--  redirectUrl VARCHAR(255),
--  authorities VARCHAR(255),
--  access_token_validity INTEGER,
--  refresh_token_validity INTEGER,
--  additionalInformation VARCHAR(4096),
--  autoApproveScopes VARCHAR(255)
--);