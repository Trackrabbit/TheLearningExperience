SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_GL00100F2N_1] (@BS int, @ACTINDX int, @RELID int, @ACTINDX_RS int, @RELID_RS int, @ACTINDX_RE int, @RELID_RE int) AS /* 14.00.0084.000 */ set nocount on IF @ACTINDX_RS IS NULL BEGIN SELECT TOP 25  ACTINDX, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, ACTALIAS, MNACSGMT, ACCTTYPE, ACTDESCR, ACCATNUM, RELID, DEX_ROW_ID FROM .GL00100F2 WHERE ( ACTINDX = @ACTINDX AND RELID > @RELID OR ACTINDX > @ACTINDX ) ORDER BY ACTINDX ASC, RELID ASC END ELSE IF @ACTINDX_RS = @ACTINDX_RE BEGIN SELECT TOP 25  ACTINDX, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, ACTALIAS, MNACSGMT, ACCTTYPE, ACTDESCR, ACCATNUM, RELID, DEX_ROW_ID FROM .GL00100F2 WHERE ACTINDX = @ACTINDX_RS AND RELID BETWEEN @RELID_RS AND @RELID_RE AND ( ACTINDX = @ACTINDX AND RELID > @RELID OR ACTINDX > @ACTINDX ) ORDER BY ACTINDX ASC, RELID ASC END ELSE BEGIN SELECT TOP 25  ACTINDX, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, ACTALIAS, MNACSGMT, ACCTTYPE, ACTDESCR, ACCATNUM, RELID, DEX_ROW_ID FROM .GL00100F2 WHERE ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND RELID BETWEEN @RELID_RS AND @RELID_RE AND ( ACTINDX = @ACTINDX AND RELID > @RELID OR ACTINDX > @ACTINDX ) ORDER BY ACTINDX ASC, RELID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_GL00100F2N_1] TO [DYNGRP]
GO
