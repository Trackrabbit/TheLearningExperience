SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CM20100SS_3] (@AUDITTRAIL char(13), @RecNumControl numeric(19,5)) AS  set nocount on SELECT TOP 1  CMDNUMWK, RecNumControl, VOIDED, CNTRLTYP, AUDITTRAIL, CHEKBKID, CMTrxType, CMTrxNum, CMERRMSG, DEX_ROW_ID FROM .CM20100 WHERE AUDITTRAIL = @AUDITTRAIL AND RecNumControl = @RecNumControl ORDER BY AUDITTRAIL ASC, RecNumControl ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CM20100SS_3] TO [DYNGRP]
GO
