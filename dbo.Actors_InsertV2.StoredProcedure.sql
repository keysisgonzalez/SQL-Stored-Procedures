USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Actors_InsertV2]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Actors_InsertV2]
		   @Title nvarchar(128),           
           @StatusId int,
           @ImageTypeId int,
		   @ImageUrl nvarchar(128),
           @UserId int,
		   @Id int OUTPUT

as

/*--------Test---------

	Declare @Id int = 0;

	Declare @Title nvarchar(128) = 'Jane',            
            @StatusId int = 123,
            @ImageTypeId int = 30,
			@ImageUrl nvarchar(128) = 'Jane.com',
            @UserId int = 222
			
	Execute dbo.Actors_InsertV2
		   @Title,           
           @StatusId,
           @ImageTypeId,           
           @ImageUrl,
		   @UserId,
		   @Id OUTPUT

	Select *
	from dbo.ActorsV2

	Select *
	from dbo.ActorsImages
	

*/


BEGIN

INSERT INTO dbo.ActorsImages
			([TypedId]
			,[Url]
			)

	VALUES 
		(@ImageTypeId
		,@ImageUrl
		)

	SET @Id = SCOPE_IDENTITY()


INSERT INTO [dbo].[ActorsV2]

           (
		   [Title]           
           ,[StatusId]		   
           ,[PrimaryImageId]	  	   
           ,[UserId]
		   )

     VALUES
           (
		   @Title,          
           @StatusId,
           @Id,		         
           @UserId		   
		   )		   		   	  

	SET @Id = SCOPE_IDENTITY()
		
END
GO
