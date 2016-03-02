SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ASITAB10SS_1] (@ASI_Table_Number_Dict_ID smallint, @ASI_Table_Number smallint) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  ASI_Table_Number, ASI_Table_Number_Dict_ID, ASI_Table_Technical_Name, ASI_Tabe_Display_Name, ASI_Table_Physical_Name, ASI_Table_Series, ASI_Table_Custom_Path, ASI_Table_Short_Descript, DEX_ROW_ID, ASI_Table_Long_Descripti FROM .ASITAB10 WHERE ASI_Table_Number_Dict_ID = @ASI_Table_Number_Dict_ID AND ASI_Table_Number = @ASI_Table_Number ORDER BY ASI_Table_Number_Dict_ID ASC, ASI_Table_Number ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ASITAB10SS_1] TO [DYNGRP]
GO
