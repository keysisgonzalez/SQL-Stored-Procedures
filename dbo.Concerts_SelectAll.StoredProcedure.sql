USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Concerts_SelectAll]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	CREATE PROC [dbo].[Concerts_SelectAll]

	AS

	BEGIN

			SELECT [Id]
				,[Name]
				,[Description]
				,[IsFree]
				,[Address]
				,[Cost]
				,[DateOfEvent]
			FROM [dbo].[Concerts]
	END
GO
