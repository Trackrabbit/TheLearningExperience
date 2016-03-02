SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE Procedure [dbo].[SVC_RMA_Check_ProcessType] ( @RecType smallint,  @RMANumber char(15),  @Line Numeric(19,5), @SerialSeq int,  @ProcessType smallint, @WithDocument tinyint, @HasDocument tinyint output, @CMPNTSEQ int = 0 )  as  if @RecType = 2 return  select @HasDocument = 0 if @WithDocument = 0  begin  if exists(select * from SVC05210 where RETDOCID = @RMANumber and Return_Record_Type = @RecType and LNSEQNBR = @Line  and CMPNTSEQ = @CMPNTSEQ and SLTSQNUM = @SerialSeq and SVC_Process_QTY > 0 and SVC_Process_Type = @ProcessType)  select @HasDocument = 1  end else  begin  if exists(select * from SVC05210 where RETDOCID = @RMANumber and Return_Record_Type = @RecType and LNSEQNBR = @Line  and CMPNTSEQ = @CMPNTSEQ and SLTSQNUM = @SerialSeq and SVC_Document_Number > ' ' and SVC_Process_Type = @ProcessType)  select @HasDocument = 1  end return    
GO
GRANT EXECUTE ON  [dbo].[SVC_RMA_Check_ProcessType] TO [DYNGRP]
GO
