SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510105SS_1] (@MJW_Investor_Group_ID char(41)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  MJW_Investor_Group_ID, MJW_Investor_Group_Name, MJW_Investor_ID, ADRSCODE, NOTEINDX, DEX_ROW_ID FROM .B0510105 WHERE MJW_Investor_Group_ID = @MJW_Investor_Group_ID ORDER BY MJW_Investor_Group_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510105SS_1] TO [DYNGRP]
GO
