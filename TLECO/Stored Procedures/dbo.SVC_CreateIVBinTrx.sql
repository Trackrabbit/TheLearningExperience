SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_CreateIVBinTrx]  (@DocType smallint,  @RecType smallint,  @DocNumber char(20),  @Line numeric(19,5),  @IVDOCNBR char(20),  @IVDOCTYP smallint,  @LNSEQNBR numeric(19,5),  @CMPNTSEQ int = 0 ,  @QTYType smallint = 1) As declare @Location char(10), @ViaLocation char(10) declare @Item char(30) declare @Bin char(15), @ToBin char(15) declare @Qty numeric(19,5), @LineQty numeric(19,5) declare @IVSEQNUMBR int, @Sequence int declare @Posted tinyint, @UpdateTo tinyint declare @UseType char(2) declare @ORDDOCID char(15), @TRANSLINESEQ integer declare @RTV char(15), @RMALine numeric(19,5) declare @UOM char(9) declare @QtyInBase numeric(19,5)  select @UseType = '' if @DocType = 1   select @UseType = ITEMUSETYPE from SVC00203 where   SRVRECTYPE = @RecType and CALLNBR = @DocNumber and CMPNTSEQ = @CMPNTSEQ and EQPLINE = 1 and LINITMTYP = 'P' and LNITMSEQ = @Line  select @ToBin = '' select @Item = ITEMNMBR, @UOM = UOFM, @LineQty = TRXQTY from IV10001 where IVDOCNBR =@IVDOCNBR and IVDOCTYP = @IVDOCTYP and LNSEQNBR = @LNSEQNBR exec SVC_Get_QtyInBase @Item,@UOM,1,@QtyInBase OUTPUT select @LineQty = @LineQty * @QtyInBase  if @LineQty < 0 and @UseType = 'R'   begin  select @Item = ITEMNMBR, @Location = LOCNCODE, @Bin = BIN, @Qty = QUANTITY  from SVC00212 where  SRVRECTYPE = @RecType and CALLNBR = @DocNumber and EQPLINE = 1 and CMPNTSEQ = @CMPNTSEQ and LINITMTYP = 'P' and LNITMSEQ = @Line  select @Qty = sum(QUANTITY)  from SVC00212 where  SRVRECTYPE = @RecType and CALLNBR = @DocNumber and EQPLINE = 1 and CMPNTSEQ = @CMPNTSEQ and LINITMTYP = 'P' and LNITMSEQ = @Line  if @Qty = @LineQty * (-1)  delete from SVC00212 where  SRVRECTYPE = @RecType and CALLNBR = @DocNumber and EQPLINE = 1 and CMPNTSEQ = @CMPNTSEQ and LINITMTYP = 'P' and LNITMSEQ = @Line  else  begin  if exists(select * from SVC00212 where MKDTOPST = 1 and SRVRECTYPE = @RecType and CALLNBR = @DocNumber and EQPLINE = 1 and CMPNTSEQ = @CMPNTSEQ and LINITMTYP = 'P' and LNITMSEQ = @Line)  delete from SVC00212 where MKDTOPST = 1 and  SRVRECTYPE = @RecType and CALLNBR = @DocNumber and EQPLINE = 1 and LINITMTYP = 'P' and LNITMSEQ = @Line and CMPNTSEQ = @CMPNTSEQ  else  update SVC00212 set QUANTITY = QUANTITY + @LineQty, MKDTOPST = 0 where   SRVRECTYPE = @RecType and CALLNBR = @DocNumber and EQPLINE = 1 and LINITMTYP = 'P' and LNITMSEQ = @Line and CMPNTSEQ = @CMPNTSEQ  end   select @IVSEQNUMBR = isnull(Max(SEQNUMBR),0) + 16384 from IV10003 where   IVDOCNBR = @IVDOCNBR and IVDOCTYP = @IVDOCTYP and LNSEQNBR = @LNSEQNBR  insert into IV10003 select @IVDOCNBR, @IVDOCTYP, @LNSEQNBR, @IVSEQNUMBR, @Item, @Location,  @Bin, @ToBin, 1, @LineQty * (-1),0  end if @LineQty < 0 or @UseType = 'R'   select @Posted = 1, @UpdateTo = 1 else  select @Posted = 0, @UpdateTo = 0  if @DocType = 1   declare Bin_record cursor for select SEQNUMBR, ITEMNMBR, LOCNCODE, BIN, QUANTITY, @ToBin, QTYTYPE from SVC00212 where  SRVRECTYPE = @RecType and CALLNBR = @DocNumber and EQPLINE = 1 and CMPNTSEQ = @CMPNTSEQ and LINITMTYP = 'P' and LNITMSEQ = @Line and MKDTOPST = 1 else if @DocType = 2  declare Bin_record cursor for select SEQNUMBR, ITEMNMBR, TRNSFLOC, BIN, QUANTITY, TOBIN, QTYTYPE from SVC00712 where  ORDDOCID = @DocNumber and LNITMSEQ = @Line and POSTED = 0 else if @DocType = 3  declare Bin_record cursor for select SEQNUMBR, ITEMNMBR, LOCNCODE, BIN, QUANTITY, @ToBin, QTYTYPE from SVC05212 where   Return_Record_Type = @RecType and RETDOCID = @DocNumber and LNSEQNBR = @Line and CMPNTSEQ = @CMPNTSEQ and QTYTYPE = @QTYType else if @DocType = 4  begin  if @RecType = 0   begin  if @IVDOCTYP = 1  declare Bin_record cursor for select SEQNUMBR, ITEMNMBR, LOCCODEB, BIN, QUANTITY, @ToBin, QTYTYPE from SVC05612  where RTV_Number = @DocNumber and RTV_Line = @Line  else  declare Bin_record cursor for select SEQNUMBR, ITEMNMBR, LOCCODEB, BIN, QUANTITY, TOBIN, QTYTYPE from SVC05612  where RTV_Number = @DocNumber and RTV_Line = @Line  end  else   begin  if @IVDOCTYP = 1  declare Bin_record cursor for select SEQNUMBR, ITEMNMBR, LOCNCODE, BIN, QUANTITY, @ToBin, QTYTYPE from SVC05612  where RTV_Number = @DocNumber and RTV_Line = @Line   else  declare Bin_record cursor for select SEQNUMBR, ITEMNMBR, LOCNCODE, BIN, QUANTITY, TOBIN, QTYTYPE from SVC05612  where RTV_Number = @DocNumber and RTV_Line = @Line   end  end else if @DocType = 5  declare Bin_record cursor for select SEQNUMBR, ITEMNMBR, LOCNCODE, BIN, QUANTITY, @ToBin, QTYTYPE from SVC06112 where   WORECTYPE = @RecType and WORKORDNUM = @DocNumber and LINITMTYP = 'P' and CMPNTSEQ = @CMPNTSEQ and LNITMSEQ = @Line and MKDTOPST = 1 else if @DocType = 8  begin  select @IVSEQNUMBR = isnull(Max(SEQNUMBR),0) + 16384 from IV10003 where   IVDOCNBR = @IVDOCNBR and IVDOCTYP = @IVDOCTYP and LNSEQNBR = @LNSEQNBR  insert into IV10003 select @IVDOCNBR, @IVDOCTYP, @LNSEQNBR, @IVSEQNUMBR, IBITEMNUM, LOCNCODE,  BIN, @ToBin, QTYTYPE, QUANTITY,0  from SVC06100 where   WORECTYPE = @RecType and WORKORDNUM = @DocNumber   return(0)  end else if @DocType = 9  begin  select @IVSEQNUMBR = isnull(Max(SEQNUMBR),0) + 16384 from IV10003 where   IVDOCNBR = @IVDOCNBR and IVDOCTYP = @IVDOCTYP and LNSEQNBR = @LNSEQNBR  insert into IV10003 select @IVDOCNBR, @IVDOCTYP, @LNSEQNBR, @IVSEQNUMBR, OBITEMNUM, LOCNCODE,  BIN, @ToBin, QTYTYPE, QUANTITY,0  from SVC06100 where   WORECTYPE = @RecType and WORKORDNUM = @DocNumber   return(0)  end  if @LineQty < 0 select @LineQty = @LineQty * (-1) open Bin_record   fetch next from Bin_record into @Sequence, @Item, @Location, @Bin, @Qty, @ToBin, @QTYType  while @@FETCH_STATUS = 0  BEGIN  if @Qty > @LineQty select @Qty = @LineQty  if @Qty > 0  Begin  select @IVSEQNUMBR = isnull(Max(SEQNUMBR),0) + 16384 from IV10003 where   IVDOCNBR = @IVDOCNBR and IVDOCTYP = @IVDOCTYP and LNSEQNBR = @LNSEQNBR  insert into IV10003 select @IVDOCNBR, @IVDOCTYP, @LNSEQNBR, @IVSEQNUMBR, @Item, @Location,  @Bin, @ToBin, @QTYType, @Qty,0  select @LineQty = @LineQty - @Qty  if @DocType = 1   begin  update SVC00212 set POSTED = @Posted, MKDTOPST = 0 where   SRVRECTYPE = @RecType and CALLNBR = @DocNumber and EQPLINE = 1 and CMPNTSEQ = @CMPNTSEQ and LINITMTYP = 'P' and LNITMSEQ = @Line and SEQNUMBR = @Sequence  if @UpdateTo = 0  update IV00112 set ATYALLOC = ATYALLOC + @Qty where ITEMNMBR = @Item and LOCNCODE = @Location  and QTYTYPE = @QTYType and BIN = @Bin  end   else if @DocType = 2  Begin  select @ViaLocation = ITLOCN, @RTV = isnull(RTV_Number,'') from SVC00701 where ORDDOCID = @DocNumber and LNITMSEQ = @Line  if @ViaLocation > '' and @RTV = ''  begin  if exists(select * from IV00112 where ITEMNMBR = @Item and LOCNCODE = @ViaLocation and QTYTYPE = 1 and BIN = @ToBin)  update IV00112 set ATYALLOC = ATYALLOC + @Qty where ITEMNMBR = @Item and LOCNCODE = @ViaLocation and QTYTYPE = 1 and BIN = @ToBin  else  insert IV00112 select @Item, @ViaLocation, @ToBin, @QTYType, 0, @Qty  end  update SVC00712 set POSTED = 1 where ORDDOCID = @DocNumber and LNITMSEQ = @Line and SEQNUMBR = @Sequence  End  else if @DocType = 3  update SVC05212 set POSTED = 1 where  Return_Record_Type = @RecType and RETDOCID = @DocNumber and CMPNTSEQ = @CMPNTSEQ and LNSEQNBR = @Line and SEQNUMBR = @Sequence and QTYTYPE = @QTYType  else if @DocType = 4  update SVC05612 set POSTED = 1 where  RTV_Number = @DocNumber and RTV_Line = @Line and SEQNUMBR = @Sequence  else if @DocType = 5  begin  update SVC06112 set POSTED = @Posted, MKDTOPST = 0 where   WORECTYPE = @RecType and WORKORDNUM = @DocNumber and LINITMTYP = 'P' and CMPNTSEQ = @CMPNTSEQ and LNITMSEQ = @Line and SEQNUMBR = @Sequence  if @UpdateTo = 0  update IV00112 set ATYALLOC = ATYALLOC + @Qty where ITEMNMBR = @Item and LOCNCODE = @Location  and QTYTYPE = 1 and BIN = @Bin  end  End  fetch next from Bin_record into @Sequence, @Item, @Location, @Bin, @Qty, @ToBin, @QTYType  END deallocate Bin_record  return (0)    
GO
GRANT EXECUTE ON  [dbo].[SVC_CreateIVBinTrx] TO [DYNGRP]
GO
