SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7100702SS_2] (@BSSI_EventID char(25)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_EventID, LNITMSEQ, BSSI_Description, NOTEINDX, DEX_ROW_ID FROM .B7100702 WHERE BSSI_EventID = @BSSI_EventID ORDER BY BSSI_EventID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7100702SS_2] TO [DYNGRP]
GO
