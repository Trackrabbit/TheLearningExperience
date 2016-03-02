SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510170SS_2] (@MJW_Owner_Type_Code_Desc char(51)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  MJW_Owner_Type_Code, MJW_Owner_Type_Code_Desc, MJW_K1_Map, NOTEINDX, DEX_ROW_ID FROM .B0510170 WHERE MJW_Owner_Type_Code_Desc = @MJW_Owner_Type_Code_Desc ORDER BY MJW_Owner_Type_Code_Desc ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510170SS_2] TO [DYNGRP]
GO
