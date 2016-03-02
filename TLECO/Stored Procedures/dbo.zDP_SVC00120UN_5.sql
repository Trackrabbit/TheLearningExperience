SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00120UN_5] (@BS int, @POSTED tinyint, @STRTDATE datetime, @ENDDATE datetime, @SVC_Document_Type smallint, @RCRDTYPE smallint, @DOCID char(15), @POSTED_RS tinyint, @STRTDATE_RS datetime, @ENDDATE_RS datetime, @SVC_Document_Type_RS smallint, @RCRDTYPE_RS smallint, @DOCID_RS char(15), @POSTED_RE tinyint, @STRTDATE_RE datetime, @ENDDATE_RE datetime, @SVC_Document_Type_RE smallint, @RCRDTYPE_RE smallint, @DOCID_RE char(15)) AS  set nocount on IF @POSTED_RS IS NULL BEGIN SELECT TOP 25  SVC_Document_Type, RCRDTYPE, DOCID, EQPLINE, LNITMSEQ, TECHID, Work_Type, STATIONID, EMPLOYID, PayCode, DEPRTMNT, JOBTITLE, STATECD, LOCALTAX, SUTASTAT, WRKRCOMP, SHFTCODE, TRXHRUNT, STRTDATE, STRTTIME, ENDDATE, ENDTIME, POSTED, DEX_ROW_ID FROM .SVC00120 WHERE ( POSTED = @POSTED AND STRTDATE = @STRTDATE AND ENDDATE = @ENDDATE AND SVC_Document_Type = @SVC_Document_Type AND RCRDTYPE = @RCRDTYPE AND DOCID > @DOCID OR POSTED = @POSTED AND STRTDATE = @STRTDATE AND ENDDATE = @ENDDATE AND SVC_Document_Type = @SVC_Document_Type AND RCRDTYPE > @RCRDTYPE OR POSTED = @POSTED AND STRTDATE = @STRTDATE AND ENDDATE = @ENDDATE AND SVC_Document_Type > @SVC_Document_Type OR POSTED = @POSTED AND STRTDATE = @STRTDATE AND ENDDATE > @ENDDATE OR POSTED = @POSTED AND STRTDATE > @STRTDATE OR POSTED > @POSTED ) ORDER BY POSTED ASC, STRTDATE ASC, ENDDATE ASC, SVC_Document_Type ASC, RCRDTYPE ASC, DOCID ASC, DEX_ROW_ID ASC END ELSE IF @POSTED_RS = @POSTED_RE BEGIN SELECT TOP 25  SVC_Document_Type, RCRDTYPE, DOCID, EQPLINE, LNITMSEQ, TECHID, Work_Type, STATIONID, EMPLOYID, PayCode, DEPRTMNT, JOBTITLE, STATECD, LOCALTAX, SUTASTAT, WRKRCOMP, SHFTCODE, TRXHRUNT, STRTDATE, STRTTIME, ENDDATE, ENDTIME, POSTED, DEX_ROW_ID FROM .SVC00120 WHERE POSTED = @POSTED_RS AND STRTDATE BETWEEN @STRTDATE_RS AND @STRTDATE_RE AND ENDDATE BETWEEN @ENDDATE_RS AND @ENDDATE_RE AND SVC_Document_Type BETWEEN @SVC_Document_Type_RS AND @SVC_Document_Type_RE AND RCRDTYPE BETWEEN @RCRDTYPE_RS AND @RCRDTYPE_RE AND DOCID BETWEEN @DOCID_RS AND @DOCID_RE AND ( POSTED = @POSTED AND STRTDATE = @STRTDATE AND ENDDATE = @ENDDATE AND SVC_Document_Type = @SVC_Document_Type AND RCRDTYPE = @RCRDTYPE AND DOCID > @DOCID OR POSTED = @POSTED AND STRTDATE = @STRTDATE AND ENDDATE = @ENDDATE AND SVC_Document_Type = @SVC_Document_Type AND RCRDTYPE > @RCRDTYPE OR POSTED = @POSTED AND STRTDATE = @STRTDATE AND ENDDATE = @ENDDATE AND SVC_Document_Type > @SVC_Document_Type OR POSTED = @POSTED AND STRTDATE = @STRTDATE AND ENDDATE > @ENDDATE OR POSTED = @POSTED AND STRTDATE > @STRTDATE OR POSTED > @POSTED ) ORDER BY POSTED ASC, STRTDATE ASC, ENDDATE ASC, SVC_Document_Type ASC, RCRDTYPE ASC, DOCID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  SVC_Document_Type, RCRDTYPE, DOCID, EQPLINE, LNITMSEQ, TECHID, Work_Type, STATIONID, EMPLOYID, PayCode, DEPRTMNT, JOBTITLE, STATECD, LOCALTAX, SUTASTAT, WRKRCOMP, SHFTCODE, TRXHRUNT, STRTDATE, STRTTIME, ENDDATE, ENDTIME, POSTED, DEX_ROW_ID FROM .SVC00120 WHERE POSTED BETWEEN @POSTED_RS AND @POSTED_RE AND STRTDATE BETWEEN @STRTDATE_RS AND @STRTDATE_RE AND ENDDATE BETWEEN @ENDDATE_RS AND @ENDDATE_RE AND SVC_Document_Type BETWEEN @SVC_Document_Type_RS AND @SVC_Document_Type_RE AND RCRDTYPE BETWEEN @RCRDTYPE_RS AND @RCRDTYPE_RE AND DOCID BETWEEN @DOCID_RS AND @DOCID_RE AND ( POSTED = @POSTED AND STRTDATE = @STRTDATE AND ENDDATE = @ENDDATE AND SVC_Document_Type = @SVC_Document_Type AND RCRDTYPE = @RCRDTYPE AND DOCID > @DOCID OR POSTED = @POSTED AND STRTDATE = @STRTDATE AND ENDDATE = @ENDDATE AND SVC_Document_Type = @SVC_Document_Type AND RCRDTYPE > @RCRDTYPE OR POSTED = @POSTED AND STRTDATE = @STRTDATE AND ENDDATE = @ENDDATE AND SVC_Document_Type > @SVC_Document_Type OR POSTED = @POSTED AND STRTDATE = @STRTDATE AND ENDDATE > @ENDDATE OR POSTED = @POSTED AND STRTDATE > @STRTDATE OR POSTED > @POSTED ) ORDER BY POSTED ASC, STRTDATE ASC, ENDDATE ASC, SVC_Document_Type ASC, RCRDTYPE ASC, DOCID ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00120UN_5] TO [DYNGRP]
GO
