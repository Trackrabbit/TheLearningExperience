SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[aagDelAccountingClass]  @iAcctClassID int = NULL,   @oStatus smallint = NULL out as  declare @transaction tinyint,  @retCode int,  @dbName varchar(32),  @companyID smallint,  @companyStatus smallint  select  @transaction = 0,  @retCode = 0,  @dbName = '',  @companyID = 0,  @companyStatus = 0,   @oStatus = 0  if (@iAcctClassID is NULL) begin select @oStatus = 1 return end  select @dbName = db_name() exec @retCode = DYNAMICS.dbo.aagGetCompanyStatus @dbName, @companyID out, @companyStatus out, @oStatus out if ((@retCode <> 0) or (@oStatus <> 0)) return @retCode  if (@@trancount = 0) begin select @transaction = 1 begin transaction end  update AAG00200 set    aaAcctClassID = 0  where  aaAcctClassID = @iAcctClassID  delete from AAG00202 where aaAcctClassID = @iAcctClassID  if (@transaction = 1) commit transaction  return 0     
GO
GRANT EXECUTE ON  [dbo].[aagDelAccountingClass] TO [DYNGRP]
GO
