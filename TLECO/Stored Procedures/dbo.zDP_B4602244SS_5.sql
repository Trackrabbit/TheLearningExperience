SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602244SS_5] (@SOPNUMBE char(21), @SOPTYPE smallint, @BSSI_SOP_LINE_Sequence int) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  BSSI_Tenant_Lease_Number, LOCNCODE, LNITMSEQ, LNSEQNBR, SOPTYPE, SOPNUMBE, BSSI_SOP_LINE_Sequence, CUSTNMBR, BSSI_Dummy, DEX_ROW_ID FROM .B4602244 WHERE SOPNUMBE = @SOPNUMBE AND SOPTYPE = @SOPTYPE AND BSSI_SOP_LINE_Sequence = @BSSI_SOP_LINE_Sequence ORDER BY SOPNUMBE ASC, SOPTYPE ASC, BSSI_SOP_LINE_Sequence ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602244SS_5] TO [DYNGRP]
GO
