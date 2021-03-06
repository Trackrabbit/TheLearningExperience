SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00120L_2] (@TECHID_RS char(11), @TECHID_RE char(11)) AS  set nocount on IF @TECHID_RS IS NULL BEGIN SELECT TOP 25  SVC_Document_Type, RCRDTYPE, DOCID, EQPLINE, LNITMSEQ, TECHID, Work_Type, STATIONID, EMPLOYID, PayCode, DEPRTMNT, JOBTITLE, STATECD, LOCALTAX, SUTASTAT, WRKRCOMP, SHFTCODE, TRXHRUNT, STRTDATE, STRTTIME, ENDDATE, ENDTIME, POSTED, DEX_ROW_ID FROM .SVC00120 ORDER BY TECHID DESC, DEX_ROW_ID DESC END ELSE IF @TECHID_RS = @TECHID_RE BEGIN SELECT TOP 25  SVC_Document_Type, RCRDTYPE, DOCID, EQPLINE, LNITMSEQ, TECHID, Work_Type, STATIONID, EMPLOYID, PayCode, DEPRTMNT, JOBTITLE, STATECD, LOCALTAX, SUTASTAT, WRKRCOMP, SHFTCODE, TRXHRUNT, STRTDATE, STRTTIME, ENDDATE, ENDTIME, POSTED, DEX_ROW_ID FROM .SVC00120 WHERE TECHID = @TECHID_RS ORDER BY TECHID DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  SVC_Document_Type, RCRDTYPE, DOCID, EQPLINE, LNITMSEQ, TECHID, Work_Type, STATIONID, EMPLOYID, PayCode, DEPRTMNT, JOBTITLE, STATECD, LOCALTAX, SUTASTAT, WRKRCOMP, SHFTCODE, TRXHRUNT, STRTDATE, STRTTIME, ENDDATE, ENDTIME, POSTED, DEX_ROW_ID FROM .SVC00120 WHERE TECHID BETWEEN @TECHID_RS AND @TECHID_RE ORDER BY TECHID DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00120L_2] TO [DYNGRP]
GO
