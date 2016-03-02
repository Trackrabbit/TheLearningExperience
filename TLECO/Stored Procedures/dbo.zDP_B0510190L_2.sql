SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510190L_2] (@MJW_Address_Type_Descrip_RS char(51), @MJW_Address_Type_Descrip_RE char(51)) AS /* 12.00.0270.000 */ set nocount on IF @MJW_Address_Type_Descrip_RS IS NULL BEGIN SELECT TOP 25  MJW_Address_Type, MJW_Address_Type_Descrip, NOTEINDX, DEX_ROW_ID FROM .B0510190 ORDER BY MJW_Address_Type_Descrip DESC, DEX_ROW_ID DESC END ELSE IF @MJW_Address_Type_Descrip_RS = @MJW_Address_Type_Descrip_RE BEGIN SELECT TOP 25  MJW_Address_Type, MJW_Address_Type_Descrip, NOTEINDX, DEX_ROW_ID FROM .B0510190 WHERE MJW_Address_Type_Descrip = @MJW_Address_Type_Descrip_RS ORDER BY MJW_Address_Type_Descrip DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  MJW_Address_Type, MJW_Address_Type_Descrip, NOTEINDX, DEX_ROW_ID FROM .B0510190 WHERE MJW_Address_Type_Descrip BETWEEN @MJW_Address_Type_Descrip_RS AND @MJW_Address_Type_Descrip_RE ORDER BY MJW_Address_Type_Descrip DESC, DEX_ROW_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510190L_2] TO [DYNGRP]
GO
