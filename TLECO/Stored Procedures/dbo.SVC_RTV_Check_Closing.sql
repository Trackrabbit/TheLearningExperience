SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_RTV_Check_Closing] (  @USERID char(15),  @RTV char(15),  @Line numeric(19,5),  @Error integer OUTPUT,  @ErrorMsg varchar(255) OUTPUT ) As declare @OtherUser char(15) set nocount on select @Error = 0, @ErrorMsg = '' select @OtherUser = USERID from SVC05635 where RTV_Number = @RTV and RTV_Line = @Line and MKDTOPST = 1  and POSTED = 0  and USERID <> @USERID if @OtherUser is null  return select @Error = 50,  @ErrorMsg = ' is marked by ' + RTrim(@OtherUser) + ' for closing' set nocount off return    
GO
GRANT EXECUTE ON  [dbo].[SVC_RTV_Check_Closing] TO [DYNGRP]
GO
