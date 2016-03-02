SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM00300L_1] (@VENDORID_RS char(15), @ADRSCODE_RS char(15), @VENDORID_RE char(15), @ADRSCODE_RE char(15)) AS  set nocount on IF @VENDORID_RS IS NULL BEGIN SELECT TOP 25  VENDORID, ADRSCODE, VNDCNTCT, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTRY, UPSZONE, PHNUMBR1, PHNUMBR2, PHONE3, FAXNUMBR, SHIPMTHD, TAXSCHID, EmailPOs, POEmailRecipient, EmailPOFormat, FaxPOs, POFaxNumber, FaxPOFormat, CCode, DECLID, DEX_ROW_TS, DEX_ROW_ID FROM .PM00300 ORDER BY VENDORID DESC, ADRSCODE DESC END ELSE IF @VENDORID_RS = @VENDORID_RE BEGIN SELECT TOP 25  VENDORID, ADRSCODE, VNDCNTCT, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTRY, UPSZONE, PHNUMBR1, PHNUMBR2, PHONE3, FAXNUMBR, SHIPMTHD, TAXSCHID, EmailPOs, POEmailRecipient, EmailPOFormat, FaxPOs, POFaxNumber, FaxPOFormat, CCode, DECLID, DEX_ROW_TS, DEX_ROW_ID FROM .PM00300 WHERE VENDORID = @VENDORID_RS AND ADRSCODE BETWEEN @ADRSCODE_RS AND @ADRSCODE_RE ORDER BY VENDORID DESC, ADRSCODE DESC END ELSE BEGIN SELECT TOP 25  VENDORID, ADRSCODE, VNDCNTCT, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTRY, UPSZONE, PHNUMBR1, PHNUMBR2, PHONE3, FAXNUMBR, SHIPMTHD, TAXSCHID, EmailPOs, POEmailRecipient, EmailPOFormat, FaxPOs, POFaxNumber, FaxPOFormat, CCode, DECLID, DEX_ROW_TS, DEX_ROW_ID FROM .PM00300 WHERE VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE AND ADRSCODE BETWEEN @ADRSCODE_RS AND @ADRSCODE_RE ORDER BY VENDORID DESC, ADRSCODE DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM00300L_1] TO [DYNGRP]
GO
