SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ME27658N_1] (@BS int, @BACHNUMB char(15), @BCHSOURC char(15), @BACHNUMB_RS char(15), @BCHSOURC_RS char(15), @BACHNUMB_RE char(15), @BCHSOURC_RE char(15)) AS /* 14.00.0084.000 */ set nocount on IF @BACHNUMB_RS IS NULL BEGIN SELECT TOP 25  BACHNUMB, BCHSOURC, DEX_ROW_ID FROM .ME27658 WHERE ( BACHNUMB = @BACHNUMB AND BCHSOURC > @BCHSOURC OR BACHNUMB > @BACHNUMB ) ORDER BY BACHNUMB ASC, BCHSOURC ASC END ELSE IF @BACHNUMB_RS = @BACHNUMB_RE BEGIN SELECT TOP 25  BACHNUMB, BCHSOURC, DEX_ROW_ID FROM .ME27658 WHERE BACHNUMB = @BACHNUMB_RS AND BCHSOURC BETWEEN @BCHSOURC_RS AND @BCHSOURC_RE AND ( BACHNUMB = @BACHNUMB AND BCHSOURC > @BCHSOURC OR BACHNUMB > @BACHNUMB ) ORDER BY BACHNUMB ASC, BCHSOURC ASC END ELSE BEGIN SELECT TOP 25  BACHNUMB, BCHSOURC, DEX_ROW_ID FROM .ME27658 WHERE BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE AND BCHSOURC BETWEEN @BCHSOURC_RS AND @BCHSOURC_RE AND ( BACHNUMB = @BACHNUMB AND BCHSOURC > @BCHSOURC OR BACHNUMB > @BACHNUMB ) ORDER BY BACHNUMB ASC, BCHSOURC ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ME27658N_1] TO [DYNGRP]
GO
