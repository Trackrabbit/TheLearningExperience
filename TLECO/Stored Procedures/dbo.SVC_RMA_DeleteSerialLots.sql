SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE Procedure [dbo].[SVC_RMA_DeleteSerialLots] ( @RecType smallint,  @RMANumber char(15), @Line numeric(19,5), @CMPNTSEQ int = 0  )  as declare @Original tinyint declare @EquipID int declare @SerialSeq int  if exists(select * from SVC05255 where RETDOCID = @RMANumber and Return_Record_Type = @RecType and CMPNTSEQ = @CMPNTSEQ and LNSEQNBR = @Line)  begin  declare RMA_Process_Line cursor for select SVC_Original_Serial,Return_Equipment_ID, SLTSQNUM  from SVC05255 where RETDOCID = @RMANumber and Return_Record_Type = @RecType and LNSEQNBR = @Line and CMPNTSEQ = @CMPNTSEQ  open RMA_Process_Line   fetch next from RMA_Process_Line into @Original, @EquipID, @SerialSeq  while @@FETCH_STATUS = 0  Begin  if @Original = 0   exec SVC_Delete_Serial_MSTR  @EquipID  fetch next from RMA_Process_Line into @Original, @EquipID, @SerialSeq  end  deallocate RMA_Process_Line    end  if @Line = 0  delete from SVC05255 where RETDOCID = @RMANumber and Return_Record_Type = @RecType else  delete from SVC05255 where RETDOCID = @RMANumber and Return_Record_Type = @RecType and LNSEQNBR = @Line and CMPNTSEQ = @CMPNTSEQ  return    
GO
GRANT EXECUTE ON  [dbo].[SVC_RMA_DeleteSerialLots] TO [DYNGRP]
GO
