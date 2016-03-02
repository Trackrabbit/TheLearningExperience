SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY04100L_1] (@BANKID_RS char(15), @BANKID_RE char(15)) AS  set nocount on IF @BANKID_RS IS NULL BEGIN SELECT TOP 25  BANKID, BANKNAME, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTRY, PHNUMBR1, PHNUMBR2, PHONE3, FAXNUMBR, TRNSTNBR, BNKBRNCH, NOTEINDX, DDTRANUM, DEX_ROW_ID FROM .SY04100 ORDER BY BANKID DESC END ELSE IF @BANKID_RS = @BANKID_RE BEGIN SELECT TOP 25  BANKID, BANKNAME, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTRY, PHNUMBR1, PHNUMBR2, PHONE3, FAXNUMBR, TRNSTNBR, BNKBRNCH, NOTEINDX, DDTRANUM, DEX_ROW_ID FROM .SY04100 WHERE BANKID = @BANKID_RS ORDER BY BANKID DESC END ELSE BEGIN SELECT TOP 25  BANKID, BANKNAME, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTRY, PHNUMBR1, PHNUMBR2, PHONE3, FAXNUMBR, TRNSTNBR, BNKBRNCH, NOTEINDX, DDTRANUM, DEX_ROW_ID FROM .SY04100 WHERE BANKID BETWEEN @BANKID_RS AND @BANKID_RE ORDER BY BANKID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY04100L_1] TO [DYNGRP]
GO