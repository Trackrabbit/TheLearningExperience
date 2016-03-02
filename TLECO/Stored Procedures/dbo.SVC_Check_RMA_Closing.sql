SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE Procedure [dbo].[SVC_Check_RMA_Closing] (  @USERID char(15),  @RMA char(15),  @LineNumber numeric(19,5),  @Error integer OUTPUT,  @ErrorMsg varchar(255) OUTPUT ) As declare @OtherUser char(15) set nocount on select @Error = 0, @ErrorMsg = '' select @OtherUser = USERID from SVC05115 where RETDOCID = @RMA and  LNSEQNBR = @LineNumber and MKDTOPST = 1 and USERID <> @USERID if @OtherUser is null  return select @Error = 50,  @ErrorMsg = ' is marked by ' + RTrim(@OtherUser) + ' for closing' set nocount off return    
GO
GRANT EXECUTE ON  [dbo].[SVC_Check_RMA_Closing] TO [DYNGRP]
GO
