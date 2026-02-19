CREATE DATABASE healthcare_analytics;
SHOW TABLES;
SELECT * FROM outpatient_claims LIMIT 10;
SELECT * FROM providers LIMIT 10;
CREATE VIEW claims_clean AS
SELECT
	ClaimID,
    Provider,
    BeneID,
    InscClaimAmtReimbursed AS claim_amount,
    DeductibleAmtPaid AS deductible_amount,
    ClaimStartDt AS claim_start_date,
    ClaimEndDt AS claim_end_date
FROM outpatient_claims
WHERE 
    Provider IS NOT NULL 
    AND BeneID IS NOT NULL
    AND InscClaimAmtReimbursed > 0
    AND ClaimStartDt IS NOT NULL;
SHOW FULL TABLES;
SELECT * FROM claims_clean LIMIT 10;