USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Skills_Insert]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Skills_Insert]
		@Name nvarchar(128),
		@Id int OUTPUT

as

/*
	Declare @Id int = 0;

	Declare @Name nvarchar(128) = 'jQuery'

	Execute dbo.Skills_Insert
			@Name,
			@Id OUTPUT

	Select *
	from dbo.Skills
*/


BEGIN

INSERT INTO [dbo].[Skills]
           ([Name])

     VALUES
           (@Name)

	 SET @Id = SCOPE_IDENTITY()

END
GO
