SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR30601SS_2] (@FRSTNAME char(15), @LASTNAME char(21), @EMPLOYID char(15)) AS  set nocount on SELECT TOP 1  EMPLOYID, FRSTNAME, MIDLNAME, LASTNAME, EMPLSUFF, NICKNAME, SOCSCNUM, STRTDATE, BRTHDATE, GENDER, ETHNORGN, MARITALSTATUS, SPOUSE, PHONE1, PHONE2, PHONE3, FAX, INET1, Messenger_Address, ADRSCODE, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTY, COUNTRY, DEX_ROW_ID, EmailToAddress FROM .UPR30601 WHERE FRSTNAME = @FRSTNAME AND LASTNAME = @LASTNAME AND EMPLOYID = @EMPLOYID ORDER BY FRSTNAME ASC, LASTNAME ASC, EMPLOYID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR30601SS_2] TO [DYNGRP]
GO
