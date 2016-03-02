SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR30501F_3] (@EMPLOYID_RS char(15), @Pay_Schedule_RS char(15), @YEAR1_RS smallint, @PERIODID_RS smallint, @TRXDATE_RS datetime, @TRXNUMBER_RS int, @EMPLOYID_RE char(15), @Pay_Schedule_RE char(15), @YEAR1_RE smallint, @PERIODID_RE smallint, @TRXDATE_RE datetime, @TRXNUMBER_RE int) AS  set nocount on IF @EMPLOYID_RS IS NULL BEGIN SELECT TOP 25  EMPLOYID, Pay_Schedule, YEAR1, PERIODID, TRXNUMBER, TRXDATE, PayCode, UNTSTOPY, DEPRTMNT, JOBTITLE, STATECD, LOCALTAX, SHFTCODE, DAYSWRDK, WKSWRKD, SEQNUMBR, DEX_ROW_ID, CMMTTEXT FROM .UPR30501 ORDER BY EMPLOYID ASC, Pay_Schedule ASC, YEAR1 ASC, PERIODID ASC, TRXDATE ASC, TRXNUMBER ASC END ELSE IF @EMPLOYID_RS = @EMPLOYID_RE BEGIN SELECT TOP 25  EMPLOYID, Pay_Schedule, YEAR1, PERIODID, TRXNUMBER, TRXDATE, PayCode, UNTSTOPY, DEPRTMNT, JOBTITLE, STATECD, LOCALTAX, SHFTCODE, DAYSWRDK, WKSWRKD, SEQNUMBR, DEX_ROW_ID, CMMTTEXT FROM .UPR30501 WHERE EMPLOYID = @EMPLOYID_RS AND Pay_Schedule BETWEEN @Pay_Schedule_RS AND @Pay_Schedule_RE AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE AND TRXDATE BETWEEN @TRXDATE_RS AND @TRXDATE_RE AND TRXNUMBER BETWEEN @TRXNUMBER_RS AND @TRXNUMBER_RE ORDER BY EMPLOYID ASC, Pay_Schedule ASC, YEAR1 ASC, PERIODID ASC, TRXDATE ASC, TRXNUMBER ASC END ELSE BEGIN SELECT TOP 25  EMPLOYID, Pay_Schedule, YEAR1, PERIODID, TRXNUMBER, TRXDATE, PayCode, UNTSTOPY, DEPRTMNT, JOBTITLE, STATECD, LOCALTAX, SHFTCODE, DAYSWRDK, WKSWRKD, SEQNUMBR, DEX_ROW_ID, CMMTTEXT FROM .UPR30501 WHERE EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND Pay_Schedule BETWEEN @Pay_Schedule_RS AND @Pay_Schedule_RE AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE AND TRXDATE BETWEEN @TRXDATE_RS AND @TRXDATE_RE AND TRXNUMBER BETWEEN @TRXNUMBER_RS AND @TRXNUMBER_RE ORDER BY EMPLOYID ASC, Pay_Schedule ASC, YEAR1 ASC, PERIODID ASC, TRXDATE ASC, TRXNUMBER ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR30501F_3] TO [DYNGRP]
GO
