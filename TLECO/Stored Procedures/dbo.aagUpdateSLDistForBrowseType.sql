SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE    procedure [dbo].[aagUpdateSLDistForBrowseType] @I_cTableError nvarchar(30) = null,  @I_nHdrID int,  @I_nNot tinyint as  begin   if @I_nNot = 1  EXEC ('update AAG20001 set aaBrowseType = 2   where aaSubLedgerHdrID = ' + @I_nHdrID +   ' and aaBrowseType = 1  and exists (select top 1 * from ' + @I_cTableError +  ' where AAG20001.aaSubLedgerHdrID = ' + @I_cTableError +  '.aaSubLedgerHdrID  and AAG20001.aaSubLedgerDistID = ' + @I_cTableError +  '.aaSubLedgerDistID)')  else  EXEC ('if exists(select aaSubLedgerHdrID from ' + @I_cTableError +   ' where aaSubLedgerHdrID = '+@I_nHdrID+ ')  update AAG20001 set aaBrowseType = 1   where aaSubLedgerHdrID = '+@I_nHdrID +' and aaBrowseType = 2   and not exists (select top 1 * from ' + @I_cTableError +'   where AAG20001.aaSubLedgerHdrID = ' + @I_cTableError +'.aaSubLedgerHdrID  and AAG20001.aaSubLedgerDistID = ' + @I_cTableError +'.aaSubLedgerDistID)   else  update AAG20001 set aaBrowseType = 1   where aaSubLedgerHdrID = '+@I_nHdrID+' and aaBrowseType = 2')   return end    
GO
GRANT EXECUTE ON  [dbo].[aagUpdateSLDistForBrowseType] TO [DYNGRP]
GO
