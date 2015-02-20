USE Paga_EDW
GO


SELECT COUNT(*) FROM
(
	SELECT
		FactGLTxID,
		movement
	FROM Finance.FactGLTransaction
	EXCEPT
	SELECT
		t1.FactGLTxID,
		movement = (t1.[CreditAmount] - t1.[DebitAmount])
	FROM Finance.FactGLTransaction as t1
)AS cte


