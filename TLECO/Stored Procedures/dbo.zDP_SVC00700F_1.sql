SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00700F_1] (@ORDDOCID_RS char(15), @ORDDOCID_RE char(15)) AS  set nocount on IF @ORDDOCID_RS IS NULL BEGIN SELECT TOP 25  ORDDOCID, RFRNCDOC, TECHID, OFFID, STATUS, ORDRDATE, ETADTE, CUSTNAME, ADDRESS1, ADDRESS2, CITY, STATE, ZIPCODE, SHIPMTHD, TRNSFLOC, ITLOCN, LOCNCODE, NOTEINDX, SVC_Address_Option, SVC_Misc_Address_Code, ADDRESS3, COUNTRY, USERID, DEX_ROW_ID FROM .SVC00700 ORDER BY ORDDOCID ASC END ELSE IF @ORDDOCID_RS = @ORDDOCID_RE BEGIN SELECT TOP 25  ORDDOCID, RFRNCDOC, TECHID, OFFID, STATUS, ORDRDATE, ETADTE, CUSTNAME, ADDRESS1, ADDRESS2, CITY, STATE, ZIPCODE, SHIPMTHD, TRNSFLOC, ITLOCN, LOCNCODE, NOTEINDX, SVC_Address_Option, SVC_Misc_Address_Code, ADDRESS3, COUNTRY, USERID, DEX_ROW_ID FROM .SVC00700 WHERE ORDDOCID = @ORDDOCID_RS ORDER BY ORDDOCID ASC END ELSE BEGIN SELECT TOP 25  ORDDOCID, RFRNCDOC, TECHID, OFFID, STATUS, ORDRDATE, ETADTE, CUSTNAME, ADDRESS1, ADDRESS2, CITY, STATE, ZIPCODE, SHIPMTHD, TRNSFLOC, ITLOCN, LOCNCODE, NOTEINDX, SVC_Address_Option, SVC_Misc_Address_Code, ADDRESS3, COUNTRY, USERID, DEX_ROW_ID FROM .SVC00700 WHERE ORDDOCID BETWEEN @ORDDOCID_RS AND @ORDDOCID_RE ORDER BY ORDDOCID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00700F_1] TO [DYNGRP]
GO
