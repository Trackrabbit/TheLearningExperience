SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create   proc [dbo].[aagDeleteUnpostedCodesForNADim]  @iAcctClassID int = 0,  @oStatus smallint = 0 out as  if @iAcctClassID = 0  return  delete from AAG10003  where (aaGLWorkHdrID in ( select aaGLWorkHdrID from AAG10001 where ACTINDX in ( select ACTINDX from AAG00200 where aaAcctClassID = @iAcctClassID)) and aaGLWorkDistID in ( select aaGLWorkDistID from AAG10001 where ACTINDX in ( select ACTINDX from AAG00200 where aaAcctClassID = @iAcctClassID)) and aaTrxDimID not in ( select aaTrxDimID from AAG00202 where aaAcctClassID = @iAcctClassID))  delete from AAG20003  where (aaSubLedgerHdrID in ( select aaSubLedgerHdrID from AAG20001 where ACTINDX in ( select ACTINDX from AAG00200 where aaAcctClassID = @iAcctClassID) and POSTED = 0) and aaSubLedgerDistID in ( select aaSubLedgerDistID from AAG20001 where ACTINDX in ( select ACTINDX from AAG00200 where aaAcctClassID = @iAcctClassID) and POSTED = 0) and aaTrxDimID not in ( select aaTrxDimID from AAG00202 where aaAcctClassID = @iAcctClassID))    
GO
GRANT EXECUTE ON  [dbo].[aagDeleteUnpostedCodesForNADim] TO [DYNGRP]
GO
