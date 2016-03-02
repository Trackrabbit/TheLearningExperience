SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[aagDelSubLedgerDist]  @iHdrID int,  @iDistID int,   @oStatus smallint = null out,  @iSEQnmbr int=0  as  declare @transaction tinyint,  @retCode int,  @dbName varchar(32),  @companyID smallint,  @companyStatus smallint,  @HdrID int,  @DistID int  select  @transaction = 0,  @retCode = 0,  @dbName = '',  @companyID = 0,  @companyStatus = 0,  @HdrID = 0,  @DistID = 0,  @oStatus = 0  if (@iHdrID is null) or (@iDistID is null) begin select @oStatus = 35000 return end  if (@iHdrID = 0) or (@iDistID = 0) begin select @oStatus = 1 return end  select @dbName = db_name() exec @retCode = DYNAMICS.dbo.aagGetCompanyStatus @dbName, @companyID out, @companyStatus out, @oStatus out if ((@retCode <> 0) or (@oStatus <> 0)) return @retCode  if @iSEQnmbr<>0 Begin  if (@@trancount = 0) begin select @transaction = 1 begin transaction end   delete SY03900  from   SY03900 join AAG20002 on SY03900.NOTEINDX = AAG20002.NOTEINDX  where  aaSubLedgerHdrID = @iHdrID and aaSubLedgerDistID in (select  aaSubLedgerDistID from AAG20001  where aaSubLedgerHdrID = @iHdrID and SEQNUMBR = @iSEQnmbr)  delete from AAG20003 where aaSubLedgerHdrID = @iHdrID and aaSubLedgerDistID in (select  aaSubLedgerDistID from AAG20001  where aaSubLedgerHdrID = @iHdrID and SEQNUMBR = @iSEQnmbr) delete from AAG20002 where aaSubLedgerHdrID = @iHdrID and aaSubLedgerDistID in (select  aaSubLedgerDistID from AAG20001  where aaSubLedgerHdrID = @iHdrID and SEQNUMBR = @iSEQnmbr) delete from AAG20001 where aaSubLedgerHdrID = @iHdrID and aaSubLedgerDistID in (select  aaSubLedgerDistID from AAG20001  where aaSubLedgerHdrID = @iHdrID and SEQNUMBR = @iSEQnmbr) if (@transaction = 1) commit transaction End  select @HdrID = aaSubLedgerHdrID, @DistID = aaSubLedgerDistID from AAG20001  where aaSubLedgerHdrID = @iHdrID and aaSubLedgerDistID = @iDistID  if (@@rowcount = 0) begin return 0 end  if (@@trancount = 0) begin select @transaction = 1 begin transaction end   delete SY03900  from   SY03900 join AAG20002 on SY03900.NOTEINDX = AAG20002.NOTEINDX  where  aaSubLedgerHdrID = @HdrID and aaSubLedgerDistID = @DistID  delete from AAG20003 where aaSubLedgerHdrID = @HdrID and aaSubLedgerDistID = @DistID delete from AAG20002 where aaSubLedgerHdrID = @HdrID and aaSubLedgerDistID = @DistID delete from AAG20001 where aaSubLedgerHdrID = @HdrID and aaSubLedgerDistID = @DistID  if (@transaction = 1) commit transaction  return 0    
GO
GRANT EXECUTE ON  [dbo].[aagDelSubLedgerDist] TO [DYNGRP]
GO