SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CM20100L_1] (@CMDNUMWK_RS numeric(19,5), @VOIDED_RS tinyint, @CMDNUMWK_RE numeric(19,5), @VOIDED_RE tinyint) AS  set nocount on IF @CMDNUMWK_RS IS NULL BEGIN SELECT TOP 25  CMDNUMWK, RecNumControl, VOIDED, CNTRLTYP, AUDITTRAIL, CHEKBKID, CMTrxType, CMTrxNum, CMERRMSG, DEX_ROW_ID FROM .CM20100 ORDER BY CMDNUMWK DESC, VOIDED DESC END ELSE IF @CMDNUMWK_RS = @CMDNUMWK_RE BEGIN SELECT TOP 25  CMDNUMWK, RecNumControl, VOIDED, CNTRLTYP, AUDITTRAIL, CHEKBKID, CMTrxType, CMTrxNum, CMERRMSG, DEX_ROW_ID FROM .CM20100 WHERE CMDNUMWK = @CMDNUMWK_RS AND VOIDED BETWEEN @VOIDED_RS AND @VOIDED_RE ORDER BY CMDNUMWK DESC, VOIDED DESC END ELSE BEGIN SELECT TOP 25  CMDNUMWK, RecNumControl, VOIDED, CNTRLTYP, AUDITTRAIL, CHEKBKID, CMTrxType, CMTrxNum, CMERRMSG, DEX_ROW_ID FROM .CM20100 WHERE CMDNUMWK BETWEEN @CMDNUMWK_RS AND @CMDNUMWK_RE AND VOIDED BETWEEN @VOIDED_RS AND @VOIDED_RE ORDER BY CMDNUMWK DESC, VOIDED DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CM20100L_1] TO [DYNGRP]
GO