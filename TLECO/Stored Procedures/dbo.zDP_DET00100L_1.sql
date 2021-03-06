SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_DET00100L_1] (@TAXDTLID_RS char(15), @STRTDATE_RS datetime, @TAXDTLID_RE char(15), @STRTDATE_RE datetime) AS set nocount on IF @TAXDTLID_RS IS NULL BEGIN SELECT TOP 25  TAXDTLID, TXDTLDSC, TXDTLTYP, TXDTLBSE, STRTDATE, ENDDATE, TXDTLPCT, TXDTLAMT, TaxBaseDescription, DEX_ROW_ID FROM .DET00100 ORDER BY TAXDTLID DESC, STRTDATE DESC END ELSE IF @TAXDTLID_RS = @TAXDTLID_RE BEGIN SELECT TOP 25  TAXDTLID, TXDTLDSC, TXDTLTYP, TXDTLBSE, STRTDATE, ENDDATE, TXDTLPCT, TXDTLAMT, TaxBaseDescription, DEX_ROW_ID FROM .DET00100 WHERE TAXDTLID = @TAXDTLID_RS AND STRTDATE BETWEEN @STRTDATE_RS AND @STRTDATE_RE ORDER BY TAXDTLID DESC, STRTDATE DESC END ELSE BEGIN SELECT TOP 25  TAXDTLID, TXDTLDSC, TXDTLTYP, TXDTLBSE, STRTDATE, ENDDATE, TXDTLPCT, TXDTLAMT, TaxBaseDescription, DEX_ROW_ID FROM .DET00100 WHERE TAXDTLID BETWEEN @TAXDTLID_RS AND @TAXDTLID_RE AND STRTDATE BETWEEN @STRTDATE_RS AND @STRTDATE_RE ORDER BY TAXDTLID DESC, STRTDATE DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DET00100L_1] TO [DYNGRP]
GO
