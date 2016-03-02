SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG40001SI] (@aaGLHdrID int, @aaGLDistID int, @INTERID char(5), @CorrespondingUnit char(5), @ACTINDX int, @ACCTTYPE smallint, @aaBrowseType smallint, @DECPLACS smallint, @DEBITAMT numeric(19,5), @CRDTAMNT numeric(19,5), @ORDBTAMT numeric(19,5), @ORCRDAMT numeric(19,5), @CURNCYID char(15), @CURRNIDX smallint, @RATETPID char(15), @EXGTBLID char(15), @XCHGRATE numeric(19,7), @EXCHDATE datetime, @TIME1 datetime, @RTCLCMTD smallint, @DENXRATE numeric(19,7), @MCTRXSTT smallint, @SEQNUMBR int, @aaCustID char(15), @aaVendID char(15), @aaSiteID char(11), @aaItemID char(31), @EMPLOYID char(15), @aaAssetID char(21), @aaBookID char(15), @aaCopyStatus smallint, @SOURCDOC char(11), @aaChangeDate datetime, @aaChangeTime datetime, @AA_CL_Status tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AAG40001 (aaGLHdrID, aaGLDistID, INTERID, CorrespondingUnit, ACTINDX, ACCTTYPE, aaBrowseType, DECPLACS, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, DENXRATE, MCTRXSTT, SEQNUMBR, aaCustID, aaVendID, aaSiteID, aaItemID, EMPLOYID, aaAssetID, aaBookID, aaCopyStatus, SOURCDOC, aaChangeDate, aaChangeTime, AA_CL_Status) VALUES ( @aaGLHdrID, @aaGLDistID, @INTERID, @CorrespondingUnit, @ACTINDX, @ACCTTYPE, @aaBrowseType, @DECPLACS, @DEBITAMT, @CRDTAMNT, @ORDBTAMT, @ORCRDAMT, @CURNCYID, @CURRNIDX, @RATETPID, @EXGTBLID, @XCHGRATE, @EXCHDATE, @TIME1, @RTCLCMTD, @DENXRATE, @MCTRXSTT, @SEQNUMBR, @aaCustID, @aaVendID, @aaSiteID, @aaItemID, @EMPLOYID, @aaAssetID, @aaBookID, @aaCopyStatus, @SOURCDOC, @aaChangeDate, @aaChangeTime, @AA_CL_Status) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG40001SI] TO [DYNGRP]
GO
