SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Delete_Inv_Requirement]  ( @SourceType smallint,  @CallNumber char(11),  @LineSeq int,  @LineType char(3),  @User_ID char(15)  ) As declare @CallStatus char (3)  select @CallStatus = SRVSTAT from SVC00998 if @LineSeq = 0   Begin  delete SVC00710 where SRCDOCTYP = @SourceType and SRCDOCNUM = @CallNumber  and LINITMTYP = ''  update SVC00203 set SRVSTAT = @CallStatus where SRVRECTYPE = 2 and CALLNBR = @CallNumber  and LINITMTYP = 'P'  End else  delete SVC00710 where SRCDOCTYP = @SourceType and SRCDOCNUM = @CallNumber  and LINITMTYP = @LineType and LNITMSEQ = @LineSeq and USERID = @User_ID return    
GO
GRANT EXECUTE ON  [dbo].[SVC_Delete_Inv_Requirement] TO [DYNGRP]
GO
