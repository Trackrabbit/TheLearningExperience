SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00105L_1] (@TECHID_RS char(11), @LNITMSEQ_RS int, @TECHID_RE char(11), @LNITMSEQ_RE int) AS  set nocount on IF @TECHID_RS IS NULL BEGIN SELECT TOP 25  TECHID, LNITMSEQ, DSCRIPTN, QUANTITY, DATEDONE, NOTEINDX, DEX_ROW_ID FROM .SVC00105 ORDER BY TECHID DESC, LNITMSEQ DESC END ELSE IF @TECHID_RS = @TECHID_RE BEGIN SELECT TOP 25  TECHID, LNITMSEQ, DSCRIPTN, QUANTITY, DATEDONE, NOTEINDX, DEX_ROW_ID FROM .SVC00105 WHERE TECHID = @TECHID_RS AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY TECHID DESC, LNITMSEQ DESC END ELSE BEGIN SELECT TOP 25  TECHID, LNITMSEQ, DSCRIPTN, QUANTITY, DATEDONE, NOTEINDX, DEX_ROW_ID FROM .SVC00105 WHERE TECHID BETWEEN @TECHID_RS AND @TECHID_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY TECHID DESC, LNITMSEQ DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00105L_1] TO [DYNGRP]
GO
