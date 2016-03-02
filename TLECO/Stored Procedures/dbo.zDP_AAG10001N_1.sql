SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG10001N_1] (@BS int, @aaGLWorkHdrID int, @aaGLWorkDistID int, @aaGLWorkHdrID_RS int, @aaGLWorkDistID_RS int, @aaGLWorkHdrID_RE int, @aaGLWorkDistID_RE int) AS  set nocount on IF @aaGLWorkHdrID_RS IS NULL BEGIN SELECT TOP 25  aaGLWorkHdrID, aaGLWorkDistID, INTERID, CorrespondingUnit, ACTINDX, ACCTTYPE, aaBrowseType, DECPLACS, FXDORVAR, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, DENXRATE, MCTRXSTT, SQNCLINE, aaCustID, aaVendID, aaSiteID, aaItemID, EMPLOYID, aaAssetID, aaBookID, aaCopyStatus, aaWinWasOpen, aaOFFSETAcct, aaDistErrors, aaChangeDate, aaChangeTime, AA_CL_Status, DEX_ROW_TS, DEX_ROW_ID FROM .AAG10001 WHERE ( aaGLWorkHdrID = @aaGLWorkHdrID AND aaGLWorkDistID > @aaGLWorkDistID OR aaGLWorkHdrID > @aaGLWorkHdrID ) ORDER BY aaGLWorkHdrID ASC, aaGLWorkDistID ASC END ELSE IF @aaGLWorkHdrID_RS = @aaGLWorkHdrID_RE BEGIN SELECT TOP 25  aaGLWorkHdrID, aaGLWorkDistID, INTERID, CorrespondingUnit, ACTINDX, ACCTTYPE, aaBrowseType, DECPLACS, FXDORVAR, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, DENXRATE, MCTRXSTT, SQNCLINE, aaCustID, aaVendID, aaSiteID, aaItemID, EMPLOYID, aaAssetID, aaBookID, aaCopyStatus, aaWinWasOpen, aaOFFSETAcct, aaDistErrors, aaChangeDate, aaChangeTime, AA_CL_Status, DEX_ROW_TS, DEX_ROW_ID FROM .AAG10001 WHERE aaGLWorkHdrID = @aaGLWorkHdrID_RS AND aaGLWorkDistID BETWEEN @aaGLWorkDistID_RS AND @aaGLWorkDistID_RE AND ( aaGLWorkHdrID = @aaGLWorkHdrID AND aaGLWorkDistID > @aaGLWorkDistID OR aaGLWorkHdrID > @aaGLWorkHdrID ) ORDER BY aaGLWorkHdrID ASC, aaGLWorkDistID ASC END ELSE BEGIN SELECT TOP 25  aaGLWorkHdrID, aaGLWorkDistID, INTERID, CorrespondingUnit, ACTINDX, ACCTTYPE, aaBrowseType, DECPLACS, FXDORVAR, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, DENXRATE, MCTRXSTT, SQNCLINE, aaCustID, aaVendID, aaSiteID, aaItemID, EMPLOYID, aaAssetID, aaBookID, aaCopyStatus, aaWinWasOpen, aaOFFSETAcct, aaDistErrors, aaChangeDate, aaChangeTime, AA_CL_Status, DEX_ROW_TS, DEX_ROW_ID FROM .AAG10001 WHERE aaGLWorkHdrID BETWEEN @aaGLWorkHdrID_RS AND @aaGLWorkHdrID_RE AND aaGLWorkDistID BETWEEN @aaGLWorkDistID_RS AND @aaGLWorkDistID_RE AND ( aaGLWorkHdrID = @aaGLWorkHdrID AND aaGLWorkDistID > @aaGLWorkDistID OR aaGLWorkHdrID > @aaGLWorkHdrID ) ORDER BY aaGLWorkHdrID ASC, aaGLWorkDistID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG10001N_1] TO [DYNGRP]
GO
