SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create      procedure [dbo].[aagDelSubLedgerHdr]  @iHdrID int,  @oStatus smallint = null out,  @iDeleteHdr smallint = 1  as declare @transaction tinyint,  @retCode int,  @dbName varchar(32),  @companyID smallint,  @companyStatus smallint,  @HdrID int  select  @transaction = 0,  @retCode = 0,  @dbName = '',  @companyID = 0,  @companyStatus = 0,  @HdrID = 0,  @oStatus = 0  if (@iHdrID is null) begin select @oStatus = 35000 return end  if (@iHdrID = 0) begin select @oStatus = 35001 return end  select @dbName = db_name() exec @retCode = DYNAMICS.dbo.aagGetCompanyStatus @dbName, @companyID out, @companyStatus out, @oStatus out if ((@retCode <> 0) or (@oStatus <> 0)) return @retCode  select @HdrID = aaSubLedgerHdrID from AAG20000  where aaSubLedgerHdrID = @iHdrID  if (@@rowcount <> 1) return 0  if (@@trancount = 0) begin select @transaction = 1 begin transaction end   delete SY03900  from   SY03900 join AAG20002 on SY03900.NOTEINDX = AAG20002.NOTEINDX  where  aaSubLedgerHdrID = @HdrID  delete from AAG2000E where aaSubLedgerHdrID = @HdrID  delete from AAG20003 where aaSubLedgerHdrID = @HdrID delete from AAG20002 where aaSubLedgerHdrID = @HdrID delete from AAG20001 where aaSubLedgerHdrID = @HdrID if @iDeleteHdr = 1  delete from AAG20000 where aaSubLedgerHdrID = @HdrID if (@transaction = 1) commit transaction return 0    
GO
GRANT EXECUTE ON  [dbo].[aagDelSubLedgerHdr] TO [DYNGRP]
GO
