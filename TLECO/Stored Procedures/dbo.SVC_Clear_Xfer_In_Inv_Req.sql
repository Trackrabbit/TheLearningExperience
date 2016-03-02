SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Clear_Xfer_In_Inv_Req]  @UserID char(15) AS declare   @SRVRECTYPE smallint,  @CALLNBR char(11),  @Lineseq integer,  @Error tinyint ,  @OtherUser char(15)   declare Inv_Req_Xfer cursor for select SRCDOCNUM, LNITMSEQ  from SVC00710   where SRCDOCTYP = 1 and USERID= @UserID and TRNFLAG = 1 open Inv_Req_Xfer Fetch Next from Inv_Req_Xfer into @CALLNBR, @Lineseq  while @@FETCH_STATUS = 0  BEGIN  exec SVC_Check_Call_Line_Access 1, @UserID, 2,@CALLNBR, 'P', @Lineseq, @Error output, @OtherUser output  Fetch Next from Inv_Req_Xfer into @CALLNBR, @Lineseq  END deallocate Inv_Req_Xfer update SVC00710 with (rowlock) set TRNFLAG = 0, USERID = ''  where USERID= @UserID and TRNFLAG = 1  return(0)    
GO
GRANT EXECUTE ON  [dbo].[SVC_Clear_Xfer_In_Inv_Req] TO [DYNGRP]
GO
