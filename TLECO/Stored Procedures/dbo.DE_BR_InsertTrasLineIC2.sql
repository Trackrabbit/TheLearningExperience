SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO





--exec DE_BR_InsertTrasLineIC '10043-00-00-00',0,2177028.92,'CGSI - Transfer In from 898013209071 - FL Govt Receipts ','3/31/2014','MASTER RECEIPT','GOVT RECEIPTS' 
CREATE Proc [dbo].[DE_BR_InsertTrasLineIC2] @AccountString char(30),@Debit Numeric(19,5),@Credit Numeric(19,5),@Distref char(30),@GLPost datetime,@tocheckbook char(20),
@fromcheckbook char(20),@ToCBACTINDX int
as

BEGIN DECLARE @stored_proc_name 
char(32) 
DECLARE @retstat int 
DECLARE @param1 int 
DECLARE @param2 int 
set nocount on 
SELECT @stored_proc_name = 'cmGetLastJournalNumber' 
EXEC @retstat = @stored_proc_name @param1 OUT, @param2 OUT 
set nocount on END 


declare @NxtNum numeric(19,5)
set @NxtNum=@param1+1
declare @NxtSeq int
set @NxtSeq=(Select MAX(DSTSQNUM) From CM20400 where CMDNUMWK=@NxtNum)
--Select * From csi14..gl00105 where Actnumst='21031-00-00-00'
declare @ActIndx int
set @ActIndx=(Select Actindx from GL00105 where ACTNUMST=@AccountString)
--Select 
--declare @ToCBACTINDX int
--set @ToCBACTINDX=(Select ACTINDX From CM00100 where CHEKBKID=@fromcheckbook)
 --select @NxtNum,@NxtSeq
           Declare @NxtXferNumber int
           Set @NxtXferNumber=(Select isnull(MAX(Xfr_Record_Number),0)+1 from CM20600)
           --Select * from CM20600 
           declare @CMXFRNUM char(25)
           --XFR000000035 
           --XFR000000062   
           --XFR00000062           
           set @CMXFRNUM=(Select 'XFR'+replicate('0',9-Len(MAX(Convert(int,Right(rtrim(CMXFRNUM),5)))+1))+Cast(MAX(Convert(int,Right(rtrim(CMXFRNUM),5)))+1 as CHAR(5)) from CM20600 )
           --exec CSI01.dbo.zDP_CM00100SS_1 'GOVT RECEIPTS'
           declare @NTRXSNUM char(15)
           set @NTRXSNUM=( SELECT TOP 1   'CMXFR'+replicate('0',8-Len(NTRXSNUM))+Cast(NTRXSNUM as CHAR(5)) FROM SY01000 WHERE SERIES = 2 AND TRXSRCPX = 'CMXFR' ORDER BY SERIES ASC, TRXSRCPX ASC)
           Update SY01000 set NTRXSNUM=NTRXSNUM+1 FROM SY01000 WHERE SERIES = 2 AND TRXSRCPX = 'CMXFR'
           --Select * from cm20600 order by Xfr_Record_Number desc
        
Begin tran t
  --Alter table ##dexInserted (Dex_row_id int)
           
  --         INSERT INTO [CM20600]
  --         ([Xfr_Record_Number]
  --         ,[CMXFRNUM]
  --         ,[CMFRMRECNUM]
  --         ,[CMTORECNUM]
  --         ,[CMFRMSTATUS]
  --         ,[CMTOSTATUS]
  --         ,[CMFRMCHKBKID]
  --         ,[CMCHKBKID]
  --         ,[CMXFTDATE]
  --         ,[NOTEINDX])
  --      output inserted.DEX_ROW_ID into ##dexInserted
  --   VALUES
  --         (@NxtXferNumber+1
  --         ,@CMXFRNUM
  --         ,@NxtNum+1
  --         ,0.00
  --         ,0
  --         ,0
  --         ,@tocheckbook
  --         ,@fromcheckbook
  --         ,@GLPost
  --         ,0.00)
           
BEGIN DECLARE @num int EXEC zDP_CM20600SI @NxtXferNumber, @CMXFRNUM, @NxtNum, 0.00000, 0, 0, @tocheckbook, @fromcheckbook, @GLPost, 0.00000, @num OUT SELECT @num END 
--select * from cm20600 order by dex_row_id desc
BEGIN DECLARE @num1 int EXEC zDP_CM20100SI @NxtNum, @NxtNum, 0, 1, @NTRXSNUM, @tocheckbook, 7, @CMXFRNUM, 0x00000000, @num1 OUT  END 
       
    declare @amount1 numeric(19,5)
           set @amount1=@Debit+@Credit     
       
       BEGIN DECLARE @num2 int EXEC zDP_CM20200SI @NxtNum, @NxtNum, 10, 
       @tocheckbook, @CMXFRNUM, 7, @GLPost, @GLPost,@amount1 , 
       'Z-US$', '', @Distref, @Distref, 0, 0.00000, 0.00000, '1900.01.01', 
       0, '1900.01.01', '1900.01.01', '', 0.00000, @NTRXSNUM, 0, 'CMXFR', 7, @CMXFRNUM, 
       '1900.01.01', '', '1900.01.01', '', '', '', @amount1, @amount1, '', '', 0.0000000, 
       '1900.01.01', '00:00:00', 0, '1900.01.01', 1007, 0, 0.0000000, 0, @NxtXferNumber, 0, 
       @num OUT SELECT @num2 END 
        
   BEGIN DECLARE @num3 int EXEC zDP_CM20400SI @NxtNum, 0, 1, @ToCBACTINDX, @Credit, @Debit, @Distref, @GLPost, @Debit, @Credit, @num3 OUT  END          
         
       
