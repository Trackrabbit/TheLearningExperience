SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE Procedure [dbo].[SVC_Check_Depot_Completion] (  @USERID char(15),  @WOType smallint,  @WONumber char(11),  @Error integer OUTPUT,  @ErrorMsg varchar(255) OUTPUT ) As  declare @OtherUser char(15) set nocount on select @Error = 0, @ErrorMsg = '' select @OtherUser = USERID from SVC06115 where WORECTYPE = @WOType and  WORKORDNUM = @WONumber and MKDTOPST = 1 if @OtherUser is null  begin  if exists(select * from SVC06130 where WORECTYPE = @WOType and  WORKORDNUM = @WONumber and ACTINDX = 0)  select @Error = 100,  @ErrorMsg = 'There is at least one distribution account missing on this '  return  end select @Error = 50,  @ErrorMsg = ' is marked by ' + RTrim(@OtherUser) + ' for posting' if @OtherUser = @USERID select @Error = 10  set nocount off return    
GO
GRANT EXECUTE ON  [dbo].[SVC_Check_Depot_Completion] TO [DYNGRP]
GO
