SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR42200SS_1] (@Time_on_Behalf_Code char(15)) AS  set nocount on SELECT TOP 1  Time_on_Behalf_Code, DSCRIPTN, INACTIVE, Admin_Code, DEX_ROW_ID FROM .UPR42200 WHERE Time_on_Behalf_Code = @Time_on_Behalf_Code ORDER BY Time_on_Behalf_Code ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR42200SS_1] TO [DYNGRP]
GO
