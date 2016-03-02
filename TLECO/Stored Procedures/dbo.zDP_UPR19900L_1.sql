SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR19900L_1] (@ACCTTYPE_RS smallint, @ACTINDX_RS int, @STATECD_RS char(3), @PAYRCORD_RS char(7), @ISTIPPAY_RS tinyint, @ACCTTYPE_RE smallint, @ACTINDX_RE int, @STATECD_RE char(3), @PAYRCORD_RE char(7), @ISTIPPAY_RE tinyint) AS  set nocount on IF @ACCTTYPE_RS IS NULL BEGIN SELECT TOP 25  ISTIPPAY, ACTINDX, ACCTAMNT, ACCTTYPE, STATECD, PAYRCORD, PAYTYPE, GROSWAGS_1, GROSWAGS_2, GROSWAGS_3, GROSWAGS_4, GROSWAGS_5, GROSWAGS_6, GROSWAGS_7, GROSWAGS_8, GROSWAGS_9, GROSWAGS_10, GROSWAGS_11, GROSWAGS_12, FFEDTXRT, FLSTTXRT, DEX_ROW_ID FROM .UPR19900 ORDER BY ACCTTYPE DESC, ACTINDX DESC, STATECD DESC, PAYRCORD DESC, ISTIPPAY DESC END ELSE IF @ACCTTYPE_RS = @ACCTTYPE_RE BEGIN SELECT TOP 25  ISTIPPAY, ACTINDX, ACCTAMNT, ACCTTYPE, STATECD, PAYRCORD, PAYTYPE, GROSWAGS_1, GROSWAGS_2, GROSWAGS_3, GROSWAGS_4, GROSWAGS_5, GROSWAGS_6, GROSWAGS_7, GROSWAGS_8, GROSWAGS_9, GROSWAGS_10, GROSWAGS_11, GROSWAGS_12, FFEDTXRT, FLSTTXRT, DEX_ROW_ID FROM .UPR19900 WHERE ACCTTYPE = @ACCTTYPE_RS AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND STATECD BETWEEN @STATECD_RS AND @STATECD_RE AND PAYRCORD BETWEEN @PAYRCORD_RS AND @PAYRCORD_RE AND ISTIPPAY BETWEEN @ISTIPPAY_RS AND @ISTIPPAY_RE ORDER BY ACCTTYPE DESC, ACTINDX DESC, STATECD DESC, PAYRCORD DESC, ISTIPPAY DESC END ELSE BEGIN SELECT TOP 25  ISTIPPAY, ACTINDX, ACCTAMNT, ACCTTYPE, STATECD, PAYRCORD, PAYTYPE, GROSWAGS_1, GROSWAGS_2, GROSWAGS_3, GROSWAGS_4, GROSWAGS_5, GROSWAGS_6, GROSWAGS_7, GROSWAGS_8, GROSWAGS_9, GROSWAGS_10, GROSWAGS_11, GROSWAGS_12, FFEDTXRT, FLSTTXRT, DEX_ROW_ID FROM .UPR19900 WHERE ACCTTYPE BETWEEN @ACCTTYPE_RS AND @ACCTTYPE_RE AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND STATECD BETWEEN @STATECD_RS AND @STATECD_RE AND PAYRCORD BETWEEN @PAYRCORD_RS AND @PAYRCORD_RE AND ISTIPPAY BETWEEN @ISTIPPAY_RS AND @ISTIPPAY_RE ORDER BY ACCTTYPE DESC, ACTINDX DESC, STATECD DESC, PAYRCORD DESC, ISTIPPAY DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR19900L_1] TO [DYNGRP]
GO
