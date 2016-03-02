SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create Function [dbo].[taGetBrowseType] ( @ACTINDX int = 0 )  RETURNS  smallint  begin  declare @ClassID int = 0  declare @BrowseType smallint   Select @ClassID  = aaAcctClassID from AAG00200 Where ACTINDX = @ACTINDX  if @ClassID = 0   set @BrowseType = 0  else  begin  if exists (Select aaTrxDimID from AAG00202 where  aaAcctClassID = @ClassID  and aaDataEntry = 2  and  aaTrxDimCodeIDDflt  = 0)   set @BrowseType = 2   else  set @BrowseType = 1  end  RETURN(@BrowseType) end    
GO
GRANT EXECUTE ON  [dbo].[taGetBrowseType] TO [DYNGRP]
GO
