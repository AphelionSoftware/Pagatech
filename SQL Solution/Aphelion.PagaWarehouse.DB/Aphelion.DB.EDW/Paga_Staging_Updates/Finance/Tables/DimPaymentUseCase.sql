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
    CONSTRAINT [pk_DimPaymentUseCaseID] PRIMARY KEY CLUSTERED ([DimPaymentUseCaseID] ASC),
    CONSTRAINT [FK_DimPaymentUseCaseTypeID] FOREIGN KEY ([DimPaymentUseCaseTypeID]) REFERENCES [Finance].[DimPaymentUseCaseType] ([DimPaymentUseCaseTypeID])
);


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'0', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimPaymentUseCase';


GO
EXECUTE sp_addextendedproperty @name = N'LoadOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimPaymentUseCase';

