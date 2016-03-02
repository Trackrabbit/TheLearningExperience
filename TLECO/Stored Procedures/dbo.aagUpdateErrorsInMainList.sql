SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE        procedure [dbo].[aagUpdateErrorsInMainList]  @iHdrID integer,  @iDistID integer,  @iErrorTable  nvarchar(30) = null,  @iClearCurrentDistErrors tinyint = 0 as  if @iClearCurrentDistErrors = 1  begin  exec(' delete '+ @iErrorTable +' where aaSubLedgerHdrID = ' + @iHdrID +' and aaSubLedgerDistID = '+ @iDistID +' and AADOCVAL = 0')  return  end exec('if exists(select aaSubLedgerHdrID from '+ @iErrorTable +' where aaSubLedgerHdrID = ' + @iHdrID +' and AADOCVAL = 1) ' +  ' begin'+  ' delete '+ @iErrorTable +' where aaSubLedgerHdrID = ' + @iHdrID +' and aaSubLedgerDistID = '+ @iDistID +' and AADOCVAL = 1' +  ' update '+ @iErrorTable +' set AADOCVAL = 1 where aaSubLedgerHdrID = ' + @iHdrID +' and aaSubLedgerDistID = '+ @iDistID +' and AADOCVAL = 0' +  ' end ' +  ' else delete from '+ @iErrorTable +' where aaSubLedgerHdrID = ' + @iHdrID)    
GO
GRANT EXECUTE ON  [dbo].[aagUpdateErrorsInMainList] TO [DYNGRP]
GO
