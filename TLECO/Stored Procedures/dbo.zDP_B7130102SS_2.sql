SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7130102SS_2] (@SERLNMBR char(21)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Recognition_SNumber, BSSI_Line_Item_Sequence, SERLNMBR, DEX_ROW_ID FROM .B7130102 WHERE SERLNMBR = @SERLNMBR ORDER BY SERLNMBR ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7130102SS_2] TO [DYNGRP]
GO