SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Check_Call_Billing] (  @USERID char(15),  @SRVRECTYPE smallint,  @CALLNBR char(11),  @Error integer OUTPUT,  @ErrorMsg varchar(255) OUTPUT ) As declare @OtherUser char(15) set nocount on select @Error = 0, @ErrorMsg = '' select @OtherUser = USERID from SVC00215 where SRVRECTYPE = @SRVRECTYPE and CALLNBR = @CALLNBR and MKDTOPST = 1 and USERID <> @USERID if @OtherUser is null  return select @Error = 50,  @ErrorMsg = ' is marked by ' + RTrim(@OtherUser) + ' for posting' set nocount off return    
GO
GRANT EXECUTE ON  [dbo].[SVC_Check_Call_Billing] TO [DYNGRP]
GO
