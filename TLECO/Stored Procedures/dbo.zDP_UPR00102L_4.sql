SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR00102L_4] (@EMPLOYID_RS char(15), @ZIPCODE_RS char(11), @EMPLOYID_RE char(15), @ZIPCODE_RE char(11)) AS  set nocount on IF @EMPLOYID_RS IS NULL BEGIN SELECT TOP 25  EMPLOYID, ADRSCODE, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTY, COUNTRY, PHONE1, PHONE2, PHONE3, FAX, Foreign_Address, Foreign_StateProvince, Foreign_Postal_Code, CCode, DEX_ROW_ID FROM .UPR00102 ORDER BY EMPLOYID DESC, ZIPCODE DESC, DEX_ROW_ID DESC END ELSE IF @EMPLOYID_RS = @EMPLOYID_RE BEGIN SELECT TOP 25  EMPLOYID, ADRSCODE, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTY, COUNTRY, PHONE1, PHONE2, PHONE3, FAX, Foreign_Address, Foreign_StateProvince, Foreign_Postal_Code, CCode, DEX_ROW_ID FROM .UPR00102 WHERE EMPLOYID = @EMPLOYID_RS AND ZIPCODE BETWEEN @ZIPCODE_RS AND @ZIPCODE_RE ORDER BY EMPLOYID DESC, ZIPCODE DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  EMPLOYID, ADRSCODE, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTY, COUNTRY, PHONE1, PHONE2, PHONE3, FAX, Foreign_Address, Foreign_StateProvince, Foreign_Postal_Code, CCode, DEX_ROW_ID FROM .UPR00102 WHERE EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND ZIPCODE BETWEEN @ZIPCODE_RS AND @ZIPCODE_RE ORDER BY EMPLOYID DESC, ZIPCODE DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR00102L_4] TO [DYNGRP]
GO
