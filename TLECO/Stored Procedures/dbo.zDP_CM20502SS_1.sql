SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CM20502SS_1] (@AUDITTRAIL char(13), @RECONUM numeric(19,5), @CMRECNUM numeric(19,5)) AS  set nocount on SELECT TOP 1  AUDITTRAIL, CMRECNUM, RECONUM, CMTrxNum, CMTrxType, CMLinkID, TRXDATE, TRXAMNT, clearedate, ClrdAmt, CURNCYID, paidtorcvdfrom, DSCRIPTN, DEPTYPE, SOURCDOC, SRCDOCTYP, SRCDOCNUM, USERID, CHEKBKID, DEX_ROW_ID FROM .CM20502 WHERE AUDITTRAIL = @AUDITTRAIL AND RECONUM = @RECONUM AND CMRECNUM = @CMRECNUM ORDER BY AUDITTRAIL ASC, RECONUM ASC, CMRECNUM ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CM20502SS_1] TO [DYNGRP]
GO
