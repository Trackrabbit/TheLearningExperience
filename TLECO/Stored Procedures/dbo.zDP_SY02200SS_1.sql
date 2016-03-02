SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY02200SS_1] (@SERIES smallint, @TRXSOURC char(25), @PTGRPTNM char(31)) AS  set nocount on SELECT TOP 1  FILEXPNM, PRNTJRNL, SERIES, TRXSOURC, PTGRPTNM, ASECTMNT, PRTOPRNT, PRTOSCNT, PRTOFLNT, EXPTTYPE, APNDRPLC, DEX_ROW_ID FROM .SY02200 WHERE SERIES = @SERIES AND TRXSOURC = @TRXSOURC AND PTGRPTNM = @PTGRPTNM ORDER BY SERIES ASC, TRXSOURC ASC, PTGRPTNM ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY02200SS_1] TO [DYNGRP]
GO
