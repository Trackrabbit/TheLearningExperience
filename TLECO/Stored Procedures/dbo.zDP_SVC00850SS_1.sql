SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00850SS_1] (@ECO_Number char(15)) AS  set nocount on SELECT TOP 1  ECO_Number, DSCRIPTN, DATE1, NOTEINDX, ITEMNMBR, From_Serial_Number, To_Serial_Number, Mandatory, SRVTYPE, TECHID, DEX_ROW_ID FROM .SVC00850 WHERE ECO_Number = @ECO_Number ORDER BY ECO_Number ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00850SS_1] TO [DYNGRP]
GO
