SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE       procedure [dbo].[aagTrxExistsForAlias]  @I_nAliasID int = 0,  @O_fTrxExists  tinyint = 0 output  as   if EXISTS (select aaAliasID from AAG30002 where aaAliasID =  @I_nAliasID)   begin   set @O_fTrxExists = 1   return   end   else   if EXISTS (select aaAliasID from AAG10002 where aaAliasID =  @I_nAliasID)   begin   set @O_fTrxExists = 1   return   end   else  if EXISTS (select aaAliasID from AAG20002 a,AAG20001 b   where a.aaSubLedgerHdrID = b.aaSubLedgerHdrID and  a.aaSubLedgerDistID = b.aaSubLedgerDistID   and aaAliasID = @I_nAliasID)   begin   set @O_fTrxExists = 1   return   end    
GO
GRANT EXECUTE ON  [dbo].[aagTrxExistsForAlias] TO [DYNGRP]
GO
