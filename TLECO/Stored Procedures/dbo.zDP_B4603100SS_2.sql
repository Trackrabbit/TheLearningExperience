SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4603100SS_2] (@BSSI_Rev_Sharing_Type smallint, @BSSI_Rev_Sharing_ID char(25)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Rev_Sharing_ID, BSSI_Description, BSSI_Rev_Sharing_Type, NOTEINDX, DEX_ROW_ID FROM .B4603100 WHERE BSSI_Rev_Sharing_Type = @BSSI_Rev_Sharing_Type AND BSSI_Rev_Sharing_ID = @BSSI_Rev_Sharing_ID ORDER BY BSSI_Rev_Sharing_Type ASC, BSSI_Rev_Sharing_ID ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4603100SS_2] TO [DYNGRP]
GO
