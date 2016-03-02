SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY04100L_4] (@BNKBRNCH_RS char(21), @BANKID_RS char(15), @BNKBRNCH_RE char(21), @BANKID_RE char(15)) AS  set nocount on IF @BNKBRNCH_RS IS NULL BEGIN SELECT TOP 25  BANKID, BANKNAME, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTRY, PHNUMBR1, PHNUMBR2, PHONE3, FAXNUMBR, TRNSTNBR, BNKBRNCH, NOTEINDX, DDTRANUM, DEX_ROW_ID FROM .SY04100 ORDER BY BNKBRNCH DESC, BANKID DESC, DEX_ROW_ID DESC END ELSE IF @BNKBRNCH_RS = @BNKBRNCH_RE BEGIN SELECT TOP 25  BANKID, BANKNAME, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTRY, PHNUMBR1, PHNUMBR2, PHONE3, FAXNUMBR, TRNSTNBR, BNKBRNCH, NOTEINDX, DDTRANUM, DEX_ROW_ID FROM .SY04100 WHERE BNKBRNCH = @BNKBRNCH_RS AND BANKID BETWEEN @BANKID_RS AND @BANKID_RE ORDER BY BNKBRNCH DESC, BANKID DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  BANKID, BANKNAME, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTRY, PHNUMBR1, PHNUMBR2, PHONE3, FAXNUMBR, TRNSTNBR, BNKBRNCH, NOTEINDX, DDTRANUM, DEX_ROW_ID FROM .SY04100 WHERE BNKBRNCH BETWEEN @BNKBRNCH_RS AND @BNKBRNCH_RE AND BANKID BETWEEN @BANKID_RS AND @BANKID_RE ORDER BY BNKBRNCH DESC, BANKID DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY04100L_4] TO [DYNGRP]
GO
