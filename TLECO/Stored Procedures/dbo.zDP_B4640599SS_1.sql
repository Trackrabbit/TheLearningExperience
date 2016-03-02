SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640599SS_1] (@BSSI_Column_ID smallint, @BSSI_Column_Filter_ID char(25), @USERID char(15)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Column_ID, BSSI_Column_Filter_ID, BSSI_Description, BSSI_Marked, USERID, DEX_ROW_ID FROM .B4640599 WHERE BSSI_Column_ID = @BSSI_Column_ID AND BSSI_Column_Filter_ID = @BSSI_Column_Filter_ID AND USERID = @USERID ORDER BY BSSI_Column_ID ASC, BSSI_Column_Filter_ID ASC, USERID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640599SS_1] TO [DYNGRP]
GO
