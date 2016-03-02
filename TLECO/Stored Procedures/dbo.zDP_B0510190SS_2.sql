SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510190SS_2] (@MJW_Address_Type_Descrip char(51)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  MJW_Address_Type, MJW_Address_Type_Descrip, NOTEINDX, DEX_ROW_ID FROM .B0510190 WHERE MJW_Address_Type_Descrip = @MJW_Address_Type_Descrip ORDER BY MJW_Address_Type_Descrip ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510190SS_2] TO [DYNGRP]
GO
