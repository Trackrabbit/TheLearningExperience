SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_NLB11900F_1] (@Navigation_ID_RS char(15), @LNITMSEQ_RS int, @USERID_RS char(15), @Navigation_ID_RE char(15), @LNITMSEQ_RE int, @USERID_RE char(15)) AS set nocount on IF @Navigation_ID_RS IS NULL BEGIN SELECT TOP 25  Navigation_ID, LNITMSEQ, USERID, DEX_ROW_ID FROM .NLB11900 ORDER BY Navigation_ID ASC, LNITMSEQ ASC, USERID ASC END ELSE IF @Navigation_ID_RS = @Navigation_ID_RE BEGIN SELECT TOP 25  Navigation_ID, LNITMSEQ, USERID, DEX_ROW_ID FROM .NLB11900 WHERE Navigation_ID = @Navigation_ID_RS AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND USERID BETWEEN @USERID_RS AND @USERID_RE ORDER BY Navigation_ID ASC, LNITMSEQ ASC, USERID ASC END ELSE BEGIN SELECT TOP 25  Navigation_ID, LNITMSEQ, USERID, DEX_ROW_ID FROM .NLB11900 WHERE Navigation_ID BETWEEN @Navigation_ID_RS AND @Navigation_ID_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND USERID BETWEEN @USERID_RS AND @USERID_RE ORDER BY Navigation_ID ASC, LNITMSEQ ASC, USERID ASC END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_NLB11900F_1] TO [DYNGRP]
GO
