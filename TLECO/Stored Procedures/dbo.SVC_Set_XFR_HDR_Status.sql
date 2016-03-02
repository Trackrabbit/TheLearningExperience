SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[SVC_Set_XFR_HDR_Status](@TransferNumber char(15)) as  declare @MinLineStatus tinyint declare @MaxLineStatus tinyint declare @HeaderStatus           tinyint declare @OPEN                   tinyint declare @PICKED                 tinyint declare @PACKED                 tinyint declare @PARTIAL_SHIP           tinyint declare @SHIPPED                tinyint declare @PARTIAL_RCV            tinyint declare @RECEIVED               tinyint select @OPEN = 0,  @PICKED = 1,  @PACKED = 2,  @PARTIAL_SHIP = 3,  @SHIPPED = 4,  @PARTIAL_RCV = 5,  @RECEIVED = 6 select @MinLineStatus = min(STATUS) from SVC00701 where ORDDOCID = @TransferNumber select @MaxLineStatus = max(STATUS) from SVC00701 where ORDDOCID = @TransferNumber select @MinLineStatus = isnull(@MinLineStatus,@OPEN) select @MaxLineStatus = isnull(@MaxLineStatus,@OPEN)select @HeaderStatus = @OPEN if @MinLineStatus = @MaxLineStatus   BEGIN  select @HeaderStatus = @MinLineStatus  goto Found  END if @MinLineStatus <= @PICKED and @MaxLineStatus <= @PACKED  BEGIN  select @HeaderStatus = @PICKED  goto Found  END if @MinLineStatus <= @PARTIAL_SHIP and @MaxLineStatus >= @PARTIAL_SHIP  BEGIN  select @HeaderStatus = @PARTIAL_SHIP  goto Found  END if @MinLineStatus >= @SHIPPED   BEGIN  select @HeaderStatus = @PARTIAL_RCV  goto Found  END Found: update SVC00700 set STATUS = @HeaderStatus where ORDDOCID = @TransferNumber    
GO
GRANT EXECUTE ON  [dbo].[SVC_Set_XFR_HDR_Status] TO [DYNGRP]
GO
