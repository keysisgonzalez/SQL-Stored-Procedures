USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Cars_UpdateUsedStatus]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Cars_UpdateUsedStatus]			    
		   @Id int 		   
as


BEGIN

	UPDATE [dbo].[Cars]
       SET  			 		            
		   [IsUsed] = 1
		   ,[DateModified] = GETUTCDATE()

	WHERE Id = @Id
           
END
GO
