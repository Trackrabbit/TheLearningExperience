SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR42201SS_1] (@Time_on_Behalf_Code char(15), @DEPRTMNT char(7)) AS  set nocount on SELECT TOP 1  Time_on_Behalf_Code, DEPRTMNT, DEX_ROW_ID FROM .UPR42201 WHERE Time_on_Behalf_Code = @Time_on_Behalf_Code AND DEPRTMNT = @DEPRTMNT ORDER BY Time_on_Behalf_Code ASC, DEPRTMNT ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR42201SS_1] TO [DYNGRP]
GO
