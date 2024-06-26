USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Users_Insert]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Users_Insert]

			@FirstName nvarchar(128)
           ,@LastName nvarchar(128)
           ,@Email nvarchar(128)
		   ,@Password nvarchar(128)   
           ,@AvatarUrl nvarchar(128)
           ,@TenantId nvarchar(128)		     
		   ,@Id int OUTPUT

as 

/*
	Declare @FirstName nvarchar(128) = 'Anna'
           ,@LastName nvarchar(128) = 'Gonzalez'
           ,@Email nvarchar(128) = 'anna@gmail.com'
		   ,@Password nvarchar(128) = '123'
           ,@AvatarUrl nvarchar(128) = 'anna.png'
           ,@TenantId nvarchar(128)	= 'annag'     
		   ,@Id int 

	Execute dbo.Users_Insert @FirstName 
						   ,@LastName
						   ,@Email 
						   ,@Password   
						   ,@AvatarUrl 
						   ,@TenantId 	     
						   ,@Id OUTPUT
	Select @Id

*/

BEGIN

INSERT INTO [dbo].[Users]
           (
		   [FirstName]
           ,[LastName]
           ,[Email]
		   ,[Password]
           ,[AvatarUrl]
           ,[TenantId]
		   )
          
     VALUES
           (
		   @FirstName
           ,@LastName
           ,@Email           
		   ,@Password
		   ,@AvatarUrl
           ,@TenantId
		   )          
	SET @Id = SCOPE_IDENTITY()
	
END
GO
