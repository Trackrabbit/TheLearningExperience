SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY00600L_3] (@CMPANYID_RS smallint, @ADRCNTCT_RS char(61), @CMPANYID_RE smallint, @ADRCNTCT_RE char(61)) AS  set nocount on IF @CMPANYID_RS IS NULL BEGIN SELECT TOP 25  CMPANYID, LOCATNID, LOCATNNM, ADRSCODE, ADRCNTCT, ADDRESS1, ADDRESS2, ADDRESS3, CITY, COUNTY, STATE, ZIPCODE, COUNTRY, PHONE1, PHONE2, PHONE3, FAXNUMBR, CHANGEBY_I, CHANGEDATE_I, NOTEINDX, CCode, DEX_ROW_ID FROM .SY00600 ORDER BY CMPANYID DESC, ADRCNTCT DESC, DEX_ROW_ID DESC END ELSE IF @CMPANYID_RS = @CMPANYID_RE BEGIN SELECT TOP 25  CMPANYID, LOCATNID, LOCATNNM, ADRSCODE, ADRCNTCT, ADDRESS1, ADDRESS2, ADDRESS3, CITY, COUNTY, STATE, ZIPCODE, COUNTRY, PHONE1, PHONE2, PHONE3, FAXNUMBR, CHANGEBY_I, CHANGEDATE_I, NOTEINDX, CCode, DEX_ROW_ID FROM .SY00600 WHERE CMPANYID = @CMPANYID_RS AND ADRCNTCT BETWEEN @ADRCNTCT_RS AND @ADRCNTCT_RE ORDER BY CMPANYID DESC, ADRCNTCT DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  CMPANYID, LOCATNID, LOCATNNM, ADRSCODE, ADRCNTCT, ADDRESS1, ADDRESS2, ADDRESS3, CITY, COUNTY, STATE, ZIPCODE, COUNTRY, PHONE1, PHONE2, PHONE3, FAXNUMBR, CHANGEBY_I, CHANGEDATE_I, NOTEINDX, CCode, DEX_ROW_ID FROM .SY00600 WHERE CMPANYID BETWEEN @CMPANYID_RS AND @CMPANYID_RE AND ADRCNTCT BETWEEN @ADRCNTCT_RS AND @ADRCNTCT_RE ORDER BY CMPANYID DESC, ADRCNTCT DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY00600L_3] TO [DYNGRP]
GO
