SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC30700N_4] (@BS int, @LOCNCODE char(11), @STATUS smallint, @TRNSFLOC char(11), @DEX_ROW_ID int, @LOCNCODE_RS char(11), @STATUS_RS smallint, @TRNSFLOC_RS char(11), @LOCNCODE_RE char(11), @STATUS_RE smallint, @TRNSFLOC_RE char(11)) AS  set nocount on IF @LOCNCODE_RS IS NULL BEGIN SELECT TOP 25  ORDDOCID, RFRNCDOC, TECHID, OFFID, STATUS, ORDRDATE, ETADTE, CUSTNAME, ADDRESS1, ADDRESS2, CITY, STATE, ZIPCODE, SHIPMTHD, TRNSFLOC, ITLOCN, LOCNCODE, NOTEINDX, SVC_Address_Option, SVC_Misc_Address_Code, ADDRESS3, COUNTRY, USERID, DEX_ROW_ID FROM .SVC30700 WHERE ( LOCNCODE = @LOCNCODE AND STATUS = @STATUS AND TRNSFLOC = @TRNSFLOC AND DEX_ROW_ID > @DEX_ROW_ID OR LOCNCODE = @LOCNCODE AND STATUS = @STATUS AND TRNSFLOC > @TRNSFLOC OR LOCNCODE = @LOCNCODE AND STATUS > @STATUS OR LOCNCODE > @LOCNCODE ) ORDER BY LOCNCODE ASC, STATUS ASC, TRNSFLOC ASC, DEX_ROW_ID ASC END ELSE IF @LOCNCODE_RS = @LOCNCODE_RE BEGIN SELECT TOP 25  ORDDOCID, RFRNCDOC, TECHID, OFFID, STATUS, ORDRDATE, ETADTE, CUSTNAME, ADDRESS1, ADDRESS2, CITY, STATE, ZIPCODE, SHIPMTHD, TRNSFLOC, ITLOCN, LOCNCODE, NOTEINDX, SVC_Address_Option, SVC_Misc_Address_Code, ADDRESS3, COUNTRY, USERID, DEX_ROW_ID FROM .SVC30700 WHERE LOCNCODE = @LOCNCODE_RS AND STATUS BETWEEN @STATUS_RS AND @STATUS_RE AND TRNSFLOC BETWEEN @TRNSFLOC_RS AND @TRNSFLOC_RE AND ( LOCNCODE = @LOCNCODE AND STATUS = @STATUS AND TRNSFLOC = @TRNSFLOC AND DEX_ROW_ID > @DEX_ROW_ID OR LOCNCODE = @LOCNCODE AND STATUS = @STATUS AND TRNSFLOC > @TRNSFLOC OR LOCNCODE = @LOCNCODE AND STATUS > @STATUS OR LOCNCODE > @LOCNCODE ) ORDER BY LOCNCODE ASC, STATUS ASC, TRNSFLOC ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  ORDDOCID, RFRNCDOC, TECHID, OFFID, STATUS, ORDRDATE, ETADTE, CUSTNAME, ADDRESS1, ADDRESS2, CITY, STATE, ZIPCODE, SHIPMTHD, TRNSFLOC, ITLOCN, LOCNCODE, NOTEINDX, SVC_Address_Option, SVC_Misc_Address_Code, ADDRESS3, COUNTRY, USERID, DEX_ROW_ID FROM .SVC30700 WHERE LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND STATUS BETWEEN @STATUS_RS AND @STATUS_RE AND TRNSFLOC BETWEEN @TRNSFLOC_RS AND @TRNSFLOC_RE AND ( LOCNCODE = @LOCNCODE AND STATUS = @STATUS AND TRNSFLOC = @TRNSFLOC AND DEX_ROW_ID > @DEX_ROW_ID OR LOCNCODE = @LOCNCODE AND STATUS = @STATUS AND TRNSFLOC > @TRNSFLOC OR LOCNCODE = @LOCNCODE AND STATUS > @STATUS OR LOCNCODE > @LOCNCODE ) ORDER BY LOCNCODE ASC, STATUS ASC, TRNSFLOC ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC30700N_4] TO [DYNGRP]
GO