SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_palbCashN_2] (@BS int, @BACHNUMB char(15), @BNKBRNCH char(21), @BANKNAME char(31), @DOCNUMBR char(21), @BACHNUMB_RS char(15), @BNKBRNCH_RS char(21), @BANKNAME_RS char(31), @DOCNUMBR_RS char(21), @BACHNUMB_RE char(15), @BNKBRNCH_RE char(21), @BANKNAME_RE char(31), @DOCNUMBR_RE char(21)) AS  set nocount on IF @BACHNUMB_RS IS NULL BEGIN SELECT TOP 25  BACHNUMB, BCHSOURC, RMDTYPAL, DOCNUMBR, CUSTNMBR, CUSTNAME, BNKBRNCH, BANKNAME, BNKACTNM, LockboxID, ERRSTATE, DEX_ROW_ID FROM .palbCash WHERE ( BACHNUMB = @BACHNUMB AND BNKBRNCH = @BNKBRNCH AND BANKNAME = @BANKNAME AND DOCNUMBR > @DOCNUMBR OR BACHNUMB = @BACHNUMB AND BNKBRNCH = @BNKBRNCH AND BANKNAME > @BANKNAME OR BACHNUMB = @BACHNUMB AND BNKBRNCH > @BNKBRNCH OR BACHNUMB > @BACHNUMB ) ORDER BY BACHNUMB ASC, BNKBRNCH ASC, BANKNAME ASC, DOCNUMBR ASC END ELSE IF @BACHNUMB_RS = @BACHNUMB_RE BEGIN SELECT TOP 25  BACHNUMB, BCHSOURC, RMDTYPAL, DOCNUMBR, CUSTNMBR, CUSTNAME, BNKBRNCH, BANKNAME, BNKACTNM, LockboxID, ERRSTATE, DEX_ROW_ID FROM .palbCash WHERE BACHNUMB = @BACHNUMB_RS AND BNKBRNCH BETWEEN @BNKBRNCH_RS AND @BNKBRNCH_RE AND BANKNAME BETWEEN @BANKNAME_RS AND @BANKNAME_RE AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE AND ( BACHNUMB = @BACHNUMB AND BNKBRNCH = @BNKBRNCH AND BANKNAME = @BANKNAME AND DOCNUMBR > @DOCNUMBR OR BACHNUMB = @BACHNUMB AND BNKBRNCH = @BNKBRNCH AND BANKNAME > @BANKNAME OR BACHNUMB = @BACHNUMB AND BNKBRNCH > @BNKBRNCH OR BACHNUMB > @BACHNUMB ) ORDER BY BACHNUMB ASC, BNKBRNCH ASC, BANKNAME ASC, DOCNUMBR ASC END ELSE BEGIN SELECT TOP 25  BACHNUMB, BCHSOURC, RMDTYPAL, DOCNUMBR, CUSTNMBR, CUSTNAME, BNKBRNCH, BANKNAME, BNKACTNM, LockboxID, ERRSTATE, DEX_ROW_ID FROM .palbCash WHERE BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE AND BNKBRNCH BETWEEN @BNKBRNCH_RS AND @BNKBRNCH_RE AND BANKNAME BETWEEN @BANKNAME_RS AND @BANKNAME_RE AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE AND ( BACHNUMB = @BACHNUMB AND BNKBRNCH = @BNKBRNCH AND BANKNAME = @BANKNAME AND DOCNUMBR > @DOCNUMBR OR BACHNUMB = @BACHNUMB AND BNKBRNCH = @BNKBRNCH AND BANKNAME > @BANKNAME OR BACHNUMB = @BACHNUMB AND BNKBRNCH > @BNKBRNCH OR BACHNUMB > @BACHNUMB ) ORDER BY BACHNUMB ASC, BNKBRNCH ASC, BANKNAME ASC, DOCNUMBR ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_palbCashN_2] TO [DYNGRP]
GO
