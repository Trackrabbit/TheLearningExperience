SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602500SS_1] (@BSSI_Escalation_ID char(25)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Escalation_ID, BSSI_Description, NOTEINDX, DEX_ROW_ID FROM .B4602500 WHERE BSSI_Escalation_ID = @BSSI_Escalation_ID ORDER BY BSSI_Escalation_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602500SS_1] TO [DYNGRP]
GO
