SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0530501SS_1] (@BSSI_Capital_Call_ID char(25), @LNITMSEQ int) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Capital_Call_ID, LNITMSEQ, BSSI_Fee_ID, BSSI_Fee_Amount, CURNCYID, CURRNIDX, DEX_ROW_ID FROM .B0530501 WHERE BSSI_Capital_Call_ID = @BSSI_Capital_Call_ID AND LNITMSEQ = @LNITMSEQ ORDER BY BSSI_Capital_Call_ID ASC, LNITMSEQ ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0530501SS_1] TO [DYNGRP]
GO
