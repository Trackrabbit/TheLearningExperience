SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG10001SS_2] (@INTERID char(5), @aaGLWorkHdrID int, @SQNCLINE numeric(19,5)) AS  set nocount on SELECT TOP 1  aaGLWorkHdrID, aaGLWorkDistID, INTERID, CorrespondingUnit, ACTINDX, ACCTTYPE, aaBrowseType, DECPLACS, FXDORVAR, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, DENXRATE, MCTRXSTT, SQNCLINE, aaCustID, aaVendID, aaSiteID, aaItemID, EMPLOYID, aaAssetID, aaBookID, aaCopyStatus, aaWinWasOpen, aaOFFSETAcct, aaDistErrors, aaChangeDate, aaChangeTime, AA_CL_Status, DEX_ROW_TS, DEX_ROW_ID FROM .AAG10001 WHERE INTERID = @INTERID AND aaGLWorkHdrID = @aaGLWorkHdrID AND SQNCLINE = @SQNCLINE ORDER BY INTERID ASC, aaGLWorkHdrID ASC, SQNCLINE ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG10001SS_2] TO [DYNGRP]
GO
