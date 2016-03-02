SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY40100SS_5] (@FORIGIN tinyint, @PERIODDT datetime) AS  set nocount on SELECT TOP 1  CLOSED, SERIES, ODESCTN, FORIGIN, PERIODID, PERIODDT, PERNAME, PSERIES_1, PSERIES_2, PSERIES_3, PSERIES_4, PSERIES_5, PSERIES_6, YEAR1, PERDENDT, DEX_ROW_TS, DEX_ROW_ID FROM .SY40100 WHERE FORIGIN = @FORIGIN AND PERIODDT = @PERIODDT ORDER BY FORIGIN ASC, PERIODDT ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY40100SS_5] TO [DYNGRP]
GO