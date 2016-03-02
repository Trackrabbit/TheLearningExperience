SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE    procedure  [dbo].[aagDeleteCodesFromSubLedger]   @iHdrID int,  @oStatus int = null out as  declare @transaction tinyint,  @retCode int,  @dbName varchar(32),  @companyID smallint,  @companyStatus smallint,  @HdrID int,  @DistID int,  @AssignID int,  @Series smallint  select  @transaction = 0,  @retCode = 0,  @dbName = '',  @companyID = 0,  @companyStatus = 0,  @HdrID = 0,  @DistID = 0,  @AssignID = 0,  @oStatus = 0  if (@iHdrID is null)   begin select @oStatus = 35000 return end  if (@iHdrID = 0)   begin select @oStatus = 35001 return end  select @dbName = db_name() exec @retCode = DYNAMICS.dbo.aagGetCompanyStatus @dbName, @companyID out, @companyStatus out, @oStatus out  if ((@retCode <> 0) or (@oStatus <> 0)) return @retCode  if (@@trancount = 0) begin select @transaction = 1 begin transaction end  select @Series = SERIES from AAG20000 where aaSubLedgerHdrID = @iHdrID  delete from AAG20003 where aaSubLedgerHdrID = @iHdrID   update AAG20002 set DistRef = '' where aaSubLedgerHdrID = @iHdrID  if @Series = 5   update AAG20001 set TRXQTY = 0 where aaSubLedgerHdrID = @iHdrID  update AAG20001 set aaWinWasOpen = 0 where aaSubLedgerHdrID = @iHdrID   update AAG20001 set aaBrowseType = 3 where aaSubLedgerHdrID = @iHdrID and aaBrowseType <> 0  if (@transaction = 1) commit transaction  return 0    
GO
GRANT EXECUTE ON  [dbo].[aagDeleteCodesFromSubLedger] TO [DYNGRP]
GO
