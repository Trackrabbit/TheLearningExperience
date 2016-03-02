SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00914F_1] (@LNITMSEQ_RS int, @APLICFIL_RS char(255), @LNITMSEQ_RE int, @APLICFIL_RE char(255)) AS  set nocount on IF @LNITMSEQ_RS IS NULL BEGIN SELECT TOP 25  LNITMSEQ, APLICFIL, Mandatory, DTAPTHNM, DEX_ROW_ID FROM .SVC00914 ORDER BY LNITMSEQ ASC, APLICFIL ASC END ELSE IF @LNITMSEQ_RS = @LNITMSEQ_RE BEGIN SELECT TOP 25  LNITMSEQ, APLICFIL, Mandatory, DTAPTHNM, DEX_ROW_ID FROM .SVC00914 WHERE LNITMSEQ = @LNITMSEQ_RS AND APLICFIL BETWEEN @APLICFIL_RS AND @APLICFIL_RE ORDER BY LNITMSEQ ASC, APLICFIL ASC END ELSE BEGIN SELECT TOP 25  LNITMSEQ, APLICFIL, Mandatory, DTAPTHNM, DEX_ROW_ID FROM .SVC00914 WHERE LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND APLICFIL BETWEEN @APLICFIL_RS AND @APLICFIL_RE ORDER BY LNITMSEQ ASC, APLICFIL ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00914F_1] TO [DYNGRP]
GO
