SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC30700L_3] (@OFFID_RS char(11), @STATUS_RS smallint, @OFFID_RE char(11), @STATUS_RE smallint) AS  set nocount on IF @OFFID_RS IS NULL BEGIN SELECT TOP 25  ORDDOCID, RFRNCDOC, TECHID, OFFID, STATUS, ORDRDATE, ETADTE, CUSTNAME, ADDRESS1, ADDRESS2, CITY, STATE, ZIPCODE, SHIPMTHD, TRNSFLOC, ITLOCN, LOCNCODE, NOTEINDX, SVC_Address_Option, SVC_Misc_Address_Code, ADDRESS3, COUNTRY, USERID, DEX_ROW_ID FROM .SVC30700 ORDER BY OFFID DESC, STATUS DESC, DEX_ROW_ID DESC END ELSE IF @OFFID_RS = @OFFID_RE BEGIN SELECT TOP 25  ORDDOCID, RFRNCDOC, TECHID, OFFID, STATUS, ORDRDATE, ETADTE, CUSTNAME, ADDRESS1, ADDRESS2, CITY, STATE, ZIPCODE, SHIPMTHD, TRNSFLOC, ITLOCN, LOCNCODE, NOTEINDX, SVC_Address_Option, SVC_Misc_Address_Code, ADDRESS3, COUNTRY, USERID, DEX_ROW_ID FROM .SVC30700 WHERE OFFID = @OFFID_RS AND STATUS BETWEEN @STATUS_RS AND @STATUS_RE ORDER BY OFFID DESC, STATUS DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  ORDDOCID, RFRNCDOC, TECHID, OFFID, STATUS, ORDRDATE, ETADTE, CUSTNAME, ADDRESS1, ADDRESS2, CITY, STATE, ZIPCODE, SHIPMTHD, TRNSFLOC, ITLOCN, LOCNCODE, NOTEINDX, SVC_Address_Option, SVC_Misc_Address_Code, ADDRESS3, COUNTRY, USERID, DEX_ROW_ID FROM .SVC30700 WHERE OFFID BETWEEN @OFFID_RS AND @OFFID_RE AND STATUS BETWEEN @STATUS_RS AND @STATUS_RE ORDER BY OFFID DESC, STATUS DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC30700L_3] TO [DYNGRP]
GO