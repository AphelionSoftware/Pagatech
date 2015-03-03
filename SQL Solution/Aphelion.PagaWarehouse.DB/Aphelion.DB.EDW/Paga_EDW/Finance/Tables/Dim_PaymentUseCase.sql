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
EXECUTE sp_addextendedproperty @name = N'UpdateQuery', @value = 'MERGE  Paga_EDW.[Finance].[DimPaymentUseCase] AS Target
			USING 
			(
				SELECT
						x.*
				FROM
				(
					SELECT
						ROW_NUMBER() OVER (PARTITION BY stg.SourceKey ORDER BY stg.SYS_CHANGE_VERSION DESC) AS rn,
						stg.*
					FROM Paga_Staging.Updates.Finance_DimPaymentUseCase AS stg
				) as x
				WHERE x.rn = 1

			) AS Source ON 
				Target.sourcekey = Source.sourcekey


			WHEN MATCHED  
			THEN
				UPDATE SET 
				Target.DimPaymentUseCaseTypeID = Source.DimPaymentUseCaseTypeID,Target.SourceKey = Source.SourceKey,Target.Name = Source.Name,Target.SYS_CHANGE_VERSION = Source.SYS_CHANGE_VERSION,Target.SYS_CHANGE_OPERATION = Source.SYS_CHANGE_OPERATION
			WHEN NOT MATCHED BY TARGET
			THEN
				INSERT 
				(
					DimPaymentUseCaseTypeID,SourceKey,Name,SYS_CHANGE_VERSION,SYS_CHANGE_OPERATION
				)
			VALUES 
			(
				Source.DimPaymentUseCaseTypeID,Source.SourceKey,Source.Name,Source.SYS_CHANGE_VERSION,Source.SYS_CHANGE_OPERATION
			);', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimPaymentUseCase';






GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimPaymentUseCase_SourceKey]
    ON [Finance].[DimPaymentUseCase]([SourceKey] ASC);


GO
CREATE NONCLUSTERED INDEX [ix_DimPaymentUseCase_ChangeVersion]
    ON [Finance].[DimPaymentUseCase]([SYS_CHANGE_VERSION] ASC);

