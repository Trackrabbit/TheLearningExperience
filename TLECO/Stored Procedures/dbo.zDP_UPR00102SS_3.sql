SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR00102SS_3] (@EMPLOYID char(15), @STATE char(29)) AS  set nocount on SELECT TOP 1  EMPLOYID, ADRSCODE, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTY, COUNTRY, PHONE1, PHONE2, PHONE3, FAX, Foreign_Address, Foreign_StateProvince, Foreign_Postal_Code, CCode, DEX_ROW_ID FROM .UPR00102 WHERE EMPLOYID = @EMPLOYID AND STATE = @STATE ORDER BY EMPLOYID ASC, STATE ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR00102SS_3] TO [DYNGRP]
GO