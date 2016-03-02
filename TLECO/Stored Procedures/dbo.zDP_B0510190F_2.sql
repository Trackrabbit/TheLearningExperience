SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510190F_2] (@MJW_Address_Type_Descrip_RS char(51), @MJW_Address_Type_Descrip_RE char(51)) AS /* 12.00.0270.000 */ set nocount on IF @MJW_Address_Type_Descrip_RS IS NULL BEGIN SELECT TOP 25  MJW_Address_Type, MJW_Address_Type_Descrip, NOTEINDX, DEX_ROW_ID FROM .B0510190 ORDER BY MJW_Address_Type_Descrip ASC, DEX_ROW_ID ASC END ELSE IF @MJW_Address_Type_Descrip_RS = @MJW_Address_Type_Descrip_RE BEGIN SELECT TOP 25  MJW_Address_Type, MJW_Address_Type_Descrip, NOTEINDX, DEX_ROW_ID FROM .B0510190 WHERE MJW_Address_Type_Descrip = @MJW_Address_Type_Descrip_RS ORDER BY MJW_Address_Type_Descrip ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  MJW_Address_Type, MJW_Address_Type_Descrip, NOTEINDX, DEX_ROW_ID FROM .B0510190 WHERE MJW_Address_Type_Descrip BETWEEN @MJW_Address_Type_Descrip_RS AND @MJW_Address_Type_Descrip_RE ORDER BY MJW_Address_Type_Descrip ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510190F_2] TO [DYNGRP]
GO
