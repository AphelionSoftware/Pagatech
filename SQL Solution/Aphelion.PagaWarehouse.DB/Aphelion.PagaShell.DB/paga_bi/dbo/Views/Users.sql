CREATE VIEW dbo.Users AS
(
	SELECT 
		UserId,
		CreatedDate,
		DateOfBirth,
		FirstName,
		GenderId,
		IsEnabled,
		LastName,
		MiddleName,
		Namespace,
		UpdatedDate,
		IsEmailVerified,
		UUID,
		PhoneNumberVerifiedDate,
		NamespaceValue,
		EmailVerifiedDate
	FROM paga.[dbo].[User]
);
GO