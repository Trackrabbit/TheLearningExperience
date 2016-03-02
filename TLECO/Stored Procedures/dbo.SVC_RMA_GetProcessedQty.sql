SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_RMA_GetProcessedQty]  @RMA char(15),  @LineNumber numeric(19,5),  @ProcessType smallint,  @QtyCount numeric(19,5) output,  @CMPNTSEQ int = 0 As  declare @ScrapQty numeric(19,5)  declare @Qty1 numeric(19,5), @Qty2 numeric(19,5)  if @ProcessType = 0   begin  select @QtyCount = SUM(SVC_Process_QTY) from SVC05210 where RETDOCID = @RMA and LNSEQNBR = @LineNumber and CMPNTSEQ = @CMPNTSEQ and SVC_Process_Type = 3  select @QtyCount = isnull(@QtyCount,0)  select @Qty1 = SUM(SVC_Process_QTY) from SVC05210 where RETDOCID = @RMA and LNSEQNBR = @LineNumber and CMPNTSEQ = @CMPNTSEQ and SVC_Process_Type > 3  select @Qty2 = SUM(SVC_Process_QTY) from SVC05210 where RETDOCID = @RMA and LNSEQNBR = @LineNumber and CMPNTSEQ = @CMPNTSEQ and SVC_Process_Type = 2  if @Qty1 > @QtyCount select @QtyCount = @Qty1  if @Qty2 > @QtyCount select @QtyCount = @Qty2  end else if @ProcessType = 9  begin  select @QtyCount = SUM(SVC_Process_QTY) from SVC05210 where RETDOCID = @RMA and CMPNTSEQ = @CMPNTSEQ and LNSEQNBR = @LineNumber and SVC_Process_Type = 3 and SVC_Document_Number > ''  select @QtyCount = isnull(@QtyCount,0)  end else  begin  select @ScrapQty = SUM(SVC_Process_QTY) from SVC05210 where RETDOCID = @RMA and  LNSEQNBR = @LineNumber and CMPNTSEQ = @CMPNTSEQ and SVC_Process_Type = 3 and SVC_Document_Number > ''  if @ProcessType > 3  select @QtyCount = SUM(SVC_Process_QTY) from SVC05210 where RETDOCID = @RMA and Return_Record_Type = 1 and  LNSEQNBR = @LineNumber and CMPNTSEQ = @CMPNTSEQ and SVC_Process_Type > 3 and SVC_Document_Number > ''  else  select @QtyCount = SUM(SVC_Process_QTY) from SVC05210 where RETDOCID = @RMA and Return_Record_Type = 1 and  LNSEQNBR = @LineNumber and CMPNTSEQ = @CMPNTSEQ and (SVC_Process_Type = @ProcessType AND SVC_Process_Type < 3)  and SVC_Document_Number > ''  select @QtyCount = isnull(@QtyCount,0)   if @ScrapQty <> 0 select @QtyCount = @ScrapQty + @QtyCount  end return (0)    
GO
GRANT EXECUTE ON  [dbo].[SVC_RMA_GetProcessedQty] TO [DYNGRP]
GO