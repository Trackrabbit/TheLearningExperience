SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PC00900F_1] (@JOBTITLE_RS char(7), @JOBTITLE_RE char(7)) AS  set nocount on IF @JOBTITLE_RS IS NULL BEGIN SELECT TOP 25  JOBTITLE, STRTDATE, YTDWAGES, BNFITAMTYTD, YTDTAX, DEX_ROW_ID FROM .PC00900 ORDER BY JOBTITLE ASC END ELSE IF @JOBTITLE_RS = @JOBTITLE_RE BEGIN SELECT TOP 25  JOBTITLE, STRTDATE, YTDWAGES, BNFITAMTYTD, YTDTAX, DEX_ROW_ID FROM .PC00900 WHERE JOBTITLE = @JOBTITLE_RS ORDER BY JOBTITLE ASC END ELSE BEGIN SELECT TOP 25  JOBTITLE, STRTDATE, YTDWAGES, BNFITAMTYTD, YTDTAX, DEX_ROW_ID FROM .PC00900 WHERE JOBTITLE BETWEEN @JOBTITLE_RS AND @JOBTITLE_RE ORDER BY JOBTITLE ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PC00900F_1] TO [DYNGRP]
GO
