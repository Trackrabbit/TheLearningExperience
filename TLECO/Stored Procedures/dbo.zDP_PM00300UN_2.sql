SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM00300UN_2] (@BS int, @VENDORID char(15), @CITY char(35), @VENDORID_RS char(15), @CITY_RS char(35), @VENDORID_RE char(15), @CITY_RE char(35)) AS  set nocount on IF @VENDORID_RS IS NULL BEGIN SELECT TOP 25  VENDORID, ADRSCODE, VNDCNTCT, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTRY, UPSZONE, PHNUMBR1, PHNUMBR2, PHONE3, FAXNUMBR, SHIPMTHD, TAXSCHID, EmailPOs, POEmailRecipient, EmailPOFormat, FaxPOs, POFaxNumber, FaxPOFormat, CCode, DECLID, DEX_ROW_TS, DEX_ROW_ID FROM .PM00300 WHERE ( VENDORID = @VENDORID AND CITY > @CITY OR VENDORID > @VENDORID ) ORDER BY VENDORID ASC, CITY ASC, DEX_ROW_ID ASC END ELSE IF @VENDORID_RS = @VENDORID_RE BEGIN SELECT TOP 25  VENDORID, ADRSCODE, VNDCNTCT, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTRY, UPSZONE, PHNUMBR1, PHNUMBR2, PHONE3, FAXNUMBR, SHIPMTHD, TAXSCHID, EmailPOs, POEmailRecipient, EmailPOFormat, FaxPOs, POFaxNumber, FaxPOFormat, CCode, DECLID, DEX_ROW_TS, DEX_ROW_ID FROM .PM00300 WHERE VENDORID = @VENDORID_RS AND CITY BETWEEN @CITY_RS AND @CITY_RE AND ( VENDORID = @VENDORID AND CITY > @CITY OR VENDORID > @VENDORID ) ORDER BY VENDORID ASC, CITY ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  VENDORID, ADRSCODE, VNDCNTCT, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTRY, UPSZONE, PHNUMBR1, PHNUMBR2, PHONE3, FAXNUMBR, SHIPMTHD, TAXSCHID, EmailPOs, POEmailRecipient, EmailPOFormat, FaxPOs, POFaxNumber, FaxPOFormat, CCode, DECLID, DEX_ROW_TS, DEX_ROW_ID FROM .PM00300 WHERE VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE AND CITY BETWEEN @CITY_RS AND @CITY_RE AND ( VENDORID = @VENDORID AND CITY > @CITY OR VENDORID > @VENDORID ) ORDER BY VENDORID ASC, CITY ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM00300UN_2] TO [DYNGRP]
GO
