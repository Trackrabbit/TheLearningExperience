SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_GL00100F2N_2] (@BS int, @ACTALIAS char(21), @RELID int, @ACTINDX int, @ACTALIAS_RS char(21), @RELID_RS int, @ACTINDX_RS int, @ACTALIAS_RE char(21), @RELID_RE int, @ACTINDX_RE int) AS /* 14.00.0084.000 */ set nocount on IF @ACTALIAS_RS IS NULL BEGIN SELECT TOP 25  ACTINDX, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, ACTALIAS, MNACSGMT, ACCTTYPE, ACTDESCR, ACCATNUM, RELID, DEX_ROW_ID FROM .GL00100F2 WHERE ( ACTALIAS = @ACTALIAS AND RELID = @RELID AND ACTINDX > @ACTINDX OR ACTALIAS = @ACTALIAS AND RELID > @RELID OR ACTALIAS > @ACTALIAS ) ORDER BY ACTALIAS ASC, RELID ASC, ACTINDX ASC END ELSE IF @ACTALIAS_RS = @ACTALIAS_RE BEGIN SELECT TOP 25  ACTINDX, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, ACTALIAS, MNACSGMT, ACCTTYPE, ACTDESCR, ACCATNUM, RELID, DEX_ROW_ID FROM .GL00100F2 WHERE ACTALIAS = @ACTALIAS_RS AND RELID BETWEEN @RELID_RS AND @RELID_RE AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND ( ACTALIAS = @ACTALIAS AND RELID = @RELID AND ACTINDX > @ACTINDX OR ACTALIAS = @ACTALIAS AND RELID > @RELID OR ACTALIAS > @ACTALIAS ) ORDER BY ACTALIAS ASC, RELID ASC, ACTINDX ASC END ELSE BEGIN SELECT TOP 25  ACTINDX, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, ACTALIAS, MNACSGMT, ACCTTYPE, ACTDESCR, ACCATNUM, RELID, DEX_ROW_ID FROM .GL00100F2 WHERE ACTALIAS BETWEEN @ACTALIAS_RS AND @ACTALIAS_RE AND RELID BETWEEN @RELID_RS AND @RELID_RE AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND ( ACTALIAS = @ACTALIAS AND RELID = @RELID AND ACTINDX > @ACTINDX OR ACTALIAS = @ACTALIAS AND RELID > @RELID OR ACTALIAS > @ACTALIAS ) ORDER BY ACTALIAS ASC, RELID ASC, ACTINDX ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_GL00100F2N_2] TO [DYNGRP]
GO