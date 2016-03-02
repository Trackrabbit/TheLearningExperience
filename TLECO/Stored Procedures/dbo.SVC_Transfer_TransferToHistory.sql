SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Transfer_TransferToHistory] (@TransferNumber char(15)) As declare @Line int declare @SerialLine int declare @Seq int declare @DistType smallint declare @MoveDist tinyint  if exists(select * from SVC00700 where ORDDOCID = @TransferNumber and STATUS > 5) BEGIN  if exists(select * from SVC00998)  select @MoveDist = SVC_DistHistory_Transfer from SVC00998   else  select @MoveDist = DISTHIST from POP40100   INSERT INTO SVC30700 with (rowlock)  select  ORDDOCID,RFRNCDOC,TECHID, OFFID, STATUS, ORDRDATE, ETADTE,  CUSTNAME,ADDRESS1,ADDRESS2, CITY,STATE ,ZIPCODE, SHIPMTHD,  TRNSFLOC,ITLOCN,LOCNCODE, NOTEINDX, SVC_Address_Option ,  SVC_Misc_Address_Code, ADDRESS3, COUNTRY,USERID  from SVC00700  where ORDDOCID = @TransferNumber  declare cursor_701transfer cursor for select LNITMSEQ from SVC00701 where ORDDOCID = @TransferNumber open cursor_701transfer  FETCH NEXT FROM cursor_701transfer INTO @Line  while @@FETCH_STATUS = 0  BEGIN  INSERT INTO SVC30701 with (rowlock)  select  ORDDOCID,LNITMSEQ,STATUS, ITEMNMBR,DSCRIPTN,UOFM,TRNSFQTY, QTYFULFI, QTYSHPPD,  QTY_To_Receive, QTYRECVD, CALLNBR, SRVRECTYPE, SERVLITEMSEQ,EQPLINE,LINITMTYP,  RETDOCID,LNSEQNBR, RTV_Number,WORECTYPE, WORKORDNUM,  QTYBSUOM, TRNSFLOC, ITLOCN, TRNSTLOC,  TRFQTYTY, TRTQTYTY, DECPLCUR, DECPLQTY, Landed_Cost_Group_ID, Reason_Code  from SVC00701 where ORDDOCID = @TransferNumber and LNITMSEQ = @Line  FETCH NEXT FROM cursor_701transfer INTO @Line  END deallocate cursor_701transfer  declare cursor_702transfer cursor for select TRANSLINESEQ,SLTSQNUM from SVC00702 where ORDDOCID = @TransferNumber open cursor_702transfer  FETCH NEXT FROM cursor_702transfer INTO @Line,@SerialLine  while @@FETCH_STATUS = 0  BEGIN  INSERT INTO SVC30702 with (rowlock)  select  ORDDOCID, TRANSLINESEQ, SRVRECTYPE, CALLNBR,EQPLINE,LINITMTYP, LNITMSEQ,  QTYTYPE, SERLTNUM, SERLTQTY,SLTSQNUM,DATERECD,DTSEQNUM, UNITCOST,ITEMNMBR,  TRXSORCE,POSTED, OVRSERLT, STATUS, FROMBIN, TOBIN, MFGDATE, EXPNDATE  from SVC00702 where ORDDOCID = @TransferNumber and TRANSLINESEQ = @Line and SLTSQNUM =@SerialLine  FETCH NEXT FROM cursor_702transfer INTO @Line,@SerialLine  END deallocate cursor_702transfer  if @MoveDist  = 1  begin  declare cursor_731transfer cursor for select LNITMSEQ,SEQNUMBR,SVC_Distribution_Type  from SVC00731 where ORDDOCID = @TransferNumber  open cursor_731transfer  FETCH NEXT FROM cursor_731transfer INTO @Line,@Seq,@DistType  while @@FETCH_STATUS = 0  BEGIN  INSERT INTO SVC30731 with (rowlock)  select  ORDDOCID,LNITMSEQ,SEQNUMBR, SVC_Distribution_Type, DistRef,ACTINDX,  DEBITAMT,ORDBTAMT,CRDTAMNT,ORCRDAMT,CURRNIDX, TRXSORCE, POSTED, POSTEDDT  from SVC00731 where ORDDOCID = @TransferNumber and LNITMSEQ = @Line  and SEQNUMBR = @Seq and SVC_Distribution_Type=@DistType  FETCH NEXT FROM cursor_731transfer INTO @Line,@Seq,@DistType  END  deallocate cursor_731transfer end update SVC00712 with (rowlock) set POSTED = 1 where ORDDOCID = @TransferNumber delete from SVC00700 where ORDDOCID = @TransferNumber delete from SVC00701 where ORDDOCID = @TransferNumber delete from SVC00702 where ORDDOCID = @TransferNumber delete from SVC00731 where ORDDOCID = @TransferNumber  END  return     
GO
GRANT EXECUTE ON  [dbo].[SVC_Transfer_TransferToHistory] TO [DYNGRP]
GO