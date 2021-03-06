SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY40503N_1] (@BS int, @BARULEID int, @DISPSEQ smallint, @COLUMNAM char(99), @BARULEID_RS int, @DISPSEQ_RS smallint, @COLUMNAM_RS char(99), @BARULEID_RE int, @DISPSEQ_RE smallint, @COLUMNAM_RE char(99)) AS  set nocount on IF @BARULEID_RS IS NULL BEGIN SELECT TOP 25  BARULEID, DISPSEQ, COLUMNAM, COLHEADR, DEX_ROW_ID FROM .SY40503 WHERE ( BARULEID = @BARULEID AND DISPSEQ = @DISPSEQ AND COLUMNAM > @COLUMNAM OR BARULEID = @BARULEID AND DISPSEQ > @DISPSEQ OR BARULEID > @BARULEID ) ORDER BY BARULEID ASC, DISPSEQ ASC, COLUMNAM ASC END ELSE IF @BARULEID_RS = @BARULEID_RE BEGIN SELECT TOP 25  BARULEID, DISPSEQ, COLUMNAM, COLHEADR, DEX_ROW_ID FROM .SY40503 WHERE BARULEID = @BARULEID_RS AND DISPSEQ BETWEEN @DISPSEQ_RS AND @DISPSEQ_RE AND COLUMNAM BETWEEN @COLUMNAM_RS AND @COLUMNAM_RE AND ( BARULEID = @BARULEID AND DISPSEQ = @DISPSEQ AND COLUMNAM > @COLUMNAM OR BARULEID = @BARULEID AND DISPSEQ > @DISPSEQ OR BARULEID > @BARULEID ) ORDER BY BARULEID ASC, DISPSEQ ASC, COLUMNAM ASC END ELSE BEGIN SELECT TOP 25  BARULEID, DISPSEQ, COLUMNAM, COLHEADR, DEX_ROW_ID FROM .SY40503 WHERE BARULEID BETWEEN @BARULEID_RS AND @BARULEID_RE AND DISPSEQ BETWEEN @DISPSEQ_RS AND @DISPSEQ_RE AND COLUMNAM BETWEEN @COLUMNAM_RS AND @COLUMNAM_RE AND ( BARULEID = @BARULEID AND DISPSEQ = @DISPSEQ AND COLUMNAM > @COLUMNAM OR BARULEID = @BARULEID AND DISPSEQ > @DISPSEQ OR BARULEID > @BARULEID ) ORDER BY BARULEID ASC, DISPSEQ ASC, COLUMNAM ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY40503N_1] TO [DYNGRP]
GO
