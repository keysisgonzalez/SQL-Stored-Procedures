USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Concerts_Delete]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	CREATE PROC [dbo].[Concerts_Delete]
									@Id int			
	AS

	BEGIN

		DELETE FROM [dbo].[Concerts]
		 WHERE Id = @Id

    END
GO
