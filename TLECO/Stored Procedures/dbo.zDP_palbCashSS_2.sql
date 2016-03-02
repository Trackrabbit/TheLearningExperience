SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_palbCashSS_2] (@BACHNUMB char(15), @BNKBRNCH char(21), @BANKNAME char(31), @DOCNUMBR char(21)) AS  set nocount on SELECT TOP 1  BACHNUMB, BCHSOURC, RMDTYPAL, DOCNUMBR, CUSTNMBR, CUSTNAME, BNKBRNCH, BANKNAME, BNKACTNM, LockboxID, ERRSTATE, DEX_ROW_ID FROM .palbCash WHERE BACHNUMB = @BACHNUMB AND BNKBRNCH = @BNKBRNCH AND BANKNAME = @BANKNAME AND DOCNUMBR = @DOCNUMBR ORDER BY BACHNUMB ASC, BNKBRNCH ASC, BANKNAME ASC, DOCNUMBR ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_palbCashSS_2] TO [DYNGRP]
GO
