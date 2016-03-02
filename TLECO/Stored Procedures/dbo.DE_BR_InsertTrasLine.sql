SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


--exec DE_BR_InsertTrasLine '2012-10000-000-000',0,2177028.92,'CGSI - Transfer In from 898013209071 - FL Govt Receipts ','11/31/2015','2012-TD','2012-TDE'
--exec DE_BR_InsertTrasLine '10043-00-00-00',0,2177028.92,'CGSI - Transfer In from 898013209071 - FL Govt Receipts ','3/31/2014','MASTER RECEIPT','GOVT RECEIPTS'
--exec DE_BR_InsertTrasLine '2012-10000-000-000',0,0,'TEST','11/31/2015','2012-TD','2012-TDE'
CREATE Proc [dbo].[DE_BR_InsertTrasLine] @AccountString char(30),@Debit Numeric(19,5),@Credit Numeric(19,5),@Distref char(30),@GLPost datetime,@tocheckbook char(20),
@fromcheckbook char(20)
as

BEGIN DECLARE @stored_proc_name 
char(32) 
DECLARE @retstat int 
DECLARE @param1 int 
DECLARE @param2 int 
set nocount on 
SELECT @stored_proc_name = 'cmGetLastJournalNumber' 
EXEC @retstat = @stored_proc_name @param1 OUT, @param2 OUT 
SELECT @retstat, @param1, @param2 
set nocount on END 


declare @NxtNum numeric(19,5)
set @NxtNum=@param1+1
declare @NxtSeq int
set @NxtSeq=(Select MAX(DSTSQNUM) From CM20400)
declare @ActIndx int
set @ActIndx=(Select Actindx from GL00105 where ACTNUMST=@AccountString)
declare @ToCBACTINDX int
set @ToCBACTINDX=(Select ACTINDX From CM00100 where CHEKBKID=@tocheckbook)

Begin tran t


INSERT INTO [CM20400]
           ([CMDNUMWK]
           ,[VOIDED]
           ,[DSTSQNUM]
           ,[ACTINDX]
           ,[DEBITAMT]
           ,[CRDTAMNT]
           ,[DistRef]
           ,[GLPOSTDT]
           ,[ORCRDAMT]
           ,[ORDBTAMT])
     VALUES
           (@NxtNum
           ,0
           ,1
           ,@ActIndx
           ,@Debit
           ,@Credit
           ,@Distref
           ,@GLPost
           ,@Credit
           ,@Debit)
           
           BEGIN DECLARE @stored_proc_name1
