SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640504SS_1] (@BSSI_Type smallint, @BSSI_Column_ID smallint, @BSSI_Column_Filter_ID char(25)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Type, BSSI_Column_ID, BSSI_Column_Filter_ID, DEX_ROW_ID FROM .B4640504 WHERE BSSI_Type = @BSSI_Type AND BSSI_Column_ID = @BSSI_Column_ID AND BSSI_Column_Filter_ID = @BSSI_Column_Filter_ID ORDER BY BSSI_Type ASC, BSSI_Column_ID ASC, BSSI_Column_Filter_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640504SS_1] TO [DYNGRP]
GO
