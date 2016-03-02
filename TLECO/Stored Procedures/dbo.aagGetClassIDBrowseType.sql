SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create      procedure [dbo].[aagGetClassIDBrowseType] @ACTINDX int, @ClassID int output, @BrowseType smallint output as begin  Select @ClassID  = aaAcctClassID from AAG00200 Where ACTINDX = @ACTINDX   if @ClassID = 0   set @BrowseType = 0  else  begin  if exists (Select aaTrxDimID from AAG00202 where  aaAcctClassID = @ClassID  and aaDataEntry = 2  and  aaTrxDimCodeIDDflt  = 0)   set @BrowseType = 2   else  set @BrowseType = 1  end end     
GO
GRANT EXECUTE ON  [dbo].[aagGetClassIDBrowseType] TO [DYNGRP]
GO
