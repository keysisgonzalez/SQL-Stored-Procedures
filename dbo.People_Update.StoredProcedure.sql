USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[People_Update]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--EXAMPLE OF AN UPDATE FILE

CREATE proc [dbo].[People_Update]
		--parameters
		@PersonName nvarchar(50) 
		,@Age int	
		,@UserId nvarchar(128)
		,@IsASmoker bit
		,@Id int --In an update there's no OUTPUT, all of the parameters that are coming into the procs need to be provided as inputs

as

/*------Test Code (always required) ---------

	Declare @Id int = 9;

	Declare @PersonName nvarchar(50) = 'Joe'
			,@Age int = 55		
			,@UserId nvarchar(128) = '444444444'
			, @IsASmoker bit = 1

		Select *
		from dbo.People
		where Id = @Id

	Execute dbo.People_Update 
					@PersonName
					,@Age
					,@UserId
					,@IsASmoker         
					,@Id 
					
		Select *
		from dbo.People
		where Id = @Id

*/

BEGIN

	Declare @dataNow datetime2 = GETUTCDATE() --the date is manage internally reason why we're declaring the var in this section and not above

	--The function that UPDATES the statement
	UPDATE [dbo].[People] --update the table
		--setting the columns values
	   SET [Name] = @PersonName
		  ,[Age] = @Age
		  ,[IsSmoker] = @IsASmoker 
		  ,[DateModified] = @dataNow
		  ,[UserId] = @UserId
	 WHERE Id = @Id


END
GO
