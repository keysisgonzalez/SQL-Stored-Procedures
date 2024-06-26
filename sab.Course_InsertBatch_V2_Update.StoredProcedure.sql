USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [sab].[Course_InsertBatch_V2_Update]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-----SAMPLE SEPARATED FROM THE INSERT-----
CREATE proc [sab].[Course_InsertBatch_V2_Update]
		@batchCourses sab.CourseV2 READONLY
as


BEGIN

	Declare @DateNow datetime2 = '01/01/1900' 

	UPDATE sab.Course
	SET Credits = b.Credits
				 ,Title = b.Title
				 ,DepartmentId = b.DeptId
				 ,DateModified = @DateNow
	from @batchCourses as b inner join sab.Course as c
							on c.CourseId = b.Id


END
GO
