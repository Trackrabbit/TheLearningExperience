SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE Procedure [dbo].[SVC_Check_Call_Line_PO] (  @Delete tinyint,  @USERID char(15),  @SRVRECTYPE smallint,  @CALLNBR char(11),  @LineType char(3),  @Lineseq integer,  @Exist smallint OUTPUT,  @OtherUser char(15) OUTPUT ) As  select @Exist = 0,@OtherUser = '' if @Delete = 1  BEGIN  if @LineType = ''  update SVC00710 set MKDTOPST = 0, USERID = '' ,TRNSFQTY = 0  where SRCDOCTYP = 1 and SRCDOCNUM = @CALLNBR and LINITMTYP = '' and USERID = @USERID  else   begin  delete SVC00710 where SRCDOCTYP = 1 and SRCDOCNUM = @CALLNBR and LINITMTYP = @LineType and USERID = @USERID  update SVC00203 set TRNFLAG = 0 where SRVRECTYPE = @SRVRECTYPE and CALLNBR = @CALLNBR and LINITMTYP = @LineType   end  return END  if @Lineseq = 0   begin  select @Exist = count(*) from SVC00710 where SRCDOCTYP = 1   and SRCDOCNUM = @CALLNBR and (LINITMTYP = @LineType or LINITMTYP = 'N')  and MKDTOPST = 1 and USERID = @USERID  return  end select @OtherUser = USERID from SVC00710 where SRCDOCTYP = 1  and SRCDOCNUM = @CALLNBR and (LINITMTYP = @LineType or LINITMTYP = 'N') and LNITMSEQ = @Lineseq   and (TRNFLAG = 1 or MKDTOPST = 1) and USERID <> @USERID select @OtherUser = isnull(@OtherUser,@USERID) if exists(select * from SVC00710 where SRCDOCTYP = 1  and SRCDOCNUM = @CALLNBR and (LINITMTYP = @LineType or LINITMTYP = 'N') and LNITMSEQ = @Lineseq   and MKDTOPST = 1 and USERID = @USERID) select @Exist = 1 return     
GO
GRANT EXECUTE ON  [dbo].[SVC_Check_Call_Line_PO] TO [DYNGRP]
GO
