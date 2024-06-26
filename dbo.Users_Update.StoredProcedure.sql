USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Users_Update]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[Users_Update]
		@FirstName nvarchar(128)
		,@LastName nvarchar(128)
		,@Email nvarchar(128)
		,@Password nvarchar(128)
		,@AvatarUrl nvarchar(128)
		,@TenantId nvarchar(128)				
		,@Id int 
as

/*-------Test---------
Declare @Id int = 2;

	Declare @FirstName nvarchar(128) = 'Anthon',
			@LastName nvarchar(128) = 'Marz',
			@Email nvarchar(128) = 'Marz@example.com',
			@Password nvarchar(128) = 'Marz123',
			@AvatarUrl nvarchar(128) = 'Marz.com',
			@TenantId nvarchar(128) = 'tenant452',			
			@DateNow datetime2 = GETUTCDATE()

	Select *
	from dbo.Users
	where Id = @Id

	Execute dbo.Users_Update
				@FirstName,
				@LastName,
				@Email,
				@Password,
				@AvatarUrl,
				@TenantId,				
				@Id

	Select *
	from dbo.Users
	where Id = @Id

*/

BEGIN

	Declare @DateNow datetime2 = GETUTCDATE()

	UPDATE [dbo].[Users]
	   SET [FirstName] = @FirstName
		  ,[LastName] = @LastName
		  ,[Email] = @Email
		  ,[AvatarUrl] = @AvatarUrl
		  ,[TenantId] = @TenantId
		  ,[Password] = @Password    
		  ,[DateModified] = @DateNow		  

	 WHERE Id = @Id

END





GO
