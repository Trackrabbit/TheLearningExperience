SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7100702L_1] (@LNITMSEQ_RS int, @LNITMSEQ_RE int) AS /* 12.00.0270.000 */ set nocount on IF @LNITMSEQ_RS IS NULL BEGIN SELECT TOP 25  BSSI_EventID, LNITMSEQ, BSSI_Description, NOTEINDX, DEX_ROW_ID FROM .B7100702 ORDER BY LNITMSEQ DESC END ELSE IF @LNITMSEQ_RS = @LNITMSEQ_RE BEGIN SELECT TOP 25  BSSI_EventID, LNITMSEQ, BSSI_Description, NOTEINDX, DEX_ROW_ID FROM .B7100702 WHERE LNITMSEQ = @LNITMSEQ_RS ORDER BY LNITMSEQ DESC END ELSE BEGIN SELECT TOP 25  BSSI_EventID, LNITMSEQ, BSSI_Description, NOTEINDX, DEX_ROW_ID FROM .B7100702 WHERE LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY LNITMSEQ DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7100702L_1] TO [DYNGRP]
GO
