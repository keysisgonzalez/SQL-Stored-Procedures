USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [sab].[Course_InsertBatch]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [sab].[Course_InsertBatch]
		@newCourses sab.Course READONLY
as

/*
	Declare @newCourses sab.Course

	Insert into @newCourses (Credits, Title, DeptId)
	Values(2, 'Spanish', 7)
	Insert into @newCourses (Credits, Title, DeptId)
	Values(10, 'CS 1001', 2)

*/

BEGIN

	Insert into sab.Course(Credits
							,Title
							,DepartmentId)

	Select n.Credits
			,n.Title
			,n.DeptId
	from @newCourses as n

END
GO
