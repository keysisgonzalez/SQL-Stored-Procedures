USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Students_Delete]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE proc [dbo].[Students_Delete]		   
		   @Id int 
as

/*
	Declare @Id int = 11;

	Execute dbo.[Students_Delete] @Id

	Select *
	from dbo.Students
	Where id = @Id;

*/

BEGIN

	DELETE FROM dbo.StudentCourses
		Where StudentId = @Id

	DELETE FROM dbo.Students
		Where Id = @Id

END



GO
