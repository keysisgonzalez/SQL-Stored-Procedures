USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Concerts_Update]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	CREATE PROC [dbo].[Concerts_Update]
									@Name nvarchar(500)
									,@Description nvarchar(500)
									,@IsFree bit
									,@Address nvarchar(500)
									,@Cost int
									,@DateOfEvent datetime2(7)
									,@Id int			
	AS

	BEGIN

		UPDATE [dbo].[Concerts]
		   SET [Name] = @Name
			  ,[Description] = @Description
			  ,[IsFree] = @IsFree
			  ,[Address] = @Address
			  ,[Cost] = @Cost
			  ,[DateOfEvent] = @DateOfEvent
		 WHERE Id = @Id

	END
GO
