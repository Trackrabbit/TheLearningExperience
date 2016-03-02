SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Bin_UpdateRMABin]  (@RecType smallint,  @RMANumber char(15),  @Line numeric(19,5),  @ToLocation char(10),  @ToBin char(15) ,  @CMPNTSEQ int = 0) As  if exists(select * from SVC05212 where   RETDOCID =@RMANumber and Return_Record_Type = @RecType and LNSEQNBR =@Line and CMPNTSEQ = @CMPNTSEQ and POSTED = 0)  update SVC05212 with (rowlock) set LOCNCODE = @ToLocation , BIN = @ToBin where   RETDOCID =@RMANumber and Return_Record_Type = @RecType and LNSEQNBR =@Line and CMPNTSEQ = @CMPNTSEQ and POSTED = 0 if exists(select * from SVC05255 where   RETDOCID =@RMANumber and Return_Record_Type = @RecType and LNSEQNBR =@Line and CMPNTSEQ = @CMPNTSEQ and POSTED = 0)  update SVC05255 with (rowlock) set BIN = @ToBin where   RETDOCID =@RMANumber and Return_Record_Type = @RecType and LNSEQNBR =@Line and CMPNTSEQ = @CMPNTSEQ and POSTED = 0  return (0)    
GO
GRANT EXECUTE ON  [dbo].[SVC_Bin_UpdateRMABin] TO [DYNGRP]
GO
