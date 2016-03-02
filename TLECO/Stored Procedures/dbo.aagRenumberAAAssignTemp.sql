SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE       procedure [dbo].[aagRenumberAAAssignTemp]  @iAssignTemp  nvarchar(30) = null,  @iCodeTemp  nvarchar(30) = null,   @oStatus smallint = null out as  declare @transaction tinyint,  @retCode int,  @dbName varchar(32),  @companyID smallint,  @companyStatus smallint,  @AssignID int,  @ID int  select  @transaction = 0,  @retCode = 0,  @dbName = '',  @companyID = 0,  @companyStatus = 0,  @AssignID = 0,  @ID = 0  select @dbName = db_name() exec @retCode = DYNAMICS.dbo.aagGetCompanyStatus @dbName, @companyID out, @companyStatus out, @oStatus out if ((@retCode <> 0) or (@oStatus <> 0)) return @retCode  if (@@trancount = 0) begin select @transaction = 1 begin transaction end  exec ('declare AllAssignts cursor fast_forward FOR select aaSubLedgerAssignID from '  + @iAssignTemp + ' ORDER BY aaSubLedgerAssignID')   open AllAssignts    fetch next from AllAssignts into @AssignID   select @ID = 1   while @@fetch_status = 0  begin  if @AssignID <> @ID  begin  exec('update '+ @iAssignTemp + ' set aaSubLedgerAssignID = ' + @ID +   ' where aaSubLedgerAssignID = ' + @AssignID)  exec('update '+ @iCodeTemp + ' set aaSubLedgerAssignID = ' + @ID +   ' where aaSubLedgerAssignID = ' + @AssignID)  end   select @ID = @ID + 1   fetch next from AllAssignts into @AssignID  end   deallocate AllAssignts  if (@transaction = 1) commit transaction  return 0    
GO
GRANT EXECUTE ON  [dbo].[aagRenumberAAAssignTemp] TO [DYNGRP]
GO
