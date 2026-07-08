-- =====================================================
-- Script: Create Dedicated Warehouse
-- =====================================================

USE ROLE SYSADMIN;

CREATE WAREHOUSE IF NOT EXISTS MY_CRYPTO_WH
    WAREHOUSE_SIZE = 'XSMALL'
    AUTO_SUSPEND = 60
    AUTO_RESUME = TRUE
    INITIALLY_SUSPENDED = TRUE
    MIN_CLUSTER_COUNT = 1
    MAX_CLUSTER_COUNT = 1
    SCALING_POLICY = 'STANDARD'
    COMMENT = 'Dedicated warehouse for Crypto Warehouse workload';

-- Grant usage/operate to the role created in create_role.sql
GRANT USAGE, OPERATE ON WAREHOUSE MY_CRYPTO_WH TO ROLE Crypto_Role;

-- =====================================================
-- End of Warehouse Script
-- =====================================================