SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_SLB10600SS_1] (@SmartList_ID char(15), @SmartList_Field_Name char(81)) AS set nocount on SELECT TOP 1  SmartList_ID, SmartList_Field_Name, DEX_ROW_ID FROM .SLB10600 WHERE SmartList_ID = @SmartList_ID AND SmartList_Field_Name = @SmartList_Field_Name ORDER BY SmartList_ID ASC, SmartList_Field_Name ASC set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_SLB10600SS_1] TO [DYNGRP]
GO
