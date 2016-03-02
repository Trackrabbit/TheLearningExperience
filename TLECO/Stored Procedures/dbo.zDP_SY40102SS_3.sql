SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY40102SS_3] (@FORIGIN tinyint, @YEAR1 smallint, @PERNAME char(21), @PERIODID smallint) AS  set nocount on SELECT TOP 1  CLOSED, SERIES, ODESCTN, FORIGIN, PERIODID, PERIODDT, PERNAME, PSERIES_1, PSERIES_2, PSERIES_3, PSERIES_4, PSERIES_5, PSERIES_6, YEAR1, DEX_ROW_ID FROM .SY40102 WHERE FORIGIN = @FORIGIN AND YEAR1 = @YEAR1 AND PERNAME = @PERNAME AND PERIODID = @PERIODID ORDER BY FORIGIN ASC, YEAR1 ASC, PERNAME ASC, PERIODID ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY40102SS_3] TO [DYNGRP]
GO
