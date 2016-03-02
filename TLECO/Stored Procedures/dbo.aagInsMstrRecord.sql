SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[aagInsMstrRecord]  @iMstrID int = null,  @iLinkType smallint = null,  @iDimID int = null,  @oStatus smallint = null out as declare @transaction tinyint,  @retCode int,  @dbName varchar(32),  @companyID smallint,  @companyStatus smallint,  @treeID int  select  @transaction = 0,  @retCode = 0,  @dbName = '',  @companyID = '',  @companyStatus = 0,  @oStatus = 0  if (@iMstrID is null) or (@iLinkType is null) or (@iDimID is null) begin select @oStatus = 1 return end  select @dbName = db_name() exec @retCode = DYNAMICS.dbo.aagGetCompanyStatus @dbName, @companyID out, @companyStatus out, @oStatus out if ((@retCode <> 0) or (@oStatus <> 0)) return @retCode  if @iMstrID <> 0  begin  if (@@trancount = 0) begin select @transaction = 1 begin transaction end   delete from AAG00602 where aaTreeID in  (select aaTreeID from AAG00600 where  aaLinkType = @iLinkType  and  aaDimID = @iDimID  and  (aaTreeMain = 1 or aaTreeInclAllRec = 1))  and  aaNodeID = 1  and  aaMstrID = @iMstrID    insert AAG00602(aaTreeID, aaNodeID, aaMstrID)  select aaTreeID, 1, @iMstrID  from   AAG00600  where  aaLinkType = @iLinkType  and  aaDimID = @iDimID  and  (aaTreeMain = 1 or aaTreeInclAllRec = 1)    if @iLinkType = 1   begin  if @iMstrID <> 0   begin  delete AAG00200 where ACTINDX = @iMstrID and aaAcctClassID = 0  insert AAG00200 values(@iMstrID, 0,convert(char(12), getdate(), 102) ,convert(char(12), getdate(), 108))  if (@@rowcount <> 1) begin if (@transaction = 1) rollback transaction select @oStatus = 1 return end  end   end   if (@transaction = 1) commit transaction end  return 0    
GO
GRANT EXECUTE ON  [dbo].[aagInsMstrRecord] TO [DYNGRP]
GO
