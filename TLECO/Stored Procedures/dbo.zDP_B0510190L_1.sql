SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510190L_1] (@MJW_Address_Type_RS char(21), @MJW_Address_Type_RE char(21)) AS /* 12.00.0270.000 */ set nocount on IF @MJW_Address_Type_RS IS NULL BEGIN SELECT TOP 25  MJW_Address_Type, MJW_Address_Type_Descrip, NOTEINDX, DEX_ROW_ID FROM .B0510190 ORDER BY MJW_Address_Type DESC END ELSE IF @MJW_Address_Type_RS = @MJW_Address_Type_RE BEGIN SELECT TOP 25  MJW_Address_Type, MJW_Address_Type_Descrip, NOTEINDX, DEX_ROW_ID FROM .B0510190 WHERE MJW_Address_Type = @MJW_Address_Type_RS ORDER BY MJW_Address_Type DESC END ELSE BEGIN SELECT TOP 25  MJW_Address_Type, MJW_Address_Type_Descrip, NOTEINDX, DEX_ROW_ID FROM .B0510190 WHERE MJW_Address_Type BETWEEN @MJW_Address_Type_RS AND @MJW_Address_Type_RE ORDER BY MJW_Address_Type DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510190L_1] TO [DYNGRP]
GO
