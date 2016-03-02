SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG60002SS_2] (@USERID char(15), @TRXBTCHSRC char(51), @aaGLWorkHdrID int) AS  set nocount on SELECT TOP 1  USERID, TRXBTCHSRC, aaGLWorkHdrID, aaGLWorkDistID, aaGLWorkAssignID, DEBITAMT, SERIES, CRDTAMNT, ORDBTAMT, ORCRDAMT, DistRef, DEX_ROW_ID FROM .AAG60002 WHERE USERID = @USERID AND TRXBTCHSRC = @TRXBTCHSRC AND aaGLWorkHdrID = @aaGLWorkHdrID ORDER BY USERID ASC, TRXBTCHSRC ASC, aaGLWorkHdrID ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG60002SS_2] TO [DYNGRP]
GO