--INSERT INTO [CM20400]
--           ([CMDNUMWK]
--           ,[VOIDED]
--           ,[DSTSQNUM]
--           ,[ACTINDX]
--           ,[DEBITAMT]
--           ,[CRDTAMNT]
--           ,[DistRef]
--           ,[GLPOSTDT]
--           ,[ORCRDAMT]
--           ,[ORDBTAMT])
--     VALUES
--           (@NxtNum+1
--           ,0
--           ,1
--           ,@ToCBACTINDX
--           ,@Credit
--           ,@Debit
--           ,@Distref
--           ,@GLPost
--           ,@Debit
--           ,@Credit)
           
     
          
         
     --       INSERT INTO [dbo].[CM20100]
     --      ([CMDNUMWK]
     --      ,[RecNumControl]
     --      ,[VOIDED]
     --      ,[CNTRLTYP]
     --      ,[AUDITTRAIL]
     --      ,[CHEKBKID]
     --      ,[CMTrxType]
     --      ,[CMTrxNum]
     --      ,[CMERRMSG])
     --VALUES
     --      (@NxtNum+1,
     --      @NxtNum+1
     --      ,0
     --      ,1
     --      ,@NTRXSNUM
     --      ,@tocheckbook
     --      ,7
     --      ,@CMXFRNUM
     --      ,0x00000000)
           
         
     --                 INSERT INTO [CM20200]
     --      ([CMRECNUM]
     --      ,[sRecNum]
     --      ,[RCRDSTTS]
     --      ,[CHEKBKID]
     --      ,[CMTrxNum]
     --      ,[CMTrxType]
     --      ,[TRXDATE]
     --      ,[GLPOSTDT]
     --      ,[TRXAMNT]
     --      ,[CURNCYID]
     --      ,[CMLinkID]
     --      ,[paidtorcvdfrom]
     --      ,[DSCRIPTN]
     --      ,[Recond]
     --      ,[RECONUM]
     --      ,[ClrdAmt]
     --      ,[clearedate]
     --      ,[VOIDED]
     --      ,[VOIDDATE]
     --      ,[VOIDPDATE]
     --      ,[VOIDDESC]
     --      ,[NOTEINDX]
     --      ,[AUDITTRAIL]
     --      ,[DEPTYPE]
     --      ,[SOURCDOC]
     --      ,[SRCDOCTYP]
     --      ,[SRCDOCNUM]
     --      ,[POSTEDDT]
     --      ,[PTDUSRID]
     --      ,[MODIFDT]
     --      ,[MDFUSRID]
     --      ,[USERDEF1]
     --      ,[USERDEF2]
     --      ,[ORIGAMT]
     --      ,[Checkbook_Amount]
     --      ,[RATETPID]
     --      ,[EXGTBLID]
     --      ,[XCHGRATE]
     --      ,[EXCHDATE]
     --      ,[TIME1]
     --      ,[RTCLCMTD]
     --      ,[EXPNDATE]
     --      ,[CURRNIDX]
     --      ,[DECPLCUR]
     --      ,[DENXRATE]
     --      ,[MCTRXSTT]
     --      ,[Xfr_Record_Number]
     --      ,[EFTFLAG])--47
           
     --VALUES
     --      (@NxtNum+1
     --      ,@NxtNum+1
     --      ,40
     --      ,@tocheckbook
     --      ,@CMXFRNUM
     --      ,7
     --      ,@GLPost
     --      ,@GLPost
     --      ,@Debit+@Credit
     --      ,''
     --      ,''
     --      ,@Distref
     --      ,@Distref
     --      ,0
     --      ,0.00
     --      ,0.00
     --      ,'1-1-1900'
     --      ,0
     --      ,'1-1-1900'
     --      ,'1-1-1900'
     --      ,''
     --      ,0.00
     --      ,@NTRXSNUM
     --      ,0
     --      ,'CMXFR      '
     --      ,7
     --      ,@CMXFRNUM
     --      ,''
     --      ,'sa'
     --      ,''
     --      ,'sa'
     --      ,''
     --      ,''
     --      ,@Debit+@Credit
     --      ,@Debit+@Credit
     --      ,''
     --      ,''
     --      ,0.000
     --      ,'1-1-1900'
     --      ,'1-1-1900'
     --      ,0
     --      ,'1-1-1900'
     --      ,1007
     --      ,0
     --      ,0.00
     --      ,0
     --      ,@NxtXferNumber+1
     --      ,0)
           
     --      declare @amount1 numeric(19,5)
     --      set @amount1=@Debit+@Credit
           
     --  BEGIN DECLARE @num2 int EXEC zDP_CM20200SI @NxtNum, @NxtNum, 10, 
     --  @tocheckbook, @CMXFRNUM, 7, @GLPost, @GLPost,@amount1 , 
     --  '', '', @Distref, @Distref, 0, 0.00000, 0.00000, '1900.01.01', 
     --  0, '1900.01.01', '1900.01.01', '', 0.00000, @NTRXSNUM, 0, 'CMXFR', 7, @CMXFRNUM, 
     --  '1900.01.01', '', '1900.01.01', '', '', '', @amount1, @amount1, '', '', 0.0000000, 
     --  '1900.01.01', '00:00:00', 0, '1900.01.01', 1007, 0, 0.0000000, 0, @NxtXferNumber, 0, 
     --  @num OUT SELECT @num2 END     
          --select * from CM40100
           Declare @NxtReceipt int
           Set @NxtReceipt = (Select CMRECNUM From CM40100)
           update    CM40100 set CMRECNUM=  @NxtReceipt+1             
           
     --      INSERT INTO [CM20300]
     --      ([CMRECNUM]
     --      ,[sRecNum]
     --      ,[CNTRLTYP]
     --      ,[DEPOSITED]
     --      ,[MDFUSRID]
     --      ,[MODIFDT]
     --      ,[CHEKBKID]
     --      ,[depositnumber]
     --      ,[RCPTNMBR]
     --      ,[receiptdate]
     --      ,[RCPTAMT]
     --      ,[RcpType]
     --      ,[CARDNAME]
     --      ,[CURNCYID]
     --      ,[BANKNAME]
     --      ,[BNKBRNCH]
     --      ,[GLPOSTDT]
     --      ,[POSTEDDT]
     --      ,[PTDUSRID]
     --      ,[CMLinkID]
     --      ,[RcvdFrom]
     --      ,[DSCRIPTN]
     --      ,[VOIDED]
     --      ,[VOIDDATE]
     --      ,[VOIDPDATE]
     --      ,[VOIDDESC]
     --      ,[USERDEF1]
     --      ,[USERDEF2]
     --      ,[NOTEINDX]
     --      ,[RCRDSTTS]
     --      ,[SOURCDOC]
     --      ,[SRCDOCNUM]
     --      ,[SRCDOCTYP]
     --      ,[AUDITTRAIL]
     --      ,[ORIGAMT]
     --      ,[Checkbook_Amount]
     --      ,[RATETPID]
     --      ,[RCVGRATETPID]
     --      ,[EXGTBLID]
     --      ,[XCHGRATE]
     --      ,[Receiving_Exchange_Rate]
     --      ,[EXCHDATE]
     --      ,[TIME1]
     --      ,[RTCLCMTD]
     --      ,[RCVGRTCLCMTD]
     --      ,[EXPNDATE]
     --      ,[CURRNIDX]
     --      ,[DECPLCUR]
     --      ,[RLGANLOS]
     --      ,[Cash_Account_Index]
     --      ,[Realized_GL_Account_Inde]
     --      ,[DENXRATE]
     --      ,[MCTRXSTT]
     --      ,[Receiving_DenomEXRate]
     --      ,[Receiving_MC_Transaction]
     --      ,[PMNTNMBR]
     --      ,[EFTFLAG])
     --VALUES
     --      (@NxtNum+1
     --      ,@NxtNum+1
     --      ,0
     --      ,0
     --      ,'sa'
     --      ,''
     --      ,@tocheckbook
     --      ,''
     --      ,@NxtReceipt+1
     --      ,@GLPost
     --      ,@Debit+@Credit
     --      ,1
     --      ,''
     --      ,''
     --      ,''
     --      ,''
     --      ,@GLPost
     --      ,''
     --      ,'sa'
     --      ,''
     --      ,@Distref
     --      ,@Distref
     --      ,0
     --      ,'1-1-1900'
     --      ,'1-1-1900'
     --      ,''
     --      ,''
     --      ,''
     --      ,0.00
     --      ,40
     --      ,'CMTRX'
     --      ,@NxtReceipt+1
     --      ,2
     --      ,@NTRXSNUM
     --      ,@Debit+@Credit
     --      ,@Debit+@Credit
     --      ,''
     --      ,''
     --      ,''
     --      ,0.00
     --      ,0.00
     --      ,'1-1-1900'
     --      ,'1-1-1900'
     --      ,0
     --      ,0
     --      ,'1-1-1900'
     --      ,0
     --      ,0
     --      ,0.00
     --      ,0
     --      ,0
     --      ,0.00
     --      ,0
     --      ,0.00
     --      ,0
     --      ,''
     --      ,0)
           
           
           

--GO



commit tran t
--select * from ##dexInserted
--drop table ##dexInserted






GO
GRANT EXECUTE ON  [dbo].[DE_BR_InsertTrasLineIC2] TO [DYNGRP]
GO
