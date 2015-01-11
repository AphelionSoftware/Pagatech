	
	CREATE VIEW dbo.Process AS
	(
			SELECT [ProcessId], [Amount], [CompletedTimestamp], [CreatedDate], [Fee], [FinancialTransactionId], [ForUserId], [IsShortLived], [ProcessChannelId], [ProcessCode], [ProcessStatusId], [ProcessTypeId], [StartedTimestamp], [ToUserId], [UpdatedDate], [UserId], [AgentCommissionAmount], [AgentCommissionTypeId], [StatusMessage] FROM paga.dbo.Process	
	);
