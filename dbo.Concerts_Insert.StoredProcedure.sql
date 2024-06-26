USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Concerts_Insert]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

			CREATE PROC [dbo].[Concerts_Insert]
										@Name nvarchar(500)
										,@Description nvarchar(500)
										,@IsFree bit
										,@Address nvarchar(500)
										,@Cost int
										,@DateOfEvent datetime2(7)
										,@Id int OUTPUT

			AS

			BEGIN

				INSERT INTO [dbo].[Concerts]
						([Name]
						,[Description]
						,[IsFree]
						,[Address]
						,[Cost]
						,[DateOfEvent])
				VALUES (@Name, @Description, @IsFree, @Address, @Cost, @DateOfEvent)
				SET @Id = SCOPE_IDENTITY()

			END
		
GO
