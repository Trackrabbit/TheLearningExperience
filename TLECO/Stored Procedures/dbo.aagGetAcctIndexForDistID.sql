SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[aagGetAcctIndexForDistID]  @iHdrID int,  @iDistID int,  @oAcctIndex int = null out,  @oSeqNum int = null out,  @oOffsetAcct tinyint = null out,  @oStatus smallint = null out as  declare @transaction tinyint,  @retCode int,  @dbName varchar(32),  @companyID smallint,  @companyStatus smallint  select  @transaction = 0,  @retCode = 0,  @dbName = '',  @companyID = 0,  @companyStatus = 0  if (@iHdrID is null) or (@iDistID is null) begin select @oStatus = 35000 return end  if (@iHdrID = 0) or (@iDistID = 0) begin select @oStatus = 35001 return end  select @dbName = db_name() exec @retCode = DYNAMICS.dbo.aagGetCompanyStatus @dbName, @companyID out, @companyStatus out, @oStatus out if ((@retCode <> 0) or (@oStatus <> 0)) return @retCode  select @oAcctIndex = ACTINDX, @oSeqNum = SEQNUMBR, @oOffsetAcct = aaOffsetAcct from AAG20001   where aaSubLedgerHdrID = @iHdrID and @iDistID= aaSubLedgerDistID if (@@rowcount = 1)  return 0    
GO
GRANT EXECUTE ON  [dbo].[aagGetAcctIndexForDistID] TO [DYNGRP]
GO