char(32) 
DECLARE @retstat1 int 
DECLARE @param11 int 
DECLARE @param21 int 
set nocount on 
SELECT @stored_proc_name1 = 'cmGetLastJournalNumber' 
EXEC @retstat1 = @stored_proc_name1 @param11 OUT, @param21 OUT 
SELECT @retstat1, @param11, @param21 set nocount on END 
Declare @NexNum2 Numeric(19,5)
set @NexNum2=@param11+1
  --SELECT * FROM CM20400         
           INSERT INTO [CM20400]
           ([CMDNUMWK]
           ,[VOIDED]
           ,[DSTSQNUM]
           ,[ACTINDX]
           ,[DEBITAMT]
           ,[CRDTAMNT]
           ,[DistRef]
           ,[GLPOSTDT]
           ,[ORCRDAMT]
           ,[ORDBTAMT])
     VALUES
           (@NexNum2
           ,0
           ,1
           ,@ToCBACTINDX
           ,@Credit
           ,@Debit
           ,@Distref
           ,@GLPost
           ,@Debit
           ,@Credit
           )
           --select @NxtNum,@NxtSeq
           Declare @NxtXferNumber int
           Set @NxtXferNumber=(Select isnull(MAX(Xfr_Record_Number),0) from CM20600)
           --Select * from CM20600 
           declare @CMXFRNUM char(25)
           --XFR000000035 
           --XFR000000062   
           --XFR00000062           
           set @CMXFRNUM=ISNULL((Select 'XFR'+replicate('0',9-Len(MAX(Convert(int,Right(rtrim(CMXFRNUM),5)))+1))+Cast(MAX(Convert(int,Right(rtrim(CMXFRNUM),5)))+1 as CHAR(5)) from CM20600 ),'XFR0000000001')
           --exec CSI01.dbo.zDP_CM00100SS_1 'GOVT RECEIPTS'
           declare @NTRXSNUM char(15)
           set @NTRXSNUM=( SELECT TOP 1   'CMXFR'+replicate('0',8-Len(NTRXSNUM))+Cast(NTRXSNUM as CHAR(5)) FROM SY01000 WHERE SERIES = 2 AND TRXSRCPX = 'CMXFR' ORDER BY SERIES ASC, TRXSRCPX ASC)
           Update SY01000 set NTRXSNUM=NTRXSNUM+1 FROM SY01000 WHERE SERIES = 2 AND TRXSRCPX = 'CMXFR'
           --exec CSI01.dbo.zDP_SY01000SS_1 2,'CMXFR'
           --SELECT * FROM CM20600
           INSERT INTO [CM20600]
           ([Xfr_Record_Number]
           ,[CMXFRNUM]
           ,[CMFRMRECNUM]
           ,[CMTORECNUM]
           ,[CMFRMSTATUS]
           ,[CMTOSTATUS]
           ,[CMFRMCHKBKID]
           ,[CMCHKBKID]
           ,[CMXFTDATE]
           ,[NOTEINDX])
     VALUES
           (@NxtXferNumber+1
           ,@CMXFRNUM
           ,@NxtNum
           ,@NexNum2
           ,0
           ,0
           ,@tocheckbook
           ,@fromcheckbook
           ,@GLPost
           ,0.00)
           
            INSERT INTO [dbo].[CM20100]
           ([CMDNUMWK]
           ,[RecNumControl]
           ,[VOIDED]
           ,[CNTRLTYP]
           ,[AUDITTRAIL]
           ,[CHEKBKID]
           ,[CMTrxType]
           ,[CMTrxNum]
           ,[CMERRMSG])
     VALUES
           (@NxtNum,
           @NxtNum
           ,0
           ,1
           ,@NTRXSNUM
           ,@tocheckbook
           ,7
           ,@CMXFRNUM
           ,0x00000000)
            INSERT INTO [CM20100]
           ([CMDNUMWK]
           ,[RecNumControl]
           ,[VOIDED]
           ,[CNTRLTYP]
           ,[AUDITTRAIL]
           ,[CHEKBKID]
           ,[CMTrxType]
           ,[CMTrxNum]
           ,[CMERRMSG])
     VALUES
           (@NexNum2
           ,@NexNum2
           ,0
           ,1
           ,@NTRXSNUM
           ,@fromcheckbook
           ,7
           ,@CMXFRNUM
           ,0x00000000)
                      INSERT INTO [CM20200]
           ([CMRECNUM]
           ,[sRecNum]
           ,[RCRDSTTS]
           ,[CHEKBKID]
           ,[CMTrxNum]
           ,[CMTrxType]
           ,[TRXDATE]
           ,[GLPOSTDT]
           ,[TRXAMNT]
           ,[CURNCYID]
           ,[CMLinkID]
           ,[paidtorcvdfrom]
           ,[DSCRIPTN]
           ,[Recond]
           ,[RECONUM]
           ,[ClrdAmt]
           ,[clearedate]
           ,[VOIDED]
           ,[VOIDDATE]
           ,[VOIDPDATE]
           ,[VOIDDESC]
           ,[NOTEINDX]
           ,[AUDITTRAIL]
           ,[DEPTYPE]
           ,[SOURCDOC]
           ,[SRCDOCTYP]
           ,[SRCDOCNUM]
           ,[POSTEDDT]
           ,[PTDUSRID]
           ,[MODIFDT]
           ,[MDFUSRID]
           ,[USERDEF1]
           ,[USERDEF2]
           ,[ORIGAMT]
           ,[Checkbook_Amount]
           ,[RATETPID]
           ,[EXGTBLID]
           ,[XCHGRATE]
           ,[EXCHDATE]
           ,[TIME1]
           ,[RTCLCMTD]
           ,[EXPNDATE]
           ,[CURRNIDX]
           ,[DECPLCUR]
           ,[DENXRATE]
           ,[MCTRXSTT]
           ,[Xfr_Record_Number]
           ,[EFTFLAG])--47
     VALUES
           (@NxtNum
           ,@NxtNum
           ,40
           ,@fromcheckbook
           ,@CMXFRNUM
           ,7
           ,@GLPost
           ,@GLPost
           ,@Debit+@Credit
           ,''
           ,''
           ,@Distref
           ,@Distref
           ,0
           ,0.00
           ,0.00
           ,'1-1-1900'
           ,0
           ,'1-1-1900'
           ,'1-1-1900'
           ,''
           ,0.00
           ,@NTRXSNUM
           ,0
           ,'CMXFR      '
           ,7
           ,@CMXFRNUM
           ,''
           ,'sa'
           ,''
           ,'sa'
           ,''
           ,''
           ,@Debit+@Credit
           ,@Debit+@Credit
           ,''
           ,''
           ,0.000
           ,'1-1-1900'
           ,'1-1-1900'
           ,0
           ,'1-1-1900'
           ,1007
           ,0
           ,0.00
           ,0
           ,@NxtXferNumber+1
           ,0)
           
           INSERT INTO [CM20200]
           ([CMRECNUM]
           ,[sRecNum]
           ,[RCRDSTTS]
           ,[CHEKBKID]
           ,[CMTrxNum]
           ,[CMTrxType]
           ,[TRXDATE]
           ,[GLPOSTDT]
           ,[TRXAMNT]
           ,[CURNCYID]
           ,[CMLinkID]
           ,[paidtorcvdfrom]
           ,[DSCRIPTN]
           ,[Recond]
           ,[RECONUM]
           ,[ClrdAmt]
           ,[clearedate]
           ,[VOIDED]
           ,[VOIDDATE]
           ,[VOIDPDATE]
           ,[VOIDDESC]
           ,[NOTEINDX]
           ,[AUDITTRAIL]
           ,[DEPTYPE]
           ,[SOURCDOC]
           ,[SRCDOCTYP]
           ,[SRCDOCNUM]
           ,[POSTEDDT]
           ,[PTDUSRID]
           ,[MODIFDT]
           ,[MDFUSRID]
           ,[USERDEF1]
           ,[USERDEF2]
           ,[ORIGAMT]
           ,[Checkbook_Amount]
           ,[RATETPID]
           ,[EXGTBLID]
           ,[XCHGRATE]
           ,[EXCHDATE]
           ,[TIME1]
           ,[RTCLCMTD]
           ,[EXPNDATE]
           ,[CURRNIDX]
           ,[DECPLCUR]
           ,[DENXRATE]
           ,[MCTRXSTT]
           ,[Xfr_Record_Number]
           ,[EFTFLAG])--47
     VALUES
           (@NexNum2
           ,@NexNum2
           ,40
           ,@tocheckbook
           ,@CMXFRNUM
           ,7
           ,@GLPost
           ,@GLPost
           ,@Debit+@Credit
           ,''
           ,''
           ,@Distref
           ,@Distref
           ,0
           ,0.00
           ,0.00
           ,'1-1-1900'
           ,0
           ,'1-1-1900'
           ,'1-1-1900'
           ,''
           ,0.00
           ,@NTRXSNUM
           ,0
           ,'CMXFR      '
           ,7
           ,@CMXFRNUM
           ,''
           ,'sa'
           ,''
           ,'sa'
           ,''
           ,''
           ,@Debit+@Credit
           ,@Debit+@Credit
           ,''
           ,''
           ,0.000
           ,'1-1-1900'
           ,'1-1-1900'
           ,0
           ,'1-1-1900'
           ,1007
           ,0
           ,0.00
           ,0
           ,@NxtXferNumber+1
           ,0)
           
           Declare @NxtReceipt int
           Set @NxtReceipt = (Select CMRECNUM From CM40100) 
           Update CM40100 set CMRECNUM=@NxtReceipt+1                  
           
           INSERT INTO [CM20300]
           ([CMRECNUM]
           ,[sRecNum]
           ,[CNTRLTYP]
           ,[DEPOSITED]
           ,[MDFUSRID]
           ,[MODIFDT]
           ,[CHEKBKID]
           ,[depositnumber]
           ,[RCPTNMBR]
           ,[receiptdate]
           ,[RCPTAMT]
           ,[RcpType]
           ,[CARDNAME]
           ,[CURNCYID]
           ,[BANKNAME]
           ,[BNKBRNCH]
           ,[GLPOSTDT]
           ,[POSTEDDT]
           ,[PTDUSRID]
           ,[CMLinkID]
           ,[RcvdFrom]
           ,[DSCRIPTN]
           ,[VOIDED]
           ,[VOIDDATE]
           ,[VOIDPDATE]
           ,[VOIDDESC]
           ,[USERDEF1]
           ,[USERDEF2]
           ,[NOTEINDX]
           ,[RCRDSTTS]
           ,[SOURCDOC]
           ,[SRCDOCNUM]
           ,[SRCDOCTYP]
           ,[AUDITTRAIL]
           ,[ORIGAMT]
           ,[Checkbook_Amount]
           ,[RATETPID]
           ,[RCVGRATETPID]
           ,[EXGTBLID]
           ,[XCHGRATE]
           ,[Receiving_Exchange_Rate]
           ,[EXCHDATE]
           ,[TIME1]
           ,[RTCLCMTD]
           ,[RCVGRTCLCMTD]
           ,[EXPNDATE]
           ,[CURRNIDX]
           ,[DECPLCUR]
           ,[RLGANLOS]
           ,[Cash_Account_Index]
           ,[Realized_GL_Account_Inde]
           ,[DENXRATE]
           ,[MCTRXSTT]
           ,[Receiving_DenomEXRate]
           ,[Receiving_MC_Transaction]
           ,[PMNTNMBR]
           ,[EFTFLAG])
     VALUES
           (@NxtNum
           ,@NxtNum
           ,0
           ,0
           ,'sa'
           ,''
           ,@tocheckbook
           ,''
           ,@NxtReceipt+1
           ,@GLPost
           ,@Debit+@Credit
           ,1
           ,''
           ,''
           ,''
           ,''
           ,@GLPost
           ,''
           ,'sa'
           ,''
           ,@Distref
           ,@Distref
           ,0
           ,'1-1-1900'
           ,'1-1-1900'
           ,''
           ,''
           ,''
           ,0.00
           ,40
           ,'CMTRX'
           ,@NxtReceipt+1
           ,2
           ,@NTRXSNUM
           ,@Debit+@Credit
           ,@Debit+@Credit
           ,''
           ,''
           ,''
           ,0.00
           ,0.00
           ,'1-1-1900'
           ,'1-1-1900'
           ,0
           ,0
           ,'1-1-1900'
           ,0
           ,0
           ,0.00
           ,0
           ,0
           ,0.00
           ,0
           ,0.00
           ,0
           ,''
           ,0)
--GO



commit tran t





GO
GRANT EXECUTE ON  [dbo].[DE_BR_InsertTrasLine] TO [DYNGRP]
GO
