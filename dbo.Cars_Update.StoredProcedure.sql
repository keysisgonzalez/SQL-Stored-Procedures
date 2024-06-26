USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Cars_Update]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Cars_Update]
			@Make nvarchar(50)
           ,@Model nvarchar(50)
           ,@Year int      
		   ,@Id int 

as


BEGIN

	UPDATE [dbo].[Cars]
       SET  			 
		   [Make] = @Make
           ,[Model] = @Model
           ,[Year] = @Year                   
	       ,[DateModified] = GETUTCDATE() 

	WHERE Id = @Id
           
END


GO
