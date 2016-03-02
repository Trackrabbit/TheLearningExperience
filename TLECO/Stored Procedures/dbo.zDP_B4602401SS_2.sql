SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602401SS_2] (@BSSI_Term char(25), @BSSI_Term_Option smallint) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Term, LNITMSEQ, BSSI_Term_Option, BSSI_Renewal_Option_Qty, BSSI_Renewal_Option_Mont, BSSI_Renewal_Option_Year, BSSI_Billing_Frequency, NOTEINDX, DEX_ROW_ID FROM .B4602401 WHERE BSSI_Term = @BSSI_Term AND BSSI_Term_Option = @BSSI_Term_Option ORDER BY BSSI_Term ASC, BSSI_Term_Option ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602401SS_2] TO [DYNGRP]
GO
