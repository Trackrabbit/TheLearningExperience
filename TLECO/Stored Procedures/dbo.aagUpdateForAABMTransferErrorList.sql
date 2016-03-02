SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create  PROCEDURE [dbo].[aagUpdateForAABMTransferErrorList]  @DOCNUMBR CHAR(21),  @REPTOOPT INT,  @Window TINYINT,  @To_From_Main_Table TINYINT,  @ErrorCnt INT OUTPUT,  @DOCNUMBR_IO CHAR(21) OUTPUT,  @CHEKBKID_IO CHAR(15) OUTPUT,  @aaSubLedgerHdrID_IO INT OUTPUT,  @UserID varchar(20),  @Right   int AS BEGIN  DECLARE @TRANTYPE CHAR(1),  @CHEKNMBR CHAR(21),  @CHEKBKID CHAR(15),  @SERIES SMALLINT,  @aaSubLedgerHdrID INT,  @create TINYINT,  @AcctLinked INT,  @WinOpen INT,  @DistCnt INT,  @USERID1 CHAR(15),  @isval TINYINT  SELECT @USERID1  = SYSTEM_USER  IF @Window = 8   BEGIN   IF @To_From_Main_Table = 1  BEGIN  exec ('DECLARE CMREP CURSOR FOR  SELECT ''C'',''T''+ltrim(rtrim(''' + @DOCNUMBR + '''))+''/''+CB_BT_CHG_Number, CBKIDCSH,0  FROM CB990021  WHERE CB_Transfer_No = ''' + @DOCNUMBR + ''' AND   len(ltrim(rtrim(CB_BT_CHG_Number ))) <> 0')  END  IF @To_From_Main_Table = 2  BEGIN  exec ('DECLARE CMREP CURSOR FOR  SELECT ''C'',''T''+ltrim(rtrim(''' + @DOCNUMBR + '''))+''/''+CB_BT_CHG_Number, CHEKBKID,0  FROM CB990023   WHERE CB_Transfer_No = ''' + @DOCNUMBR + ''' AND   len(ltrim(rtrim(CB_BT_CHG_Number ))) <> 0')  END  END  ELSE IF @Window = 7   BEGIN  exec ('DECLARE CMREP CURSOR FOR  SELECT TOP 1 ''T'',CB_Transfer_No, '''',0  FROM CB990021  WHERE CB_Transfer_No = ''' + @DOCNUMBR + '''')  END  OPEN CMREP   FETCH NEXT FROM CMREP INTO @TRANTYPE,@CHEKNMBR,@CHEKBKID,@SERIES  WHILE @@fetch_status = 0  BEGIN  EXEC aagInitialiseAABMHdr  @TRANTYPE,  @CHEKNMBR,  @CHEKBKID ,  @SERIES,  1,  @aaSubLedgerHdrID OUTPUT,  @create ,  @AcctLinked,  @WinOpen,   @DistCnt  IF  @REPTOOPT = 1   BEGIN  EXEC aagUpdateAABMReportTable  @aaSubLedgerHdrID,  0,  @USERID1,  1  END  ELSE IF @REPTOOPT = 2   BEGIN   EXEC aagUpdateAABMReportTable  @aaSubLedgerHdrID,  0,  @USERID1,  1  SELECT @isval = 0  EXEC aagValidateCodeSubLedHdr 'AAG20002', 'AAG20003',  'AAG2000E', @aaSubLedgerHdrID , @isval OUTPUT,@UserID,@Right   if @ErrorCnt=0  select @ErrorCnt = count(*) from AAG2000E WHERE aaSubLedgerHdrID=@aaSubLedgerHdrID  END  ELSE IF @REPTOOPT = 3   BEGIN   SELECT @isval = 0  EXEC aagValidateCodeSubLedHdr 'AAG20002', 'AAG20003',  'AAG2000E', @aaSubLedgerHdrID , @isval OUTPUT,@UserID,@Right  if @ErrorCnt=0  select @ErrorCnt = count(*) from AAG2000E WHERE aaSubLedgerHdrID=@aaSubLedgerHdrID  IF @ErrorCnt>0   BEGIN  SET @DOCNUMBR_IO = @CHEKNMBR  SET @CHEKBKID_IO = @CHEKBKID  SET @aaSubLedgerHdrID_IO = @aaSubLedgerHdrID  CLOSE CMREP  DEALLOCATE CMREP  RETURN  END  END  FETCH NEXT FROM  CMREP INTO @TRANTYPE,@CHEKNMBR,@CHEKBKID,@SERIES  END   CLOSE CMREP  DEALLOCATE CMREP  END    
GO
GRANT EXECUTE ON  [dbo].[aagUpdateForAABMTransferErrorList] TO [DYNGRP]
GO