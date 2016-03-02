SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR00102N_2] (@BS int, @EMPLOYID char(15), @CITY char(35), @DEX_ROW_ID int, @EMPLOYID_RS char(15), @CITY_RS char(35), @EMPLOYID_RE char(15), @CITY_RE char(35)) AS  set nocount on IF @EMPLOYID_RS IS NULL BEGIN SELECT TOP 25  EMPLOYID, ADRSCODE, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTY, COUNTRY, PHONE1, PHONE2, PHONE3, FAX, Foreign_Address, Foreign_StateProvince, Foreign_Postal_Code, CCode, DEX_ROW_ID FROM .UPR00102 WHERE ( EMPLOYID = @EMPLOYID AND CITY = @CITY AND DEX_ROW_ID > @DEX_ROW_ID OR EMPLOYID = @EMPLOYID AND CITY > @CITY OR EMPLOYID > @EMPLOYID ) ORDER BY EMPLOYID ASC, CITY ASC, DEX_ROW_ID ASC END ELSE IF @EMPLOYID_RS = @EMPLOYID_RE BEGIN SELECT TOP 25  EMPLOYID, ADRSCODE, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTY, COUNTRY, PHONE1, PHONE2, PHONE3, FAX, Foreign_Address, Foreign_StateProvince, Foreign_Postal_Code, CCode, DEX_ROW_ID FROM .UPR00102 WHERE EMPLOYID = @EMPLOYID_RS AND CITY BETWEEN @CITY_RS AND @CITY_RE AND ( EMPLOYID = @EMPLOYID AND CITY = @CITY AND DEX_ROW_ID > @DEX_ROW_ID OR EMPLOYID = @EMPLOYID AND CITY > @CITY OR EMPLOYID > @EMPLOYID ) ORDER BY EMPLOYID ASC, CITY ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  EMPLOYID, ADRSCODE, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTY, COUNTRY, PHONE1, PHONE2, PHONE3, FAX, Foreign_Address, Foreign_StateProvince, Foreign_Postal_Code, CCode, DEX_ROW_ID FROM .UPR00102 WHERE EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND CITY BETWEEN @CITY_RS AND @CITY_RE AND ( EMPLOYID = @EMPLOYID AND CITY = @CITY AND DEX_ROW_ID > @DEX_ROW_ID OR EMPLOYID = @EMPLOYID AND CITY > @CITY OR EMPLOYID > @EMPLOYID ) ORDER BY EMPLOYID ASC, CITY ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR00102N_2] TO [DYNGRP]
GO
