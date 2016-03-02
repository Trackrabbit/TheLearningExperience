SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE Procedure [dbo].[SVC_RMA_Delete_ProcessLine] ( @RecType smallint,  @RMANumber char(15),  @Line Numeric(19,5), @SerialSeq int,  @Out_Status smallint output, @CMPNTSEQ int = 0 )  as declare @Sequence int  if @RecType = 2 return  select @Out_Status = 0  if @SerialSeq > 0   Begin  if exists(select * from SVC05210 where RETDOCID = @RMANumber and Return_Record_Type = @RecType and LNSEQNBR = @Line   and CMPNTSEQ = @CMPNTSEQ and SLTSQNUM = @SerialSeq and SVC_Document_Number > '' )  select @Out_Status = 99  else  delete from SVC05210 where RETDOCID = @RMANumber and Return_Record_Type = @RecType and LNSEQNBR = @Line   and CMPNTSEQ = @CMPNTSEQ and SLTSQNUM = @SerialSeq   End else  Begin  if exists(select * from SVC05210 where RETDOCID = @RMANumber and Return_Record_Type = @RecType   and LNSEQNBR = @Line and CMPNTSEQ = @CMPNTSEQ and SVC_Document_Number > '' )  select @Out_Status = 99  else  delete from SVC05210 where RETDOCID = @RMANumber and Return_Record_Type = @RecType and LNSEQNBR = @Line    End   return    
GO
GRANT EXECUTE ON  [dbo].[SVC_RMA_Delete_ProcessLine] TO [DYNGRP]
GO
