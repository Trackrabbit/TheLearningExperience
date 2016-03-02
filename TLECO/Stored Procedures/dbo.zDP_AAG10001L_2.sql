SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG10001L_2] (@INTERID_RS char(5), @aaGLWorkHdrID_RS int, @SQNCLINE_RS numeric(19,5), @INTERID_RE char(5), @aaGLWorkHdrID_RE int, @SQNCLINE_RE numeric(19,5)) AS  set nocount on IF @INTERID_RS IS NULL BEGIN SELECT TOP 25  aaGLWorkHdrID, aaGLWorkDistID, INTERID, CorrespondingUnit, ACTINDX, ACCTTYPE, aaBrowseType, DECPLACS, FXDORVAR, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, DENXRATE, MCTRXSTT, SQNCLINE, aaCustID, aaVendID, aaSiteID, aaItemID, EMPLOYID, aaAssetID, aaBookID, aaCopyStatus, aaWinWasOpen, aaOFFSETAcct, aaDistErrors, aaChangeDate, aaChangeTime, AA_CL_Status, DEX_ROW_TS, DEX_ROW_ID FROM .AAG10001 ORDER BY INTERID DESC, aaGLWorkHdrID DESC, SQNCLINE DESC, DEX_ROW_ID DESC END ELSE IF @INTERID_RS = @INTERID_RE BEGIN SELECT TOP 25  aaGLWorkHdrID, aaGLWorkDistID, INTERID, CorrespondingUnit, ACTINDX, ACCTTYPE, aaBrowseType, DECPLACS, FXDORVAR, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, DENXRATE, MCTRXSTT, SQNCLINE, aaCustID, aaVendID, aaSiteID, aaItemID, EMPLOYID, aaAssetID, aaBookID, aaCopyStatus, aaWinWasOpen, aaOFFSETAcct, aaDistErrors, aaChangeDate, aaChangeTime, AA_CL_Status, DEX_ROW_TS, DEX_ROW_ID FROM .AAG10001 WHERE INTERID = @INTERID_RS AND aaGLWorkHdrID BETWEEN @aaGLWorkHdrID_RS AND @aaGLWorkHdrID_RE AND SQNCLINE BETWEEN @SQNCLINE_RS AND @SQNCLINE_RE ORDER BY INTERID DESC, aaGLWorkHdrID DESC, SQNCLINE DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  aaGLWorkHdrID, aaGLWorkDistID, INTERID, CorrespondingUnit, ACTINDX, ACCTTYPE, aaBrowseType, DECPLACS, FXDORVAR, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, DENXRATE, MCTRXSTT, SQNCLINE, aaCustID, aaVendID, aaSiteID, aaItemID, EMPLOYID, aaAssetID, aaBookID, aaCopyStatus, aaWinWasOpen, aaOFFSETAcct, aaDistErrors, aaChangeDate, aaChangeTime, AA_CL_Status, DEX_ROW_TS, DEX_ROW_ID FROM .AAG10001 WHERE INTERID BETWEEN @INTERID_RS AND @INTERID_RE AND aaGLWorkHdrID BETWEEN @aaGLWorkHdrID_RS AND @aaGLWorkHdrID_RE AND SQNCLINE BETWEEN @SQNCLINE_RS AND @SQNCLINE_RE ORDER BY INTERID DESC, aaGLWorkHdrID DESC, SQNCLINE DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG10001L_2] TO [DYNGRP]
GO
