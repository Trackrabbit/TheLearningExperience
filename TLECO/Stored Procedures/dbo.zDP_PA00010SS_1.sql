SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PA00010SS_1] (@BANKNAME char(31), @BNKBRNCH char(21), @CUSTNMBR char(15)) AS  set nocount on SELECT TOP 1  CUSTNMBR, BANKNAME, BNKBRNCH, DEX_ROW_ID FROM .PA00010 WHERE BANKNAME = @BANKNAME AND BNKBRNCH = @BNKBRNCH AND CUSTNMBR = @CUSTNMBR ORDER BY BANKNAME ASC, BNKBRNCH ASC, CUSTNMBR ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PA00010SS_1] TO [DYNGRP]
GO
