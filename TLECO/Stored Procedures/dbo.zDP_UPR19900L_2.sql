SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR19900L_2] (@ACCTTYPE_RS smallint, @STATECD_RS char(3), @ISTIPPAY_RS tinyint, @PAYRCORD_RS char(7), @ACTINDX_RS int, @ACCTTYPE_RE smallint, @STATECD_RE char(3), @ISTIPPAY_RE tinyint, @PAYRCORD_RE char(7), @ACTINDX_RE int) AS  set nocount on IF @ACCTTYPE_RS IS NULL BEGIN SELECT TOP 25  ISTIPPAY, ACTINDX, ACCTAMNT, ACCTTYPE, STATECD, PAYRCORD, PAYTYPE, GROSWAGS_1, GROSWAGS_2, GROSWAGS_3, GROSWAGS_4, GROSWAGS_5, GROSWAGS_6, GROSWAGS_7, GROSWAGS_8, GROSWAGS_9, GROSWAGS_10, GROSWAGS_11, GROSWAGS_12, FFEDTXRT, FLSTTXRT, DEX_ROW_ID FROM .UPR19900 ORDER BY ACCTTYPE DESC, STATECD DESC, ISTIPPAY DESC, PAYRCORD DESC, ACTINDX DESC END ELSE IF @ACCTTYPE_RS = @ACCTTYPE_RE BEGIN SELECT TOP 25  ISTIPPAY, ACTINDX, ACCTAMNT, ACCTTYPE, STATECD, PAYRCORD, PAYTYPE, GROSWAGS_1, GROSWAGS_2, GROSWAGS_3, GROSWAGS_4, GROSWAGS_5, GROSWAGS_6, GROSWAGS_7, GROSWAGS_8, GROSWAGS_9, GROSWAGS_10, GROSWAGS_11, GROSWAGS_12, FFEDTXRT, FLSTTXRT, DEX_ROW_ID FROM .UPR19900 WHERE ACCTTYPE = @ACCTTYPE_RS AND STATECD BETWEEN @STATECD_RS AND @STATECD_RE AND ISTIPPAY BETWEEN @ISTIPPAY_RS AND @ISTIPPAY_RE AND PAYRCORD BETWEEN @PAYRCORD_RS AND @PAYRCORD_RE AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE ORDER BY ACCTTYPE DESC, STATECD DESC, ISTIPPAY DESC, PAYRCORD DESC, ACTINDX DESC END ELSE BEGIN SELECT TOP 25  ISTIPPAY, ACTINDX, ACCTAMNT, ACCTTYPE, STATECD, PAYRCORD, PAYTYPE, GROSWAGS_1, GROSWAGS_2, GROSWAGS_3, GROSWAGS_4, GROSWAGS_5, GROSWAGS_6, GROSWAGS_7, GROSWAGS_8, GROSWAGS_9, GROSWAGS_10, GROSWAGS_11, GROSWAGS_12, FFEDTXRT, FLSTTXRT, DEX_ROW_ID FROM .UPR19900 WHERE ACCTTYPE BETWEEN @ACCTTYPE_RS AND @ACCTTYPE_RE AND STATECD BETWEEN @STATECD_RS AND @STATECD_RE AND ISTIPPAY BETWEEN @ISTIPPAY_RS AND @ISTIPPAY_RE AND PAYRCORD BETWEEN @PAYRCORD_RS AND @PAYRCORD_RE AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE ORDER BY ACCTTYPE DESC, STATECD DESC, ISTIPPAY DESC, PAYRCORD DESC, ACTINDX DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR19900L_2] TO [DYNGRP]
GO
