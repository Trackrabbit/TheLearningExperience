SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR00501L_1] (@EMPLOYID_RS char(15), @DEDUCTON_RS char(7), @BSDONCDE_RS char(7), @EMPLOYID_RE char(15), @DEDUCTON_RE char(7), @BSDONCDE_RE char(7)) AS  set nocount on IF @EMPLOYID_RS IS NULL BEGIN SELECT TOP 25  EMPLOYID, DEDUCTON, BSDONCDE, DEX_ROW_ID FROM .UPR00501 ORDER BY EMPLOYID DESC, DEDUCTON DESC, BSDONCDE DESC END ELSE IF @EMPLOYID_RS = @EMPLOYID_RE BEGIN SELECT TOP 25  EMPLOYID, DEDUCTON, BSDONCDE, DEX_ROW_ID FROM .UPR00501 WHERE EMPLOYID = @EMPLOYID_RS AND DEDUCTON BETWEEN @DEDUCTON_RS AND @DEDUCTON_RE AND BSDONCDE BETWEEN @BSDONCDE_RS AND @BSDONCDE_RE ORDER BY EMPLOYID DESC, DEDUCTON DESC, BSDONCDE DESC END ELSE BEGIN SELECT TOP 25  EMPLOYID, DEDUCTON, BSDONCDE, DEX_ROW_ID FROM .UPR00501 WHERE EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND DEDUCTON BETWEEN @DEDUCTON_RS AND @DEDUCTON_RE AND BSDONCDE BETWEEN @BSDONCDE_RS AND @BSDONCDE_RE ORDER BY EMPLOYID DESC, DEDUCTON DESC, BSDONCDE DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR00501L_1] TO [DYNGRP]
GO
