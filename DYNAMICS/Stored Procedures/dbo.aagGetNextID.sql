SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE procedure [dbo].[aagGetNextID]  @iTableID   int = NULL,  @iCompanyID smallint = NULL,  @oRowID int = NULL out,  @oStatus smallint = NULL out as declare @transaction tinyint,  @incrementType int  select  @transaction = 0,  @oRowID  = 0,  @oStatus = 0  if ((@iTableID is NULL) or (@iCompanyID is NULL))  begin   select @oStatus = 1   return  end  if (@@trancount = 0) begin   select @transaction = 1   begin transaction  end if @iTableID < 0 begin  set @incrementType = -1 end else begin  set @incrementType = 1 end if exists (select * from AAG00102 where aaTableID = @iTableID and CMPANYID = @iCompanyID) begin  update AAG00102  set    @oRowID = aaRowID + (1 * @incrementType), aaRowID = aaRowID + (1 * @incrementType)  where  aaTableID = @iTableID and CMPANYID = @iCompanyID end else begin  select @oRowID = (1 * @incrementType)  insert AAG00102 values(@iTableID, @iCompanyID, @oRowID) end if (@@rowcount <> 1)  begin   if (@transaction = 1)   begin  rollback transaction   end  select @oStatus = 1   return  end if (@transaction = 1)  begin  commit transaction end return 0    
GO
