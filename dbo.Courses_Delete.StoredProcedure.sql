USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Courses_Delete]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


Create proc [dbo].[Courses_Delete]		   
		   @Id int 
as

/*
	Declare @Id int = 11;

	Execute dbo.[Courses_Delete] @Id

	Select *
	from dbo.Courses
	Where id = @Id;

*/

BEGIN

	DELETE FROM dbo.Courses
		Where Id = @Id

END


GO
