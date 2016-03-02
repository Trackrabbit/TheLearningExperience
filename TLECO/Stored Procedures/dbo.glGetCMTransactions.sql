SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[glGetCMTransactions]   @iStartDate DATETIME,   @iEndDate DATETIME,   @iCheckbookID CHAR(15),  @iCMTempTable VARCHAR(50)  AS  BEGIN  DECLARE @lSQLError INT ,  @l_cTransferTo VARCHAR(255),  @l_cTransferFrom VARCHAR(255)   SELECT @l_cTransferTo = RTRIM(SQL_MSG) FROM DYNAMICS..MESSAGES WHERE MSGNUM = 2122 AND Language_ID = 0  SELECT @l_cTransferFrom = RTRIM(SQL_MSG) FROM DYNAMICS..MESSAGES WHERE MSGNUM = 2123 AND Language_ID = 0   EXEC(  'INSERT INTO ' +  @iCMTempTable +  ' (POSTEDDT,CMTrxNum,TRXSORCE,DOCNUMBR,DOCTYPE,CMRECNUM,PAYMENT_AMOUNT,DepAmt,STRVAL,VOIDED)   SELECT DISTINCT TRXDATE, CMTrxNum, AUDITTRAIL, SRCDOCNUM, CMTrxType, CMRECNUM, TRXAMNT, 0, '''', VOIDED   FROM CM20200 WHERE CHEKBKID = ''' + @iCheckbookID + ''' AND   TRXDATE BETWEEN ''' + @iStartDate + ''' AND ''' + @iEndDate + ''' AND CMTrxType in (3,4,6,103,104) AND (SOURCDOC LIKE ''PM%'' OR SOURCDOC LIKE ''UP%'' OR SOURCDOC = ''CPY'')')   EXEC(  'INSERT INTO ' +  @iCMTempTable +  ' (POSTEDDT,CMTrxNum,TRXSORCE,DOCNUMBR,DOCTYPE,CMRECNUM,PAYMENT_AMOUNT,DepAmt,STRVAL,VOIDED)   SELECT DISTINCT TRXDATE, CMTrxNum, AUDITTRAIL, sRecNum, CMTrxType, CMRECNUM, TRXAMNT, 0, '''', VOIDED   FROM CM20200 WHERE CHEKBKID = ''' + @iCheckbookID + ''' AND   TRXDATE BETWEEN ''' + @iStartDate + ''' AND ''' + @iEndDate + ''' AND CMTrxType in (3,4,6,103,104) AND SOURCDOC NOT LIKE ''PM%'' AND SOURCDOC NOT LIKE ''UP%'' AND SOURCDOC <>''CPY''')    EXEC(  'INSERT INTO ' +  @iCMTempTable +  ' (POSTEDDT,CMTrxNum,TRXSORCE,DOCNUMBR,DOCTYPE,CMRECNUM,PAYMENT_AMOUNT,DepAmt,STRVAL,VOIDED)   SELECT DISTINCT TRXDATE, CMTrxNum, AUDITTRAIL, sRecNum, CMTrxType, CMRECNUM, 0, TRXAMNT, '''', VOIDED   FROM CM20200 WHERE CHEKBKID = ''' + @iCheckbookID + ''' AND   TRXDATE BETWEEN ''' + @iStartDate + ''' AND ''' + @iEndDate + ''' AND CMTrxType in (1,5,101,102) ')    EXEC(  'INSERT INTO ' +  @iCMTempTable +  ' (POSTEDDT,CMTrxNum,TRXSORCE,DOCNUMBR,DOCTYPE,CMRECNUM,PAYMENT_AMOUNT,DepAmt,STRVAL,VOIDED)   SELECT DISTINCT CM20300.GLPOSTDT, depositnumber, CM20300.AUDITTRAIL, CM20300.SRCDOCNUM, 2, CM20300.CMRECNUM, 0, RCPTAMT, '''', CM20300.VOIDED FROM CM20300   INNER JOIN CM20200 ON CM20300.depositnumber = CM20200.SRCDOCNUM WHERE DEPOSITED = 1 AND CM20200.CHEKBKID = CM20300.CHEKBKID AND CM20300.SRCDOCTYP <> 2 AND  DEPTYPE = 1  AND CM20200.CHEKBKID = ''' + @iCheckbookID + ''' AND   CM20200.TRXDATE BETWEEN ''' + @iStartDate + ''' AND ''' + @iEndDate + ''' ')    EXEC(  'INSERT INTO ' +  @iCMTempTable +  ' (POSTEDDT,CMTrxNum,TRXSORCE,DOCNUMBR,DOCTYPE,CMRECNUM,PAYMENT_AMOUNT,DepAmt,STRVAL,VOIDED)   SELECT DISTINCT CM20300.GLPOSTDT, depositnumber, CM20300.AUDITTRAIL, CM20300.CMRECNUM, 2, CM20300.CMRECNUM, 0, RCPTAMT, '''', CM20300.VOIDED FROM CM20300   INNER JOIN CM20200 ON CM20300.depositnumber = CM20200.SRCDOCNUM WHERE DEPOSITED = 1 AND CM20200.CHEKBKID = CM20300.CHEKBKID AND CM20300.SRCDOCTYP = 2 AND  DEPTYPE = 1  AND CM20200.CHEKBKID = ''' + @iCheckbookID + ''' AND   CM20200.TRXDATE BETWEEN ''' + @iStartDate + ''' AND ''' + @iEndDate + ''' ')    EXEC(  'INSERT INTO ' +  @iCMTempTable +  ' (POSTEDDT,CMTrxNum,TRXSORCE,DOCNUMBR,DOCTYPE,CMRECNUM,PAYMENT_AMOUNT,DepAmt,STRVAL,VOIDED)   SELECT DISTINCT CM20200.TRXDATE, CM20300.depositnumber, CM20200.AUDITTRAIL, CM20300.Cash_Account_Index, 0, CM20300.CMRECNUM, 0, CM20300.RLGANLOS, '''', CM20300.VOIDED  FROM CM20300  INNER JOIN CM20200 ON CM20300.CHEKBKID = CM20200.CHEKBKID AND CM20300.depositnumber = CM20200.CMTrxNum WHERE CM20200.CHEKBKID = ''' + @iCheckbookID + ''' AND   CM20200.TRXDATE BETWEEN ''' + @iStartDate + ''' AND ''' + @iEndDate + ''' AND CM20300.DEPOSITED = 1 AND CM20300.RLGANLOS <> 0')    EXEC(  'INSERT INTO ' +  @iCMTempTable +  ' (POSTEDDT,CMTrxNum,TRXSORCE,DOCNUMBR,DOCTYPE,CMRECNUM,PAYMENT_AMOUNT,DepAmt,STRVAL,VOIDED)   SELECT DISTINCT TRXDATE, CMTrxNum, AUDITTRAIL, Xfr_Record_Number, CMTrxType, CMRECNUM, TRXAMNT, 0, '''', VOIDED   FROM CM20200 WHERE CHEKBKID = ''' + @iCheckbookID + ''' AND   TRXDATE BETWEEN ''' + @iStartDate + ''' AND ''' + @iEndDate + ''' AND CMTrxType = 7 AND   paidtorcvdfrom LIKE SUBSTRING(LTRIM(RTRIM('''+ @l_cTransferTo + ''')), 1 , LEN(LTRIM(RTRIM('''+ @l_cTransferTo + '''))) - 1 ) ')    EXEC(  'INSERT INTO ' +  @iCMTempTable +  ' (POSTEDDT,CMTrxNum,TRXSORCE,DOCNUMBR,DOCTYPE,CMRECNUM,PAYMENT_AMOUNT,DepAmt,STRVAL,VOIDED)   SELECT DISTINCT TRXDATE, CMTrxNum, AUDITTRAIL, Xfr_Record_Number, CMTrxType, CMRECNUM, 0, TRXAMNT, '''', VOIDED   FROM CM20200 WHERE CHEKBKID = ''' + @iCheckbookID + ''' AND   TRXDATE BETWEEN ''' + @iStartDate + ''' AND ''' + @iEndDate + ''' AND CMTrxType = 7 AND   paidtorcvdfrom LIKE SUBSTRING(LTRIM(RTRIM('''+ @l_cTransferFrom + ''')), 1 , LEN(LTRIM(RTRIM('''+ @l_cTransferFrom + '''))) - 1 ) ')    EXEC(  'INSERT INTO ' +  @iCMTempTable +  ' (POSTEDDT,CMTrxNum,TRXSORCE,DOCNUMBR,DOCTYPE,CMRECNUM,PAYMENT_AMOUNT,DepAmt,STRVAL,VOIDED)   SELECT DISTINCT CM20200.VOIDDATE, CM20200.CMTrxNum, CM20100.AUDITTRAIL, CM20200.SRCDOCNUM, CM20200.CMTrxType, CM20100.RecNumControl, -TRXAMNT, 0, '''', CM20200.VOIDED FROM CM20200   INNER JOIN CM20100 ON CM20200.CHEKBKID = CM20100.CHEKBKID AND CM20200.CMRECNUM = CM20100.CMDNUMWK AND CM20200.CMTrxNum = CM20100.CMTrxNum  WHERE CM20200.CHEKBKID = ''' + @iCheckbookID + ''' AND CM20100.VOIDED = 1 AND CM20200.CMTrxType in (3,4,6,103,104) AND CM20200.AUDITTRAIL <> CM20100.AUDITTRAIL AND (SOURCDOC LIKE ''PM%'' OR SOURCDOC LIKE ''UP%'') AND  (CM20200.VOIDDATE >= ''' + @iStartDate + ''' AND CM20200.VOIDDATE <= ''' + @iEndDate + ''' )')   EXEC(  'INSERT INTO ' +  @iCMTempTable +  ' (POSTEDDT,CMTrxNum,TRXSORCE,DOCNUMBR,DOCTYPE,CMRECNUM,PAYMENT_AMOUNT,DepAmt,STRVAL,VOIDED)   SELECT DISTINCT CM20200.VOIDDATE, CM20200.CMTrxNum, CM20100.AUDITTRAIL, CM20200.sRecNum, CM20200.CMTrxType, CM20100.RecNumControl, -TRXAMNT, 0, '''', CM20200.VOIDED FROM CM20200   INNER JOIN CM20100 ON CM20200.CHEKBKID = CM20100.CHEKBKID AND CM20200.CMRECNUM = CM20100.CMDNUMWK AND CM20200.CMTrxNum = CM20100.CMTrxNum  WHERE CM20200.CHEKBKID = ''' + @iCheckbookID + ''' AND CM20100.VOIDED = 1 AND CM20200.CMTrxType in (3,4,6,103,104) AND SOURCDOC NOT LIKE ''PM%'' AND SOURCDOC NOT LIKE ''UP%'' AND  (CM20200.VOIDDATE >= ''' + @iStartDate + ''' AND CM20200.VOIDDATE <= ''' + @iEndDate + ''' )')    EXEC(  'INSERT INTO ' +  @iCMTempTable +  ' (POSTEDDT,CMTrxNum,TRXSORCE,DOCNUMBR,DOCTYPE,CMRECNUM,PAYMENT_AMOUNT,DepAmt,STRVAL,VOIDED)   SELECT DISTINCT CM20200.VOIDDATE, CM20200.CMTrxNum, CM20100.AUDITTRAIL, CM20200.sRecNum, CM20200.CMTrxType, CM20100.RecNumControl, 0, -TRXAMNT, '''', CM20200.VOIDED FROM CM20200   INNER JOIN CM20100 ON CM20200.CHEKBKID = CM20100.CHEKBKID AND CM20200.CMRECNUM = CM20100.CMDNUMWK AND CM20200.CMTrxNum = CM20100.CMTrxNum  WHERE CM20200.CHEKBKID = ''' + @iCheckbookID + ''' AND CM20100.VOIDED = 1 AND CM20200.CMTrxType in (1,5,101,102) AND   (CM20200.VOIDDATE >= ''' + @iStartDate + ''' AND CM20200.VOIDDATE <= ''' + @iEndDate + ''' )')    EXEC(  'INSERT INTO ' +  @iCMTempTable +  ' (POSTEDDT,CMTrxNum,TRXSORCE,DOCNUMBR,DOCTYPE,CMRECNUM,PAYMENT_AMOUNT,DepAmt,STRVAL,VOIDED)   SELECT DISTINCT CM20200.VOIDDATE, CM20200.CMTrxNum, CM20100.AUDITTRAIL, CM20200.Xfr_Record_Number, CM20200.CMTrxType, CM20100.RecNumControl, -TRXAMNT, 0, '''', CM20200.VOIDED FROM CM20200   INNER JOIN CM20100 ON CM20200.CHEKBKID = CM20100.CHEKBKID AND CM20200.CMRECNUM = CM20100.CMDNUMWK AND CM20200.CMTrxNum = CM20100.CMTrxNum  WHERE CM20200.CHEKBKID = ''' + @iCheckbookID + ''' AND CM20100.VOIDED = 1 AND (CM20200.VOIDDATE >= ''' + @iStartDate + ''' AND CM20200.VOIDDATE <= ''' + @iEndDate + ''' ) AND   CM20200.CMTrxType = 7 AND CM20200.paidtorcvdfrom LIKE SUBSTRING(LTRIM(RTRIM('''+ @l_cTransferTo + ''')), 1 , LEN(LTRIM(RTRIM('''+ @l_cTransferTo + '''))) - 1 ) ')   EXEC(  'INSERT INTO ' +  @iCMTempTable +  ' (POSTEDDT,CMTrxNum,TRXSORCE,DOCNUMBR,DOCTYPE,CMRECNUM,PAYMENT_AMOUNT,DepAmt,STRVAL,VOIDED)   SELECT DISTINCT CM20200.VOIDDATE, CM20200.CMTrxNum, CM20100.AUDITTRAIL, CM20200.Xfr_Record_Number, CM20200.CMTrxType, CM20100.RecNumControl, 0, -TRXAMNT, '''', CM20200.VOIDED FROM CM20200   INNER JOIN CM20100 ON CM20200.CHEKBKID = CM20100.CHEKBKID AND CM20200.CMRECNUM = CM20100.CMDNUMWK AND CM20200.CMTrxNum = CM20100.CMTrxNum  WHERE CM20200.CHEKBKID = ''' + @iCheckbookID + ''' AND CM20100.VOIDED = 1 AND (CM20200.VOIDDATE >= ''' + @iStartDate + ''' AND CM20200.VOIDDATE <= ''' + @iEndDate + ''' )  AND   CM20200.CMTrxType = 7 AND CM20200.paidtorcvdfrom LIKE SUBSTRING(LTRIM(RTRIM('''+ @l_cTransferFrom + ''')), 1 , LEN(LTRIM(RTRIM('''+ @l_cTransferFrom + '''))) - 1 )')   END    
GO
GRANT EXECUTE ON  [dbo].[glGetCMTransactions] TO [DYNGRP]
GO