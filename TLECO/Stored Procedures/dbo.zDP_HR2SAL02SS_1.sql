SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HR2SAL02SS_1] (@EMPID_I char(15), @ISEQUENCENUMBER_I smallint) AS  set nocount on SELECT TOP 1  EMPID_I, ISEQUENCENUMBER_I, EFFECTIVEDATE_I, DSCRIPTN, WAGE_I, DEX_ROW_ID FROM .HR2SAL02 WHERE EMPID_I = @EMPID_I AND ISEQUENCENUMBER_I = @ISEQUENCENUMBER_I ORDER BY EMPID_I ASC, ISEQUENCENUMBER_I ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR2SAL02SS_1] TO [DYNGRP]
GO
