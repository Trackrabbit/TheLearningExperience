SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602401L_2] (@BSSI_Term_RS char(25), @BSSI_Term_Option_RS smallint, @BSSI_Term_RE char(25), @BSSI_Term_Option_RE smallint) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Term_RS IS NULL BEGIN SELECT TOP 25  BSSI_Term, LNITMSEQ, BSSI_Term_Option, BSSI_Renewal_Option_Qty, BSSI_Renewal_Option_Mont, BSSI_Renewal_Option_Year, BSSI_Billing_Frequency, NOTEINDX, DEX_ROW_ID FROM .B4602401 ORDER BY BSSI_Term DESC, BSSI_Term_Option DESC, DEX_ROW_ID DESC END ELSE IF @BSSI_Term_RS = @BSSI_Term_RE BEGIN SELECT TOP 25  BSSI_Term, LNITMSEQ, BSSI_Term_Option, BSSI_Renewal_Option_Qty, BSSI_Renewal_Option_Mont, BSSI_Renewal_Option_Year, BSSI_Billing_Frequency, NOTEINDX, DEX_ROW_ID FROM .B4602401 WHERE BSSI_Term = @BSSI_Term_RS AND BSSI_Term_Option BETWEEN @BSSI_Term_Option_RS AND @BSSI_Term_Option_RE ORDER BY BSSI_Term DESC, BSSI_Term_Option DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  BSSI_Term, LNITMSEQ, BSSI_Term_Option, BSSI_Renewal_Option_Qty, BSSI_Renewal_Option_Mont, BSSI_Renewal_Option_Year, BSSI_Billing_Frequency, NOTEINDX, DEX_ROW_ID FROM .B4602401 WHERE BSSI_Term BETWEEN @BSSI_Term_RS AND @BSSI_Term_RE AND BSSI_Term_Option BETWEEN @BSSI_Term_Option_RS AND @BSSI_Term_Option_RE ORDER BY BSSI_Term DESC, BSSI_Term_Option DESC, DEX_ROW_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602401L_2] TO [DYNGRP]
GO
