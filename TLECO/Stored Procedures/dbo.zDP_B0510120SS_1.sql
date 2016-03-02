SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510120SS_1] (@MJW_Offering_ID char(21), @MJW_Property_ID char(21)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  MJW_Offering_ID, MJW_Property_ID, NOTEINDX, DEX_ROW_ID FROM .B0510120 WHERE MJW_Offering_ID = @MJW_Offering_ID AND MJW_Property_ID = @MJW_Property_ID ORDER BY MJW_Offering_ID ASC, MJW_Property_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510120SS_1] TO [DYNGRP]
GO
