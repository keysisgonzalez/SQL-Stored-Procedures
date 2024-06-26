USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[People_Insert]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Create a shell that will  house the store procedure

CREATE proc [dbo].[People_Insert]

		@PersonName nvarchar(50) 
		,@Age int	
		,@UserId nvarchar(128)
		,@IsASmoker bit
		,@Id int OUTPUT

/*--------- Test Code ----------

Declare @Id int = 0;

Declare @PersonName nvarchar(50) = 'Anna'
		,@Age int = 25		
		,@UserId nvarchar(128) = 'animals123'
		, @IsASmoker bit = 1

Execute dbo.People_Insert 
                @PersonName
				,@Age
				,@UserId
				,@IsASmoker         
				,@Id OUTPUT

	Select @Id

	Select *
	from dbo.People
	where Id = @Id


*/

as

BEGIN

--The code below is the stated of the stored porcedure in the database.
INSERT INTO [dbo].[People]
           ([Name]
           ,[Age]
           ,[IsSmoker]           
           ,[UserId])

     VALUES
           (@PersonName
           ,@Age
           ,@IsASmoker           
           ,@UserId)

	SET @Id = SCOPE_IDENTITY()


END
GO
