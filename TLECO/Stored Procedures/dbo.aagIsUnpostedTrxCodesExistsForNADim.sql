SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE    proc [dbo].[aagIsUnpostedTrxCodesExistsForNADim]  @iAcctClassID int = 0,  @cAcctClassDimTab char(30),   @cAccClassTrxExistsTab char(30) as  begin  if @iAcctClassID = 0  return  exec('if EXISTS (select aaTrxDimID from AAG10003   where (aaGLWorkHdrID in (  select aaGLWorkHdrID from AAG10001 where ACTINDX in (  select ACTINDX from AAG00200 where aaAcctClassID = ' + @iAcctClassID + '))  and  aaGLWorkDistID in (  select aaGLWorkDistID from AAG10001 where ACTINDX in (  select ACTINDX from AAG00200 where aaAcctClassID = ' + @iAcctClassID + '))  and  aaTrxDimID not in (  select aaTrxDimID from ' + @cAccClassTrxExistsTab + ' where aaAcctClassID = ' + @iAcctClassID + ')))  begin  delete from ' + @cAccClassTrxExistsTab +  'insert into ' +@cAccClassTrxExistsTab + '(aaAcctClassID, aaTrxExists)  values(1,1)   return  end')  end  if EXISTS (select aaTrxDimID from AAG20003   where (aaSubLedgerHdrID in (  select aaSubLedgerHdrID from AAG20001 where ACTINDX in (  select ACTINDX from AAG00200 where aaAcctClassID = @iAcctClassID) and POSTED = 0)  and  aaSubLedgerDistID in (  select aaSubLedgerDistID from AAG20001 where ACTINDX in (  select ACTINDX from AAG00200 where aaAcctClassID = @iAcctClassID) and POSTED = 0)  and  aaTrxDimID not in (  select aaTrxDimID from AAG00202 where aaAcctClassID = @iAcctClassID)))  begin  return  end    
GO
GRANT EXECUTE ON  [dbo].[aagIsUnpostedTrxCodesExistsForNADim] TO [DYNGRP]
GO
