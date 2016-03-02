SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


--exec DE_BnkTransNoIC 'MASTER RECEIPT ','GOVT RECEIPTS  ','03-31-2014',20.00,'Test Ref','Test Header',0,20.00

CREATE Proc [dbo].[DE_BnkTransNoIC] @FromCB char(15),@toCB char(15),@TransTxrDate datetime,@TrasAmt Numeric(19,5),@ReferenceTran char(31),@HeaderDesc char(31),@Debit numeric(19,5),@Credit numeric(19,5)

as
Declare @fROMaCiNDX INT

SET @fROMaCiNDX=(Select Actindx From CM00100 where CHEKBKID=@FromCB)
DECLARE @TOACTINDX INT
SET @TOACTINDX=(Select Actindx From CM00100 where CHEKBKID=@toCB)
--select * from cm20600 order by dex_row_id desc
declare @xrfNumMax numeric(19,5)
set @xrfNumMax=(Select MAX(Xfr_Record_Number+1) from CM20600)
declare @CMXFRNUM char(25)
           --XFR000000035 
           --XFR000000062   
           --XFR00000062           
           set @CMXFRNUM=(Select 'XFR'+replicate('0',9-Len(MAX(Convert(int,Right(rtrim(CMXFRNUM),5)))+1))+Cast(MAX(Convert(int,Right(rtrim(CMXFRNUM),5)))+1 as CHAR(5)) from CM20600 )
      --BEGIN DECLARE @num int EXEC CSI01.dbo.zDP_CM20600SI 139.00000, 'XFR000000046', 829.00000, 830.00000, 0, 0, 'MASTER RECEIPT', 'GOVT RECEIPTS', '2014.04.19', 4451.00000, @num OUT SELECT @num END 
declare @FrmNTRXSNUM numeric(19,5)
set @FrmNTRXSNUM=(Select isnull(MAX(CMDNUMWK+1),0) From CM20400) 
declare @ToNTRXSNUM numeric(19,5)
set @ToNTRXSNUM=(Select isnull(MAX(CMDNUMWK+2),0) From CM20400) 
declare @NxtNumber20100 numeric(19,5)
set @NxtNumber20100=(Select isnull(Max(CMDNUMWK)+1,0) from CM20100)
                         

BEGIN DECLARE @num int 
EXEC zDP_CM20600SI @xrfNumMax, @CMXFRNUM, 
@FrmNTRXSNUM, 
@ToNTRXSNUM, 
0, 0, @FromCB, @toCB, 
@TransTxrDate,0,
 @num OUT SELECT @num END 
exec zDP_CM20600SS_1 @num
exec zDP_SY01000SS_1 2,'CMXFR'
declare @NTRXSNUM char(15)
set @NTRXSNUM=( SELECT TOP 1   'CMXFR'+replicate('0',8-Len(NTRXSNUM))+Cast(NTRXSNUM as CHAR(5)) FROM SY01000 WHERE SERIES = 2 AND TRXSRCPX = 'CMXFR' ORDER BY SERIES ASC, TRXSRCPX ASC)
Update SY01000 set NTRXSNUM=NTRXSNUM+1 FROM SY01000 WHERE SERIES = 2 AND TRXSRCPX = 'CMXFR'
BEGIN DECLARE @num1 int EXEC zDP_CM20100SI @NxtNumber20100, @NxtNumber20100, 0, 1, @NTRXSNUM, @FromCB, 7, @CMXFRNUM, 0x00000000, @num1 OUT SELECT @num1 END 
--BEGIN DECLARE @num int EXEC CSI01.dbo.zDP_CM20200SI 831.00000, '831.00000', 10, 'MASTER RECEIPT', 'XFR000000047', 7, '2014.04.20', '2014.04.20', 258.00000, '', '', 'Transfer To GOVT RECEIPTS', 'test', 0, 0.00000, 0.00000, '1900.01.01', 0, '1900.01.01', '1900.01.01', '', 4454.00000, 'CMXFR00000111', 0, 'CMXFR', 7, 'XFR000000047', '1900.01.01', '', '1900.01.01', '', '', '', 258.00000, 258.00000, '', '', 0.0000000, '1900.01.01', '00:00:00', 0, '1900.01.01', 1007, 0, 0.0000000, 0, 138.00000, 0, @num OUT SELECT @num END 
--select * from cm20200
--Delete cm20200
select @CMXFRNUM
BEGIN DECLARE @num2 int EXEC zDP_CM20200SI @ToNTRXSNUM, @ToNTRXSNUM, 10, @FromCB,@CMXFRNUM, 7, @TransTxrDate, @TransTxrDate, @TrasAmt, '', '', @ReferenceTran, @HeaderDesc, 0, 0.00000, 0.00000, '1900.01.01', 0, '1900.01.01', '1900.01.01', '', 0, @NTRXSNUM, 0, 'CMXFR', 7, @CMXFRNUM, '1900.01.01', '', '1900.01.01', '', '', '', @TrasAmt, @TrasAmt, '', '', 0.0000000, '1900.01.01', '00:00:00', 0, '1900.01.01', 1007, 0, 0.0000000, 0,@xrfNumMax,0,  @num2 OUT SELECT @num2 END 

BEGIN DECLARE @num3 int EXEC zDP_CM20400SI @ToNTRXSNUM, 0, 1, @TOACTINDX, @Debit, @Credit, '', @TransTxrDate, @Credit, @Debit, @num3 OUT SELECT @num3 END 


GO
GRANT EXECUTE ON  [dbo].[DE_BnkTransNoIC] TO [DYNGRP]
GO
