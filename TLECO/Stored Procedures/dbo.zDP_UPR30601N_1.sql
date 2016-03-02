SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR30601N_1] (@BS int, @EMPLOYID char(15), @EMPLOYID_RS char(15), @EMPLOYID_RE char(15)) AS  set nocount on IF @EMPLOYID_RS IS NULL BEGIN SELECT TOP 25  EMPLOYID, FRSTNAME, MIDLNAME, LASTNAME, EMPLSUFF, NICKNAME, SOCSCNUM, STRTDATE, BRTHDATE, GENDER, ETHNORGN, MARITALSTATUS, SPOUSE, PHONE1, PHONE2, PHONE3, FAX, INET1, Messenger_Address, ADRSCODE, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTY, COUNTRY, DEX_ROW_ID, EmailToAddress FROM .UPR30601 WHERE ( EMPLOYID > @EMPLOYID ) ORDER BY EMPLOYID ASC END ELSE IF @EMPLOYID_RS = @EMPLOYID_RE BEGIN SELECT TOP 25  EMPLOYID, FRSTNAME, MIDLNAME, LASTNAME, EMPLSUFF, NICKNAME, SOCSCNUM, STRTDATE, BRTHDATE, GENDER, ETHNORGN, MARITALSTATUS, SPOUSE, PHONE1, PHONE2, PHONE3, FAX, INET1, Messenger_Address, ADRSCODE, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTY, COUNTRY, DEX_ROW_ID, EmailToAddress FROM .UPR30601 WHERE EMPLOYID = @EMPLOYID_RS AND ( EMPLOYID > @EMPLOYID ) ORDER BY EMPLOYID ASC END ELSE BEGIN SELECT TOP 25  EMPLOYID, FRSTNAME, MIDLNAME, LASTNAME, EMPLSUFF, NICKNAME, SOCSCNUM, STRTDATE, BRTHDATE, GENDER, ETHNORGN, MARITALSTATUS, SPOUSE, PHONE1, PHONE2, PHONE3, FAX, INET1, Messenger_Address, ADRSCODE, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTY, COUNTRY, DEX_ROW_ID, EmailToAddress FROM .UPR30601 WHERE EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND ( EMPLOYID > @EMPLOYID ) ORDER BY EMPLOYID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR30601N_1] TO [DYNGRP]
GO