SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602501SS_2] (@BSSI_Escalation_ID char(25)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Escalation_ID, LNITMSEQ, BSSI_Term, DEX_ROW_ID FROM .B4602501 WHERE BSSI_Escalation_ID = @BSSI_Escalation_ID ORDER BY BSSI_Escalation_ID ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602501SS_2] TO [DYNGRP]
GO
