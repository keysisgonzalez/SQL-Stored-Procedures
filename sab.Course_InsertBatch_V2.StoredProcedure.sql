USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [sab].[Course_InsertBatch_V2]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [sab].[Course_InsertBatch_V2]
		@batchCourses sab.CourseV2 READONLY
as

/*
	
	Declare @newCourses sab.CourseV2

	Insert into @newCourses (Credits, Title, DeptId, Id)
	Values(2, 'Computer Science 1001', 2, 901)

	Insert into @newCourses (Credits, Title, DeptId, Id)
	Values(200, 'Calculus 1045', 2, 1045)

	Insert into @newCourses (Credits, Title, DeptId, Id)
	Values(10, 'HTML V4', 2, 803)
		
	Execute sab.[Course_InsertBatch_V2] @newCourses

	Select *
	From sab.Course	

*/

BEGIN

	Execute sab.[Course_InsertBatch_V2_Insert] @batchCourses;

	Execute sab.[Course_InsertBatch_V2_Update] @batchCourses;

END
GO
