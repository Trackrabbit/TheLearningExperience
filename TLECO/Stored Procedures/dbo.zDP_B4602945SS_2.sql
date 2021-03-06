SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602945SS_2] (@DOCTYPE smallint, @VCHNUMWK char(17)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Ground_Lease_Number, LNITMSEQ, LNSEQNBR, JRNENTRY, DOCTYPE, VCHNUMWK, BSSI_Line_SL_Amount, MDFUSRID, MODIFDT, DEX_ROW_ID FROM .B4602945 WHERE DOCTYPE = @DOCTYPE AND VCHNUMWK = @VCHNUMWK ORDER BY DOCTYPE ASC, VCHNUMWK ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602945SS_2] TO [DYNGRP]
GO
