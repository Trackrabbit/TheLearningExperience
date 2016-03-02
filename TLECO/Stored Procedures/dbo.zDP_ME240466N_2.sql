SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ME240466N_2] (@BS int, @BACHNUMB char(15), @BCHSOURC char(15), @MEUSERID char(15), @BACHNUMB_RS char(15), @BCHSOURC_RS char(15), @MEUSERID_RS char(15), @BACHNUMB_RE char(15), @BCHSOURC_RE char(15), @MEUSERID_RE char(15)) AS /* 14.00.0084.000 */ set nocount on IF @BACHNUMB_RS IS NULL BEGIN SELECT TOP 25  MEUSERID, BACHNUMB, BCHSOURC, REQSTDATE, APPRVLDT, COMMENT_1, COMMENT_2, COMMENT_3, COMMENT_4, DEX_ROW_ID FROM .ME240466 WHERE ( BACHNUMB = @BACHNUMB AND BCHSOURC = @BCHSOURC AND MEUSERID > @MEUSERID OR BACHNUMB = @BACHNUMB AND BCHSOURC > @BCHSOURC OR BACHNUMB > @BACHNUMB ) ORDER BY BACHNUMB ASC, BCHSOURC ASC, MEUSERID ASC END ELSE IF @BACHNUMB_RS = @BACHNUMB_RE BEGIN SELECT TOP 25  MEUSERID, BACHNUMB, BCHSOURC, REQSTDATE, APPRVLDT, COMMENT_1, COMMENT_2, COMMENT_3, COMMENT_4, DEX_ROW_ID FROM .ME240466 WHERE BACHNUMB = @BACHNUMB_RS AND BCHSOURC BETWEEN @BCHSOURC_RS AND @BCHSOURC_RE AND MEUSERID BETWEEN @MEUSERID_RS AND @MEUSERID_RE AND ( BACHNUMB = @BACHNUMB AND BCHSOURC = @BCHSOURC AND MEUSERID > @MEUSERID OR BACHNUMB = @BACHNUMB AND BCHSOURC > @BCHSOURC OR BACHNUMB > @BACHNUMB ) ORDER BY BACHNUMB ASC, BCHSOURC ASC, MEUSERID ASC END ELSE BEGIN SELECT TOP 25  MEUSERID, BACHNUMB, BCHSOURC, REQSTDATE, APPRVLDT, COMMENT_1, COMMENT_2, COMMENT_3, COMMENT_4, DEX_ROW_ID FROM .ME240466 WHERE BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE AND BCHSOURC BETWEEN @BCHSOURC_RS AND @BCHSOURC_RE AND MEUSERID BETWEEN @MEUSERID_RS AND @MEUSERID_RE AND ( BACHNUMB = @BACHNUMB AND BCHSOURC = @BCHSOURC AND MEUSERID > @MEUSERID OR BACHNUMB = @BACHNUMB AND BCHSOURC > @BCHSOURC OR BACHNUMB > @BACHNUMB ) ORDER BY BACHNUMB ASC, BCHSOURC ASC, MEUSERID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ME240466N_2] TO [DYNGRP]
GO