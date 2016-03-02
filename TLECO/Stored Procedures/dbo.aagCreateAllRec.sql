SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[aagCreateAllRec]  @iTreeID    int  = null,  @iLinkType  smallint = null,  @iDimID     int = null,  @iTreeDescr char(50) = null,  @iTreeMain  tinyint = null,  @iTreeInclAllRec tinyint = null,  @oStatus smallint = null out as declare @transaction tinyint,  @retCode int,  @dbName char(32),  @companyID smallint,  @companyStatus smallint,  @MstrID int  if ((@iTreeID is null) or (@iLinkType is null) or (@iDimID is null) or (@iTreeDescr is null) or (@iTreeMain is null) or (@iTreeInclAllRec is null))  begin select @oStatus = 1 return end  select  @transaction = 0,  @retCode = 0,  @dbName = '',  @companyID = 0,  @companyStatus = 0,  @MstrID = 0,  @oStatus = 0  select @dbName = db_name() exec @retCode = DYNAMICS.dbo.aagGetCompanyStatus @dbName, @companyID out, @companyStatus out, @oStatus out if ((@retCode <> 0) or (@oStatus <> 0)) return @retCode  if (@@trancount = 0) begin select @transaction = 1 begin transaction end  begin  declare TreeCursor cursor fast_forward for  select aaMstrID from AAG00800V  where  aaLinkType = @iLinkType and aaDimID = @iDimID  open TreeCursor  fetch next from TreeCursor into @MstrID  while @@fetch_status = 0  begin  if not exists(select top 1 aaTreeID from AAG00602 where aaTreeID = @iTreeID and aaMstrID = @MstrID)  insert AAG00602 values (@iTreeID, 1, @MstrID)  fetch next from TreeCursor into @MstrID  end  deallocate TreeCursor end  if (@transaction = 1) commit transaction return 0    
GO
GRANT EXECUTE ON  [dbo].[aagCreateAllRec] TO [DYNGRP]
GO
