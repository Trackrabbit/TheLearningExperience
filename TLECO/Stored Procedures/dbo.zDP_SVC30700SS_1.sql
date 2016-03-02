SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC30700SS_1] (@ORDDOCID char(15)) AS  set nocount on SELECT TOP 1  ORDDOCID, RFRNCDOC, TECHID, OFFID, STATUS, ORDRDATE, ETADTE, CUSTNAME, ADDRESS1, ADDRESS2, CITY, STATE, ZIPCODE, SHIPMTHD, TRNSFLOC, ITLOCN, LOCNCODE, NOTEINDX, SVC_Address_Option, SVC_Misc_Address_Code, ADDRESS3, COUNTRY, USERID, DEX_ROW_ID FROM .SVC30700 WHERE ORDDOCID = @ORDDOCID ORDER BY ORDDOCID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC30700SS_1] TO [DYNGRP]
GO