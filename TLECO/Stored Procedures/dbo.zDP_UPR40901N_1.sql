SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR40901N_1] (@BS int, @DEDUCTON char(7), @BSDONCDE char(7), @DEDUCTON_RS char(7), @BSDONCDE_RS char(7), @DEDUCTON_RE char(7), @BSDONCDE_RE char(7)) AS  set nocount on IF @DEDUCTON_RS IS NULL BEGIN SELECT TOP 25  DEDUCTON, BSDONCDE, DEX_ROW_ID FROM .UPR40901 WHERE ( DEDUCTON = @DEDUCTON AND BSDONCDE > @BSDONCDE OR DEDUCTON > @DEDUCTON ) ORDER BY DEDUCTON ASC, BSDONCDE ASC END ELSE IF @DEDUCTON_RS = @DEDUCTON_RE BEGIN SELECT TOP 25  DEDUCTON, BSDONCDE, DEX_ROW_ID FROM .UPR40901 WHERE DEDUCTON = @DEDUCTON_RS AND BSDONCDE BETWEEN @BSDONCDE_RS AND @BSDONCDE_RE AND ( DEDUCTON = @DEDUCTON AND BSDONCDE > @BSDONCDE OR DEDUCTON > @DEDUCTON ) ORDER BY DEDUCTON ASC, BSDONCDE ASC END ELSE BEGIN SELECT TOP 25  DEDUCTON, BSDONCDE, DEX_ROW_ID FROM .UPR40901 WHERE DEDUCTON BETWEEN @DEDUCTON_RS AND @DEDUCTON_RE AND BSDONCDE BETWEEN @BSDONCDE_RS AND @BSDONCDE_RE AND ( DEDUCTON = @DEDUCTON AND BSDONCDE > @BSDONCDE OR DEDUCTON > @DEDUCTON ) ORDER BY DEDUCTON ASC, BSDONCDE ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR40901N_1] TO [DYNGRP]
GO