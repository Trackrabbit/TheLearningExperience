SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR10501SS_1] (@EMPLOYID char(15), @Pay_Schedule char(15), @YEAR1 smallint, @PERIODID smallint, @TRXNUMBER int) AS  set nocount on SELECT TOP 1  EMPLOYID, Pay_Schedule, YEAR1, PERIODID, TRXNUMBER, TRXDATE, PayCode, UNTSTOPY, DEPRTMNT, JOBTITLE, STATECD, LOCALTAX, SHFTCODE, DAYSWRDK, WKSWRKD, SEQNUMBR, DEX_ROW_ID, CMMTTEXT FROM .UPR10501 WHERE EMPLOYID = @EMPLOYID AND Pay_Schedule = @Pay_Schedule AND YEAR1 = @YEAR1 AND PERIODID = @PERIODID AND TRXNUMBER = @TRXNUMBER ORDER BY EMPLOYID ASC, Pay_Schedule ASC, YEAR1 ASC, PERIODID ASC, TRXNUMBER ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10501SS_1] TO [DYNGRP]
GO
