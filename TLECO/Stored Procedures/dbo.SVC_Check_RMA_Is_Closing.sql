SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE Procedure [dbo].[SVC_Check_RMA_Is_Closing] (  @USERID char(15),  @RMA char(15),  @Error integer OUTPUT,  @ErrorMsg varchar(255) OUTPUT ) As declare @OtherUser char(15) set nocount on select @Error = 0, @ErrorMsg = '' select @OtherUser = USERID from SVC05115 where RETDOCID = @RMA and MKDTOPST = 1  if @OtherUser is null  return if @OtherUser = @USERID  select @Error = 30,  @ErrorMsg = ' is marked for closing' else  select @Error = 50,  @ErrorMsg = ' is marked by ' + RTrim(@OtherUser) + ' for closing' set nocount off return    
GO
GRANT EXECUTE ON  [dbo].[SVC_Check_RMA_Is_Closing] TO [DYNGRP]
GO
