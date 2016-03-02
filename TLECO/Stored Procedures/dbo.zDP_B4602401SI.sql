SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602401SI] (@BSSI_Term char(25), @LNITMSEQ int, @BSSI_Term_Option smallint, @BSSI_Renewal_Option_Qty int, @BSSI_Renewal_Option_Mont int, @BSSI_Renewal_Option_Year int, @BSSI_Billing_Frequency smallint, @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4602401 (BSSI_Term, LNITMSEQ, BSSI_Term_Option, BSSI_Renewal_Option_Qty, BSSI_Renewal_Option_Mont, BSSI_Renewal_Option_Year, BSSI_Billing_Frequency, NOTEINDX) VALUES ( @BSSI_Term, @LNITMSEQ, @BSSI_Term_Option, @BSSI_Renewal_Option_Qty, @BSSI_Renewal_Option_Mont, @BSSI_Renewal_Option_Year, @BSSI_Billing_Frequency, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602401SI] TO [DYNGRP]
GO
