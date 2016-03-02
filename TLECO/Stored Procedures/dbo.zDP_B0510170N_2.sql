SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510170N_2] (@BS int, @MJW_Owner_Type_Code_Desc char(51), @DEX_ROW_ID int, @MJW_Owner_Type_Code_Desc_RS char(51), @MJW_Owner_Type_Code_Desc_RE char(51)) AS /* 12.00.0270.000 */ set nocount on IF @MJW_Owner_Type_Code_Desc_RS IS NULL BEGIN SELECT TOP 25  MJW_Owner_Type_Code, MJW_Owner_Type_Code_Desc, MJW_K1_Map, NOTEINDX, DEX_ROW_ID FROM .B0510170 WHERE ( MJW_Owner_Type_Code_Desc = @MJW_Owner_Type_Code_Desc AND DEX_ROW_ID > @DEX_ROW_ID OR MJW_Owner_Type_Code_Desc > @MJW_Owner_Type_Code_Desc ) ORDER BY MJW_Owner_Type_Code_Desc ASC, DEX_ROW_ID ASC END ELSE IF @MJW_Owner_Type_Code_Desc_RS = @MJW_Owner_Type_Code_Desc_RE BEGIN SELECT TOP 25  MJW_Owner_Type_Code, MJW_Owner_Type_Code_Desc, MJW_K1_Map, NOTEINDX, DEX_ROW_ID FROM .B0510170 WHERE MJW_Owner_Type_Code_Desc = @MJW_Owner_Type_Code_Desc_RS AND ( MJW_Owner_Type_Code_Desc = @MJW_Owner_Type_Code_Desc AND DEX_ROW_ID > @DEX_ROW_ID OR MJW_Owner_Type_Code_Desc > @MJW_Owner_Type_Code_Desc ) ORDER BY MJW_Owner_Type_Code_Desc ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  MJW_Owner_Type_Code, MJW_Owner_Type_Code_Desc, MJW_K1_Map, NOTEINDX, DEX_ROW_ID FROM .B0510170 WHERE MJW_Owner_Type_Code_Desc BETWEEN @MJW_Owner_Type_Code_Desc_RS AND @MJW_Owner_Type_Code_Desc_RE AND ( MJW_Owner_Type_Code_Desc = @MJW_Owner_Type_Code_Desc AND DEX_ROW_ID > @DEX_ROW_ID OR MJW_Owner_Type_Code_Desc > @MJW_Owner_Type_Code_Desc ) ORDER BY MJW_Owner_Type_Code_Desc ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510170N_2] TO [DYNGRP]
GO
