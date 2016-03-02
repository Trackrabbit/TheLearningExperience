SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG30001F_2] (@aaGLHdrID_RS int, @ACCTTYPE_RS smallint, @aaGLDistID_RS int, @aaGLHdrID_RE int, @ACCTTYPE_RE smallint, @aaGLDistID_RE int) AS  set nocount on IF @aaGLHdrID_RS IS NULL BEGIN SELECT TOP 25  aaGLHdrID, aaGLDistID, INTERID, CorrespondingUnit, ACTINDX, ACCTTYPE, aaBrowseType, DECPLACS, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, DENXRATE, MCTRXSTT, SEQNUMBR, aaCustID, aaVendID, aaSiteID, aaItemID, EMPLOYID, aaAssetID, aaBookID, aaCopyStatus, SOURCDOC, aaChangeDate, aaChangeTime, AA_CL_Status, DEX_ROW_TS, DEX_ROW_ID FROM .AAG30001 ORDER BY aaGLHdrID ASC, ACCTTYPE ASC, aaGLDistID ASC, DEX_ROW_ID ASC END ELSE IF @aaGLHdrID_RS = @aaGLHdrID_RE BEGIN SELECT TOP 25  aaGLHdrID, aaGLDistID, INTERID, CorrespondingUnit, ACTINDX, ACCTTYPE, aaBrowseType, DECPLACS, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, DENXRATE, MCTRXSTT, SEQNUMBR, aaCustID, aaVendID, aaSiteID, aaItemID, EMPLOYID, aaAssetID, aaBookID, aaCopyStatus, SOURCDOC, aaChangeDate, aaChangeTime, AA_CL_Status, DEX_ROW_TS, DEX_ROW_ID FROM .AAG30001 WHERE aaGLHdrID = @aaGLHdrID_RS AND ACCTTYPE BETWEEN @ACCTTYPE_RS AND @ACCTTYPE_RE AND aaGLDistID BETWEEN @aaGLDistID_RS AND @aaGLDistID_RE ORDER BY aaGLHdrID ASC, ACCTTYPE ASC, aaGLDistID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  aaGLHdrID, aaGLDistID, INTERID, CorrespondingUnit, ACTINDX, ACCTTYPE, aaBrowseType, DECPLACS, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, DENXRATE, MCTRXSTT, SEQNUMBR, aaCustID, aaVendID, aaSiteID, aaItemID, EMPLOYID, aaAssetID, aaBookID, aaCopyStatus, SOURCDOC, aaChangeDate, aaChangeTime, AA_CL_Status, DEX_ROW_TS, DEX_ROW_ID FROM .AAG30001 WHERE aaGLHdrID BETWEEN @aaGLHdrID_RS AND @aaGLHdrID_RE AND ACCTTYPE BETWEEN @ACCTTYPE_RS AND @ACCTTYPE_RE AND aaGLDistID BETWEEN @aaGLDistID_RS AND @aaGLDistID_RE ORDER BY aaGLHdrID ASC, ACCTTYPE ASC, aaGLDistID ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG30001F_2] TO [DYNGRP]
GO
