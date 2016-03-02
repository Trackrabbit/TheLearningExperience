SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Calc_WO_Status](@WO_Number char(11)) As declare @Entered char(3) declare @WIP char(3) declare @Backordered char(3) declare @Completed char(3) declare @OldStatus char(3), @WOStatus char(3) declare @HDRCompDate datetime declare @HDRCompTime datetime declare @RMANumber char(15), @Line numeric(19,5), @ProcessLine numeric(19,5) declare @Disposition smallint  select @Entered = WOENTSTA,  @WIP = WOWIPSTAT,  @Backordered = WOBOSTAT,  @Completed = WOCOMPSTAT from SVC00998 select @OldStatus = WOSTAT, @HDRCompDate = COMPDTE,  @HDRCompTime = COMPTME , @RMANumber = RETDOCID,   @Line = LNSEQNBR, @ProcessLine = SVC_Process_SEQ_Number from SVC06100 where WORKORDNUM = @WO_Number if @OldStatus <> @Entered and  @OldStatus <> @WIP and  @OldStatus <> @Backordered and  @OldStatus <> @Completed  BEGIN  return(0)  END if exists (select * from SVC06101 where WOSTAT = @Backordered and WORKORDNUM = @WO_Number and LINITMTYP = 'P')  update SVC06100 set WOSTAT = @Backordered where WORKORDNUM = @WO_Number else if (@HDRCompDate > '01/01/1900 00:00:00') and (@HDRCompTime > '01/01/1900 00:00:00')   update SVC06100 set WOSTAT = @Completed where WORKORDNUM = @WO_Number else if exists (select * from SVC06101 where LINITMTYP = 'L' and WORKORDNUM = @WO_Number)   update SVC06100 set WOSTAT = @WIP where WORKORDNUM = @WO_Number else  begin  select @WOStatus = isnull(WOSTAT, '') from SVC06101 where WORKORDNUM = @WO_Number and (WOSTAT <> @Entered and WOSTAT <> @Backordered)  if (@WOStatus is null or @WOStatus = '')  update SVC06100 set WOSTAT = @Entered where WORKORDNUM = @WO_Number  else  update SVC06100 set WOSTAT = @WOStatus where WORKORDNUM = @WO_Number end  select @WOStatus = isnull(WOSTAT, '') from SVC06100 where WORKORDNUM = @WO_Number  if @RMANumber > ''  update SVC05210 set SVC_Process_Status = @WOStatus  where RETDOCID = @RMANumber and LNSEQNBR = @Line and SVC_Process_SEQ_Number = @ProcessLine  return (0)    
GO
GRANT EXECUTE ON  [dbo].[SVC_Calc_WO_Status] TO [DYNGRP]
GO
