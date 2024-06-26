USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [sab].[Course_InsertBatch_V2_Insert]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-----SAMPLE SEPARATED FROM THE UPDATE-----
CREATE proc [sab].[Course_InsertBatch_V2_Insert]
		@batchCourses sab.CourseV2 READONLY
as

BEGIN
	
	SET IDENTITY_INSERT sab.Course ON
	Insert into sab.Course(Credits
							,Title
							,DepartmentId
							,CourseId)

	Select bc.Credits
			,bc.Title
			,bc.DeptId
			,bc.Id
	from @batchCourses as bc
	--Select from this table the courses that we don't have already
	Where Not Exists (Select 1
						from sab.Course as c
						where c.CourseId = bc.Id)


	SET IDENTITY_INSERT sab.Course OFF

END
GO
