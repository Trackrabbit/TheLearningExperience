SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HRSAX022SS_1] (@TABLE_I smallint) AS  set nocount on SELECT TOP 1  TABLE_I, DSCRIPTN, COMPENSATIONPERIOD_I, DEX_ROW_ID FROM .HRSAX022 WHERE TABLE_I = @TABLE_I ORDER BY TABLE_I ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRSAX022SS_1] TO [DYNGRP]
GO
