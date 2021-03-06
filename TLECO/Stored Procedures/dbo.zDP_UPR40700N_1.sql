SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR40700N_1] (@BS int, @WRKRCOMP char(7), @WRKRCOMP_RS char(7), @WRKRCOMP_RE char(7)) AS  set nocount on IF @WRKRCOMP_RS IS NULL BEGIN SELECT TOP 25  WRKRCOMP, STATECD, DSCRIPTN, WKCMPMTH, WKCMPAMT, WKCMPUNT, WKCMPCNT, WCMOTMTH, WCWGLIMT, NOTEINDX, DEX_ROW_ID FROM .UPR40700 WHERE ( WRKRCOMP > @WRKRCOMP ) ORDER BY WRKRCOMP ASC END ELSE IF @WRKRCOMP_RS = @WRKRCOMP_RE BEGIN SELECT TOP 25  WRKRCOMP, STATECD, DSCRIPTN, WKCMPMTH, WKCMPAMT, WKCMPUNT, WKCMPCNT, WCMOTMTH, WCWGLIMT, NOTEINDX, DEX_ROW_ID FROM .UPR40700 WHERE WRKRCOMP = @WRKRCOMP_RS AND ( WRKRCOMP > @WRKRCOMP ) ORDER BY WRKRCOMP ASC END ELSE BEGIN SELECT TOP 25  WRKRCOMP, STATECD, DSCRIPTN, WKCMPMTH, WKCMPAMT, WKCMPUNT, WKCMPCNT, WCMOTMTH, WCWGLIMT, NOTEINDX, DEX_ROW_ID FROM .UPR40700 WHERE WRKRCOMP BETWEEN @WRKRCOMP_RS AND @WRKRCOMP_RE AND ( WRKRCOMP > @WRKRCOMP ) ORDER BY WRKRCOMP ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR40700N_1] TO [DYNGRP]
GO
