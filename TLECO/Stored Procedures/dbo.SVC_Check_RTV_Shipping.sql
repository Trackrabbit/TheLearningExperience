SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE Procedure [dbo].[SVC_Check_RTV_Shipping] (  @USERID char(15),  @RTV char(15),  @RTVLine numeric(19,5),  @Error integer OUTPUT,  @ErrorMsg varchar(255) OUTPUT ) As declare @OtherUser char(15) set nocount on select @Error = 0, @ErrorMsg = '' if @RTVLine = 0 and exists(select * from SVC05615 where RTV_Number = @RTV and MKDTOPST = 1 and POSTED = 0)  begin  select @Error = 40,   @ErrorMsg = ' is marked for shipping'  return  end  else  select @OtherUser = USERID from SVC05615 where RTV_Number = @RTV and RTV_Line = @RTVLine and MKDTOPST = 1 and POSTED = 0 and USERID <> @USERID  if @OtherUser is null  return select @Error = 50,  @ErrorMsg = ' is marked by ' + RTrim(@OtherUser) + ' for shipping' set nocount off return    
GO
GRANT EXECUTE ON  [dbo].[SVC_Check_RTV_Shipping] TO [DYNGRP]
GO
