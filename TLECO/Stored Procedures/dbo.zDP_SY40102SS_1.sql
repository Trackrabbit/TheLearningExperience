SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY40102SS_1] (@FORIGIN tinyint, @YEAR1 smallint, @PERIODID smallint, @SERIES smallint, @ODESCTN char(51)) AS  set nocount on SELECT TOP 1  CLOSED, SERIES, ODESCTN, FORIGIN, PERIODID, PERIODDT, PERNAME, PSERIES_1, PSERIES_2, PSERIES_3, PSERIES_4, PSERIES_5, PSERIES_6, YEAR1, DEX_ROW_ID FROM .SY40102 WHERE FORIGIN = @FORIGIN AND YEAR1 = @YEAR1 AND PERIODID = @PERIODID AND SERIES = @SERIES AND ODESCTN = @ODESCTN ORDER BY FORIGIN ASC, YEAR1 ASC, PERIODID ASC, SERIES ASC, ODESCTN ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY40102SS_1] TO [DYNGRP]
GO