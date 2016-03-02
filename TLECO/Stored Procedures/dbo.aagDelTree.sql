SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[aagDelTree]  @iTreeID int = null,  @oStatus smallint = null out as declare @transaction tinyint,  @retCode int,  @dbName varchar(32),  @companyID smallint,  @companyStatus smallint  select  @transaction = 0,  @retCode = 0,  @dbName = '',  @companyID = 0,  @companyStatus = 0,  @oStatus = 0  if (@iTreeID is null) begin select @oStatus = 37000 return end  if (@iTreeID = 0)  begin select @oStatus = 37001 return end  select @dbName = db_name() exec @retCode = DYNAMICS.dbo.aagGetCompanyStatus @dbName, @companyID out, @companyStatus out, @oStatus out if ((@retCode <> 0) or (@oStatus <> 0)) return @retCode  if not exists(select aaTreeID from AAG00600 where aaTreeID = @iTreeID) return 0  if (@@trancount = 0) begin select @transaction = 1 begin transaction end  delete from AAG00602 where aaTreeID = @iTreeID  delete SY03900 from SY03900 join AAG00601 on SY03900.NOTEINDX = AAG00601.NOTEINDX where aaTreeID = @iTreeID  delete from AAG00601 where aaTreeID = @iTreeID  delete SY03900 from SY03900 join AAG00600 on SY03900.NOTEINDX = AAG00600.NOTEINDX where aaTreeID = @iTreeID  delete from AAG00600 where aaTreeID = @iTreeID if (@transaction = 1) commit transaction return 0    
GO
GRANT EXECUTE ON  [dbo].[aagDelTree] TO [DYNGRP]
GO
