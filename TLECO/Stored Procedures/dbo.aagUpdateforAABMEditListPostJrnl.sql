SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create   procedure [dbo].[aagUpdateforAABMEditListPostJrnl]  @BACHNUMB  char(15),  @DOCNUMBR  char(21),  @REPTOOPT  int,  @Window   int,  @ErrorCnt  int output,  @UserID varchar(20),  @Right   int as begin  declare @TRANTYPE  char(1),  @CHEKNMBR  char(21),  @CHEKBKID  char(15),  @SERIES   smallint,  @aaSubLedgerHdrID int,  @create   tinyint,  @AcctLinked  int,  @WinOpen  int,  @DistCnt  int,  @USERID1   char(15),  @isval   tinyint  declare @sql varchar(200)  select @USERID1  = SYSTEM_USER  if @Window = 1  begin  exec('declare CMREP cursor for  select ''D'',CB_Ref_No, CHEKBKID,dbo.aagBMSeries(''D'',CB_Type)  from CB332222  where BACHNUMB = '''+@BACHNUMB+ '''  union all  select ''P'',CHEKNMBR, CHEKBKID,dbo.aagBMSeries(''P'', CB_Type)  from CB770002  where BACHNUMB ='''+ @BACHNUMB + '''') end  else if @Window = 7   begin  exec ('declare CMREP cursor for  select top 1 ''T'',CB_Transfer_No, '''',0   from CB990021  where CB_Transfer_No = ''' + @DOCNUMBR + '''  union  select top 1 ''T'',CB_Transfer_No, '''',0   from CB990023  where CB_Transfer_No = ''' + @DOCNUMBR + '''  union all  select ''C'',''T''+ltrim(rtrim(''' + @DOCNUMBR + '''))+''/''+CB_BT_CHG_Number, CBKIDCSH,0  from CB990021  where CB_Transfer_No = ''' + @DOCNUMBR + ''' and   len(ltrim(rtrim(CB_BT_CHG_Number ))) <> 0  union all  select ''C'',''T''+ltrim(rtrim(''' + @DOCNUMBR + '''))+''/''+CB_BT_CHG_Number, CHEKBKID,0  from CB990023  where CB_Transfer_No = ''' + @DOCNUMBR + ''' and   len(ltrim(rtrim(CB_BT_CHG_Number ))) <> 0 ')  end  else if @Window = 9   begin  exec ('declare CMREP cursor for  select ''R'', ORDOCNUM, CHEKBKID, dbo.aagBMSeries(''R'',CB_Type)  from CB100000  where ORDOCNUM = ''' + @DOCNUMBR + ''' and CHEKBKID = ''' + @BACHNUMB + '''  and CB_Trans_Type=''R'' and SEQNUMBR = 16384')  end  else if @Window = 3   begin  exec ('declare CMREP cursor for  select CB100000.CB_Trans_Type, CBEU1102.CB_Doc_No, CBEU1102.CHEKBKID, CB100000.SERIES  from CB100000 inner join  CBEU1102 on CB100000.ORDOCNUM = CBEU1102.CB_Doc_No and  CB100000.CHEKBKID = CBEU1102.CHEKBKID and  CB100000.CB_Type = CBEU1102.CB_Ledger_Type  where CBEU1102.CHEKBKID = ''' + @BACHNUMB + '''  and CB100000.SEQNUMBR = 16384 and  CB100000.CB_Trans_Type <> ''T'' and  len(rtrim(ltrim(CB100000.DOCNUMBR))) = 0  order by CBEU1102.DEX_ROW_ID')  end  open CMREP  fetch next from  CMREP into @TRANTYPE,@CHEKNMBR,@CHEKBKID,@SERIES  while @@fetch_status = 0  begin  set @aaSubLedgerHdrID = 0  exec aagInitialiseAABMHdr  @TRANTYPE,  @CHEKNMBR,  @CHEKBKID ,  @SERIES,  1,  @aaSubLedgerHdrID output,  @create ,  @AcctLinked,  @WinOpen,  @DistCnt  if @aaSubLedgerHdrID <> 0  begin  if  @REPTOOPT = 1   begin  exec aagUpdateAABMReportTable  @aaSubLedgerHdrID,  0,  @USERID1,  1  end  else if @REPTOOPT = 2   begin   exec aagUpdateAABMReportTable  @aaSubLedgerHdrID,  0,  @USERID1,  1  select @isval = 0  exec aagValidateCodeSubLedHdr 'AAG20002', 'AAG20003',  'AAG2000E', @aaSubLedgerHdrID , @isval output,@UserID,@Right  end  else if @REPTOOPT = 3   begin  select @isval = 0  exec aagValidateCodeSubLedHdr 'AAG20002', 'AAG20003',  'AAG2000E', @aaSubLedgerHdrID , @isval output,@UserID,@Right  if @isval = 0  begin  exec aagUpdateAABMReportTable  @aaSubLedgerHdrID,  0,  @USERID1,  0  end  end  end  if @ErrorCnt=0  select @ErrorCnt = count(*) from AAG2000E WHERE aaSubLedgerHdrID=@aaSubLedgerHdrID  fetch next from  CMREP into @TRANTYPE,@CHEKNMBR,@CHEKBKID,@SERIES  end  close CMREP  deallocate CMREP end    
GO
GRANT EXECUTE ON  [dbo].[aagUpdateforAABMEditListPostJrnl] TO [DYNGRP]
GO