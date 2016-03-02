SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ME240466N_1] (@BS int, @MEUSERID char(15), @BACHNUMB char(15), @BCHSOURC char(15), @MEUSERID_RS char(15), @BACHNUMB_RS char(15), @BCHSOURC_RS char(15), @MEUSERID_RE char(15), @BACHNUMB_RE char(15), @BCHSOURC_RE char(15)) AS /* 14.00.0084.000 */ set nocount on IF @MEUSERID_RS IS NULL BEGIN SELECT TOP 25  MEUSERID, BACHNUMB, BCHSOURC, REQSTDATE, APPRVLDT, COMMENT_1, COMMENT_2, COMMENT_3, COMMENT_4, DEX_ROW_ID FROM .ME240466 WHERE ( MEUSERID = @MEUSERID AND BACHNUMB = @BACHNUMB AND BCHSOURC > @BCHSOURC OR MEUSERID = @MEUSERID AND BACHNUMB > @BACHNUMB OR MEUSERID > @MEUSERID ) ORDER BY MEUSERID ASC, BACHNUMB ASC, BCHSOURC ASC END ELSE IF @MEUSERID_RS = @MEUSERID_RE BEGIN SELECT TOP 25  MEUSERID, BACHNUMB, BCHSOURC, REQSTDATE, APPRVLDT, COMMENT_1, COMMENT_2, COMMENT_3, COMMENT_4, DEX_ROW_ID FROM .ME240466 WHERE MEUSERID = @MEUSERID_RS AND BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE AND BCHSOURC BETWEEN @BCHSOURC_RS AND @BCHSOURC_RE AND ( MEUSERID = @MEUSERID AND BACHNUMB = @BACHNUMB AND BCHSOURC > @BCHSOURC OR MEUSERID = @MEUSERID AND BACHNUMB > @BACHNUMB OR MEUSERID > @MEUSERID ) ORDER BY MEUSERID ASC, BACHNUMB ASC, BCHSOURC ASC END ELSE BEGIN SELECT TOP 25  MEUSERID, BACHNUMB, BCHSOURC, REQSTDATE, APPRVLDT, COMMENT_1, COMMENT_2, COMMENT_3, COMMENT_4, DEX_ROW_ID FROM .ME240466 WHERE MEUSERID BETWEEN @MEUSERID_RS AND @MEUSERID_RE AND BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE AND BCHSOURC BETWEEN @BCHSOURC_RS AND @BCHSOURC_RE AND ( MEUSERID = @MEUSERID AND BACHNUMB = @BACHNUMB AND BCHSOURC > @BCHSOURC OR MEUSERID = @MEUSERID AND BACHNUMB > @BACHNUMB OR MEUSERID > @MEUSERID ) ORDER BY MEUSERID ASC, BACHNUMB ASC, BCHSOURC ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ME240466N_1] TO [DYNGRP]
GO
