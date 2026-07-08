-- =====================================================
-- Script: Create Dedicated Database
-- =====================================================

USE ROLE SYSADMIN;

CREATE DATABASE IF NOT EXISTS CRYPTO_DB
    COMMENT = 'Dedicated database for CRYPTO warehouse';

-- Grant usage/create privileges to the role
GRANT USAGE ON DATABASE CRYPTO_DB TO ROLE Crypto_Role;
GRANT CREATE SCHEMA ON DATABASE CRYPTO_DB TO ROLE Crypto_Role;

-- =====================================================
-- End of Database Script
-- =====================================================


-- =====================================================
-- Script: Create Dedicated Schema
-- =====================================================

USE ROLE SYSADMIN;
USE DATABASE CRYPTO_DB;

CREATE SCHEMA IF NOT EXISTS RAW
    COMMENT = 'Dedicated schema for CRYPTO workload';

-- Grant schema-level privileges to the role
GRANT USAGE ON SCHEMA CRYPTO_DB.RAW TO ROLE Crypto_Role;
GRANT CREATE TABLE ON SCHEMA CRYPTO_DB.RAW TO ROLE Crypto_Role;
GRANT CREATE VIEW ON SCHEMA CRYPTO_DB.RAW TO ROLE Crypto_Role;
GRANT CREATE STAGE ON SCHEMA CRYPTO_DB.RAW TO ROLE Crypto_Role;
GRANT CREATE FILE FORMAT ON SCHEMA CRYPTO_DB.RAW TO ROLE Crypto_Role;

-- Optional: future grants so new objects auto-inherit access
GRANT SELECT ON FUTURE TABLES IN SCHEMA CRYPTO_DB.RAW TO ROLE Crypto_Role;
GRANT SELECT ON FUTURE VIEWS IN SCHEMA CRYPTO_DB.RAW TO ROLE Crypto_Role;

-- =====================================================
-- End of Schema Script
-- =====================================================