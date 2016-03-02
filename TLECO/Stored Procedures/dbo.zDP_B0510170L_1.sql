SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510170L_1] (@MJW_Owner_Type_Code_RS char(21), @MJW_Owner_Type_Code_RE char(21)) AS /* 12.00.0270.000 */ set nocount on IF @MJW_Owner_Type_Code_RS IS NULL BEGIN SELECT TOP 25  MJW_Owner_Type_Code, MJW_Owner_Type_Code_Desc, MJW_K1_Map, NOTEINDX, DEX_ROW_ID FROM .B0510170 ORDER BY MJW_Owner_Type_Code DESC END ELSE IF @MJW_Owner_Type_Code_RS = @MJW_Owner_Type_Code_RE BEGIN SELECT TOP 25  MJW_Owner_Type_Code, MJW_Owner_Type_Code_Desc, MJW_K1_Map, NOTEINDX, DEX_ROW_ID FROM .B0510170 WHERE MJW_Owner_Type_Code = @MJW_Owner_Type_Code_RS ORDER BY MJW_Owner_Type_Code DESC END ELSE BEGIN SELECT TOP 25  MJW_Owner_Type_Code, MJW_Owner_Type_Code_Desc, MJW_K1_Map, NOTEINDX, DEX_ROW_ID FROM .B0510170 WHERE MJW_Owner_Type_Code BETWEEN @MJW_Owner_Type_Code_RS AND @MJW_Owner_Type_Code_RE ORDER BY MJW_Owner_Type_Code DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510170L_1] TO [DYNGRP]
GO
