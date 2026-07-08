-- =====================================================
-- Script: Create Dedicated Role
-- =====================================================

USE ROLE SECURITYADMIN;

-- Create the role
CREATE ROLE IF NOT EXISTS Crypto_Role
    COMMENT = 'Dedicated role for For CryptoWarehouse workload';

-- Grant role to a parent role (optional, for role hierarchy)
GRANT ROLE Crypto_Role TO ROLE SYSADMIN;

-- Grant role to specific users (optional)
-- GRANT ROLE MY_APP_ROLE TO USER my_service_user;

-- =====================================================
-- End of Role Script
-- =====================================================