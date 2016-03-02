SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[aagDelMstrRecord]  @iMstrID int = NULL,  @iLinkType smallint = NULL,  @iDimID int = NULL,   @oStatus smallint = NULL out as  declare @transaction tinyint,  @retCode int,  @dbName varchar(32),  @companyID smallint,  @companyStatus smallint  select  @transaction = 0,  @retCode = 0,  @dbName = '',  @companyID = 0,  @companyStatus = 0,  @oStatus = 0  if (@iMstrID is NULL) or (@iLinkType is NULL) begin select @oStatus = 1 return end  select @dbName = db_name() exec @retCode = DYNAMICS.dbo.aagGetCompanyStatus @dbName, @companyID out, @companyStatus out, @oStatus out if ((@retCode <> 0) or (@oStatus <> 0)) return @retCode  if (@@trancount = 0) begin select @transaction = 1 begin transaction end  delete AAG00602 from   AAG00602 join AAG00600 on AAG00602.aaTreeID = AAG00600.aaTreeID where  AAG00602.aaMstrID = @iMstrID  and  AAG00600.aaLinkType = @iLinkType  and  AAG00600.aaDimID    = @iDimID  if (@iLinkType = 1) begin  delete from AAG00200 where ACTINDX = @iMstrID   if (@@rowcount <> 1) begin if (@transaction = 1) rollback transaction select @oStatus = 1 return end  Exec aagUpdateUnpostedDistsForAcct @iMstrID, @oStatus out  Update AAG20001 set aaBrowseType = 0 where ACTINDX = @iMstrID and POSTED = 0 end  if (@iLinkType = 9) begin  print 'A' end  if (@transaction = 1) commit transaction  return 0     
GO
GRANT EXECUTE ON  [dbo].[aagDelMstrRecord] TO [DYNGRP]
GO
