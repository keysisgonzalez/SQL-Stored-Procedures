USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Images_Insert]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Images_Insert]
		@TypeId int,
		@Url nvarchar(128),
		@Id int OUTPUT		

as
/*
	Declare @Id int = 0;

	Declare @TypeId int = 14,
			@Url nvarchar(128)= 'https://rb.gy/657kex'

	Execute dbo.Images_Insert
			 @TypeId,
			 @Url,
			 @Id OUTPUT

	Select @Id

	Select *
    from dbo.Images

*/


BEGIN

INSERT INTO [dbo].[Images]
           (
		   [TypeId]
           ,[Url]
		   )

     VALUES
           (
		   @TypeId,
           @Url
		   )

	SET @Id = SCOPE_IDENTITY()

END
GO
