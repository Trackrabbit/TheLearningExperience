SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[SVC_XFR_RCV_Pick_Serial](@ORDDOCID char(15),  @TRANSLINESEQ integer,  @Unpicked_Status smallint,  @Picked_Status smallint,  @Final_QTY_Pick_Needed integer) as declare @QTY_Prev_Picked integer declare @QTY_Pickable integer declare @QTY_Needed integer select @QTY_Prev_Picked = count(*)   from SVC00702  where ORDDOCID = @ORDDOCID and  TRANSLINESEQ = @TRANSLINESEQ and  STATUS = @Picked_Status select @QTY_Pickable = count(*)   from SVC00702  where ORDDOCID = @ORDDOCID and  TRANSLINESEQ = @TRANSLINESEQ and  STATUS = @Unpicked_Status select @QTY_Needed = @Final_QTY_Pick_Needed - @QTY_Prev_Picked if @QTY_Prev_Picked = @Final_QTY_Pick_Needed   return(0) if @QTY_Prev_Picked > @Final_QTY_Pick_Needed or  @QTY_Pickable < @QTY_Needed   return(0) set rowcount @QTY_Needed  update SVC00702   set STATUS = @Picked_Status   where ORDDOCID = @ORDDOCID and  TRANSLINESEQ = @TRANSLINESEQ and  STATUS = @Unpicked_Status set rowcount 0    
GO
GRANT EXECUTE ON  [dbo].[SVC_XFR_RCV_Pick_Serial] TO [DYNGRP]
GO
