CREATE TABLE [Shared].[DimUser] (
    [DimUserID]        INT             IDENTITY (1, 1) NOT NULL,
    [SourceKey]        INT             NOT NULL,
    [DimDateOfBirthID] INT             NULL,
    [FirstName]        VARCHAR (255)   NULL,
    [MiddleName]       VARCHAR (255)   NULL,
    [LastName]         VARCHAR (255)   NULL,
    [Gender]           VARCHAR (50)    NULL,
    [PhoneNumber]      VARBINARY (256) NULL,
    [Email]            VARCHAR (100)   NULL,
    [IsEnabled]        BIT             NULL,
    [DimCreatedDateID] INT             NOT NULL,
    [SourceKeyHash]    BIGINT          NULL,
    [DeltaHash]        BIGINT          NULL,
    [sys_ModifiedBy]   VARCHAR (255)   DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]   DATETIME        DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]    VARCHAR (255)   DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]    DATETIME        DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimUserID] PRIMARY KEY CLUSTERED ([DimUserID] ASC),
    CONSTRAINT [fk_DimUser_CreatedDateID] FOREIGN KEY ([DimCreatedDateID]) REFERENCES [Shared].[DimDate] ([DimDateID]),
    CONSTRAINT [fk_DimUser_DateOfBirthID] FOREIGN KEY ([DimDateOfBirthID]) REFERENCES [Shared].[DimDate] ([DimDateID])
);


















GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimUser_SourceKey]
    ON [Shared].[DimUser]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'2600', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimUser';




GO



GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'dbo.Users', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimUser';




GO
EXECUTE sp_addextendedproperty @name = N'LoadOrder', @value = N'7', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimUser';


GO
EXECUTE sp_addextendedproperty @name = N'KeyColumn', @value = N'UserId', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimUser';


GO
EXECUTE sp_addextendedproperty @name = N'ExcludeFromCube', @value = N'True', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimUser';


GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'--DimUser
SELECT
	Sourcekey,
	DimCreatedDateID,
	[FirstName],
	[LastName],
	[MiddleName],
	UserDescription,
	Gender,
	DimDateOfBirthID,
	Email,
	IsEnabled
FROM
(
	SELECT 
		SourceKey = [UserId],
		DimCreatedDateID = CONVERT(INT,CONVERT(VARCHAR(8), [CreatedDate], 112)),
		[FirstName]=CONVERT(VARCHAR(255),[FirstName]),
		[LastName]=CONVERT(VARCHAR(255),[LastName]),
		[MiddleName] =CONVERT(VARCHAR(255),[MiddleName]),
		UserDescription = [Namespace], 
		Gender = [GenderId],
		DimDateOfBirthID =CONVERT(INT,CONVERT(VARCHAR(8), [DateOfBirth], 112)),
		Email = NULL,
		IsEnabled
	FROM [dbo].[Users]
) AS base_query
', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimUser';










GO


