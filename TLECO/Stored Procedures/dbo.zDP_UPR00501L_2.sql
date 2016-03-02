SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR00501L_2] (@BSDONCDE_RS char(7), @EMPLOYID_RS char(15), @DEDUCTON_RS char(7), @BSDONCDE_RE char(7), @EMPLOYID_RE char(15), @DEDUCTON_RE char(7)) AS  set nocount on IF @BSDONCDE_RS IS NULL BEGIN SELECT TOP 25  EMPLOYID, DEDUCTON, BSDONCDE, DEX_ROW_ID FROM .UPR00501 ORDER BY BSDONCDE DESC, EMPLOYID DESC, DEDUCTON DESC END ELSE IF @BSDONCDE_RS = @BSDONCDE_RE BEGIN SELECT TOP 25  EMPLOYID, DEDUCTON, BSDONCDE, DEX_ROW_ID FROM .UPR00501 WHERE BSDONCDE = @BSDONCDE_RS AND EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND DEDUCTON BETWEEN @DEDUCTON_RS AND @DEDUCTON_RE ORDER BY BSDONCDE DESC, EMPLOYID DESC, DEDUCTON DESC END ELSE BEGIN SELECT TOP 25  EMPLOYID, DEDUCTON, BSDONCDE, DEX_ROW_ID FROM .UPR00501 WHERE BSDONCDE BETWEEN @BSDONCDE_RS AND @BSDONCDE_RE AND EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND DEDUCTON BETWEEN @DEDUCTON_RS AND @DEDUCTON_RE ORDER BY BSDONCDE DESC, EMPLOYID DESC, DEDUCTON DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR00501L_2] TO [DYNGRP]
GO
