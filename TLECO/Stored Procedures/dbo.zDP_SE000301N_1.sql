SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SE000301N_1] (@BS int, @SEOPTNME char(21), @SGMTNUMB smallint, @SEGMENT char(11), @SEOPTNME_RS char(21), @SGMTNUMB_RS smallint, @SEGMENT_RS char(11), @SEOPTNME_RE char(21), @SGMTNUMB_RE smallint, @SEGMENT_RE char(11)) AS  set nocount on IF @SEOPTNME_RS IS NULL BEGIN SELECT TOP 25  SEOPTNME, SGMTNUMB, SEGMENT, DEX_ROW_ID FROM .SE000301 WHERE ( SEOPTNME = @SEOPTNME AND SGMTNUMB = @SGMTNUMB AND SEGMENT > @SEGMENT OR SEOPTNME = @SEOPTNME AND SGMTNUMB > @SGMTNUMB OR SEOPTNME > @SEOPTNME ) ORDER BY SEOPTNME ASC, SGMTNUMB ASC, SEGMENT ASC END ELSE IF @SEOPTNME_RS = @SEOPTNME_RE BEGIN SELECT TOP 25  SEOPTNME, SGMTNUMB, SEGMENT, DEX_ROW_ID FROM .SE000301 WHERE SEOPTNME = @SEOPTNME_RS AND SGMTNUMB BETWEEN @SGMTNUMB_RS AND @SGMTNUMB_RE AND SEGMENT BETWEEN @SEGMENT_RS AND @SEGMENT_RE AND ( SEOPTNME = @SEOPTNME AND SGMTNUMB = @SGMTNUMB AND SEGMENT > @SEGMENT OR SEOPTNME = @SEOPTNME AND SGMTNUMB > @SGMTNUMB OR SEOPTNME > @SEOPTNME ) ORDER BY SEOPTNME ASC, SGMTNUMB ASC, SEGMENT ASC END ELSE BEGIN SELECT TOP 25  SEOPTNME, SGMTNUMB, SEGMENT, DEX_ROW_ID FROM .SE000301 WHERE SEOPTNME BETWEEN @SEOPTNME_RS AND @SEOPTNME_RE AND SGMTNUMB BETWEEN @SGMTNUMB_RS AND @SGMTNUMB_RE AND SEGMENT BETWEEN @SEGMENT_RS AND @SEGMENT_RE AND ( SEOPTNME = @SEOPTNME AND SGMTNUMB = @SGMTNUMB AND SEGMENT > @SEGMENT OR SEOPTNME = @SEOPTNME AND SGMTNUMB > @SGMTNUMB OR SEOPTNME > @SEOPTNME ) ORDER BY SEOPTNME ASC, SGMTNUMB ASC, SEGMENT ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SE000301N_1] TO [DYNGRP]
GO