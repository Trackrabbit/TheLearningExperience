SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_NLB10600SS_1] (@Navigation_ID char(15), @Navigation_Field_Name char(81)) AS set nocount on SELECT TOP 1  Navigation_ID, Navigation_Field_Name, DEX_ROW_ID FROM .NLB10600 WHERE Navigation_ID = @Navigation_ID AND Navigation_Field_Name = @Navigation_Field_Name ORDER BY Navigation_ID ASC, Navigation_Field_Name ASC set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_NLB10600SS_1] TO [DYNGRP]
GO
