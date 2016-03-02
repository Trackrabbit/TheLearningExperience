SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_palbCashF_3] (@BACHNUMB_RS char(15), @CUSTNMBR_RS char(15), @CUSTNAME_RS char(65), @DOCNUMBR_RS char(21), @BACHNUMB_RE char(15), @CUSTNMBR_RE char(15), @CUSTNAME_RE char(65), @DOCNUMBR_RE char(21)) AS  set nocount on IF @BACHNUMB_RS IS NULL BEGIN SELECT TOP 25  BACHNUMB, BCHSOURC, RMDTYPAL, DOCNUMBR, CUSTNMBR, CUSTNAME, BNKBRNCH, BANKNAME, BNKACTNM, LockboxID, ERRSTATE, DEX_ROW_ID FROM .palbCash ORDER BY BACHNUMB ASC, CUSTNMBR ASC, CUSTNAME ASC, DOCNUMBR ASC END ELSE IF @BACHNUMB_RS = @BACHNUMB_RE BEGIN SELECT TOP 25  BACHNUMB, BCHSOURC, RMDTYPAL, DOCNUMBR, CUSTNMBR, CUSTNAME, BNKBRNCH, BANKNAME, BNKACTNM, LockboxID, ERRSTATE, DEX_ROW_ID FROM .palbCash WHERE BACHNUMB = @BACHNUMB_RS AND CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE AND CUSTNAME BETWEEN @CUSTNAME_RS AND @CUSTNAME_RE AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE ORDER BY BACHNUMB ASC, CUSTNMBR ASC, CUSTNAME ASC, DOCNUMBR ASC END ELSE BEGIN SELECT TOP 25  BACHNUMB, BCHSOURC, RMDTYPAL, DOCNUMBR, CUSTNMBR, CUSTNAME, BNKBRNCH, BANKNAME, BNKACTNM, LockboxID, ERRSTATE, DEX_ROW_ID FROM .palbCash WHERE BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE AND CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE AND CUSTNAME BETWEEN @CUSTNAME_RS AND @CUSTNAME_RE AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE ORDER BY BACHNUMB ASC, CUSTNMBR ASC, CUSTNAME ASC, DOCNUMBR ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_palbCashF_3] TO [DYNGRP]
GO
