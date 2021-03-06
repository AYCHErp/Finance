IF OBJECT_ID('finance.retained_earning_selector_view') IS NOT NULL
DROP VIEW finance.retained_earning_selector_view;

GO


CREATE VIEW finance.retained_earning_selector_view
AS
SELECT 
    finance.account_scrud_view.account_id AS retained_earning_id,
    finance.account_scrud_view.account_name AS retained_earning_name
FROM finance.account_scrud_view
WHERE account_master_id IN(SELECT * FROM finance.get_account_master_ids(15300));



GO
