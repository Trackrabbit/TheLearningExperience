SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00120N_2] (@BS int, @TECHID char(11), @DEX_ROW_ID int, @TECHID_RS char(11), @TECHID_RE char(11)) AS  set nocount on IF @TECHID_RS IS NULL BEGIN SELECT TOP 25  SVC_Document_Type, RCRDTYPE, DOCID, EQPLINE, LNITMSEQ, TECHID, Work_Type, STATIONID, EMPLOYID, PayCode, DEPRTMNT, JOBTITLE, STATECD, LOCALTAX, SUTASTAT, WRKRCOMP, SHFTCODE, TRXHRUNT, STRTDATE, STRTTIME, ENDDATE, ENDTIME, POSTED, DEX_ROW_ID FROM .SVC00120 WHERE ( TECHID = @TECHID AND DEX_ROW_ID > @DEX_ROW_ID OR TECHID > @TECHID ) ORDER BY TECHID ASC, DEX_ROW_ID ASC END ELSE IF @TECHID_RS = @TECHID_RE BEGIN SELECT TOP 25  SVC_Document_Type, RCRDTYPE, DOCID, EQPLINE, LNITMSEQ, TECHID, Work_Type, STATIONID, EMPLOYID, PayCode, DEPRTMNT, JOBTITLE, STATECD, LOCALTAX, SUTASTAT, WRKRCOMP, SHFTCODE, TRXHRUNT, STRTDATE, STRTTIME, ENDDATE, ENDTIME, POSTED, DEX_ROW_ID FROM .SVC00120 WHERE TECHID = @TECHID_RS AND ( TECHID = @TECHID AND DEX_ROW_ID > @DEX_ROW_ID OR TECHID > @TECHID ) ORDER BY TECHID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  SVC_Document_Type, RCRDTYPE, DOCID, EQPLINE, LNITMSEQ, TECHID, Work_Type, STATIONID, EMPLOYID, PayCode, DEPRTMNT, JOBTITLE, STATECD, LOCALTAX, SUTASTAT, WRKRCOMP, SHFTCODE, TRXHRUNT, STRTDATE, STRTTIME, ENDDATE, ENDTIME, POSTED, DEX_ROW_ID FROM .SVC00120 WHERE TECHID BETWEEN @TECHID_RS AND @TECHID_RE AND ( TECHID = @TECHID AND DEX_ROW_ID > @DEX_ROW_ID OR TECHID > @TECHID ) ORDER BY TECHID ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00120N_2] TO [DYNGRP]
GO
