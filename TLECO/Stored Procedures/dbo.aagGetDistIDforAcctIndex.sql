SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create   procedure [dbo].[aagGetDistIDforAcctIndex]  @iAcctIndex  int,  @iSeqNum   int,  @iOffsetAcct tinyint = 0,  @iHdrID   int,  @oDistID   int = null out,  @oStatus   smallint = null out,  @iPYRLRTYP smallint = 0,  @iTRXNUMBER int = 0  as  declare @transaction tinyint,  @retCode int,  @dbName varchar(32),  @companyID smallint,  @companyStatus smallint,  @DistID int,  @SeqNum int select  @transaction = 0,  @retCode = 0,  @dbName = '',  @companyID = 0,  @companyStatus = 0,  @DistID = 0  if (@iSeqNum is null) or (@iHdrID is null) begin select @oStatus = 35000 return end  if (@iSeqNum = 0) or (@iHdrID = 0) begin select @oStatus = 35001 return end  select @dbName = db_name() exec @retCode = DYNAMICS.dbo.aagGetCompanyStatus @dbName, @companyID out, @companyStatus out, @oStatus out if ((@retCode <> 0) or (@oStatus <> 0)) return @retCode  if @iAcctIndex <> 0   select @oDistID= min(aaSubLedgerDistID) from AAG20001 where aaSubLedgerHdrID = @iHdrID and ACTINDX = @iAcctIndex and SEQNUMBR = @iSeqNum and aaOffsetAcct = @iOffsetAcct and POSTED = 0 and PYRLRTYP = @iPYRLRTYP and TRXNUMBER = @iTRXNUMBER else  select @oDistID= min(aaSubLedgerDistID) from AAG20001 where aaSubLedgerHdrID = @iHdrID and SEQNUMBR = @iSeqNum and aaOffsetAcct = @iOffsetAcct and POSTED = 0 and PYRLRTYP = @iPYRLRTYP and TRXNUMBER = @iTRXNUMBER  if (@@rowcount = 1)  return 0    
GO
GRANT EXECUTE ON  [dbo].[aagGetDistIDforAcctIndex] TO [DYNGRP]
GO
