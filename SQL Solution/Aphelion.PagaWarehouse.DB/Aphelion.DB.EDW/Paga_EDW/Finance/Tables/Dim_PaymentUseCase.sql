CREATE TABLE [Finance].[DimPaymentUseCase] (
    [DimPaymentUseCaseID]     INT           IDENTITY (1, 1) NOT NULL,
    [DimPaymentUseCaseTypeID] INT           NOT NULL,
    [SourceKey]               VARCHAR (255) NOT NULL,
    [Name]                    VARCHAR (255) NULL,
    [sys_ModifiedBy]          VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]          DATETIME      DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]           VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]           DATETIME      DEFAULT (getdate()) NOT NULL,
    [IsActive]                BIT           DEFAULT ((1)) NOT NULL,
    [SYS_CHANGE_VERSION]      BIGINT        DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION]    CHAR (1)      DEFAULT ('I') NOT NULL,
    CONSTRAINT [pk_DimPaymentUseCaseID] PRIMARY KEY CLUSTERED ([DimPaymentUseCaseID] ASC),
    CONSTRAINT [FK_DimPaymentUseCaseTypeID] FOREIGN KEY ([DimPaymentUseCaseTypeID]) REFERENCES [Finance].[DimPaymentUseCaseType] ([DimPaymentUseCaseTypeID])
);














GO
EXECUTE sp_addextendedproperty @name = N'LoadOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimPaymentUseCase';


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'0', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimPaymentUseCase';


GO
EXECUTE sp_addextendedproperty @name = N'UpdateQuery', @value = N'UPDATE edw 
	SET edw.SYS_CHANGE_OPERATION = stg.SYS_CHANGE_OPERATION,edw.SYS_CHANGE_VERSION = stg.SYS_CHANGE_VERSION, 
	edw.DimPaymentUseCaSET edw.SYS_CHANGE_OPERATION = stg.SYS_CHANGE_OPERATION,edw.SYS_CHANGE_VERSION = stg.SYS_CHANGE_VERSION,ypeID = stg.DimPaymentUseCaSET edw.SYS_CHANGE_OPERATION = stg.SYS_CHANGE_OPERATION,edw.SYS_CHANGE_VERSION = stg.SYS_CHANGE_VERSION,ypeID,edw.SourceKey = stg.SourceKey,edw.Name = stg.Name
	FROM Finance.DimPaymentUseCase AS edw
	INNER JOIN Paga_Staging.Updates.Finance_DimPaymentUseCase AS stg ON
		edw.SourceKey = stg.SourceKey;
	GO', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimPaymentUseCase';



