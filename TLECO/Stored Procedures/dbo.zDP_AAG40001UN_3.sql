SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG40001UN_3] (@BS int, @aaGLHdrID int, @INTERID char(5), @ACTINDX int, @SEQNUMBR int, @aaGLHdrID_RS int, @INTERID_RS char(5), @ACTINDX_RS int, @SEQNUMBR_RS int, @aaGLHdrID_RE int, @INTERID_RE char(5), @ACTINDX_RE int, @SEQNUMBR_RE int) AS  set nocount on IF @aaGLHdrID_RS IS NULL BEGIN SELECT TOP 25  aaGLHdrID, aaGLDistID, INTERID, CorrespondingUnit, ACTINDX, ACCTTYPE, aaBrowseType, DECPLACS, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, DENXRATE, MCTRXSTT, SEQNUMBR, aaCustID, aaVendID, aaSiteID, aaItemID, EMPLOYID, aaAssetID, aaBookID, aaCopyStatus, SOURCDOC, aaChangeDate, aaChangeTime, AA_CL_Status, DEX_ROW_TS, DEX_ROW_ID FROM .AAG40001 WHERE ( aaGLHdrID = @aaGLHdrID AND INTERID = @INTERID AND ACTINDX = @ACTINDX AND SEQNUMBR > @SEQNUMBR OR aaGLHdrID = @aaGLHdrID AND INTERID = @INTERID AND ACTINDX > @ACTINDX OR aaGLHdrID = @aaGLHdrID AND INTERID > @INTERID OR aaGLHdrID > @aaGLHdrID ) ORDER BY aaGLHdrID ASC, INTERID ASC, ACTINDX ASC, SEQNUMBR ASC, DEX_ROW_ID ASC END ELSE IF @aaGLHdrID_RS = @aaGLHdrID_RE BEGIN SELECT TOP 25  aaGLHdrID, aaGLDistID, INTERID, CorrespondingUnit, ACTINDX, ACCTTYPE, aaBrowseType, DECPLACS, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, DENXRATE, MCTRXSTT, SEQNUMBR, aaCustID, aaVendID, aaSiteID, aaItemID, EMPLOYID, aaAssetID, aaBookID, aaCopyStatus, SOURCDOC, aaChangeDate, aaChangeTime, AA_CL_Status, DEX_ROW_TS, DEX_ROW_ID FROM .AAG40001 WHERE aaGLHdrID = @aaGLHdrID_RS AND INTERID BETWEEN @INTERID_RS AND @INTERID_RE AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND ( aaGLHdrID = @aaGLHdrID AND INTERID = @INTERID AND ACTINDX = @ACTINDX AND SEQNUMBR > @SEQNUMBR OR aaGLHdrID = @aaGLHdrID AND INTERID = @INTERID AND ACTINDX > @ACTINDX OR aaGLHdrID = @aaGLHdrID AND INTERID > @INTERID OR aaGLHdrID > @aaGLHdrID ) ORDER BY aaGLHdrID ASC, INTERID ASC, ACTINDX ASC, SEQNUMBR ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  aaGLHdrID, aaGLDistID, INTERID, CorrespondingUnit, ACTINDX, ACCTTYPE, aaBrowseType, DECPLACS, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, DENXRATE, MCTRXSTT, SEQNUMBR, aaCustID, aaVendID, aaSiteID, aaItemID, EMPLOYID, aaAssetID, aaBookID, aaCopyStatus, SOURCDOC, aaChangeDate, aaChangeTime, AA_CL_Status, DEX_ROW_TS, DEX_ROW_ID FROM .AAG40001 WHERE aaGLHdrID BETWEEN @aaGLHdrID_RS AND @aaGLHdrID_RE AND INTERID BETWEEN @INTERID_RS AND @INTERID_RE AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND ( aaGLHdrID = @aaGLHdrID AND INTERID = @INTERID AND ACTINDX = @ACTINDX AND SEQNUMBR > @SEQNUMBR OR aaGLHdrID = @aaGLHdrID AND INTERID = @INTERID AND ACTINDX > @ACTINDX OR aaGLHdrID = @aaGLHdrID AND INTERID > @INTERID OR aaGLHdrID > @aaGLHdrID ) ORDER BY aaGLHdrID ASC, INTERID ASC, ACTINDX ASC, SEQNUMBR ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG40001UN_3] TO [DYNGRP]
GO
