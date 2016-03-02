SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV40700SS_1] (@LOCNCODE char(11)) AS  set nocount on SELECT TOP 1  LOCNCODE, LOCNDSCR, NOTEINDX, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTRY, PHONE1, PHONE2, PHONE3, FAXNUMBR, Location_Segment, STAXSCHD, PCTAXSCH, INCLDDINPLNNNG, PORECEIPTBIN, PORETRNBIN, SOFULFILLMENTBIN, SORETURNBIN, BOMRCPTBIN, MATERIALISSUEBIN, MORECEIPTBIN, REPAIRISSUESBIN, WMSINT, PICKTICKETSITEOPT, BINBREAK, CCode, DECLID, INACTIVE, DEX_ROW_ID FROM .IV40700 WHERE LOCNCODE = @LOCNCODE ORDER BY LOCNCODE ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV40700SS_1] TO [DYNGRP]
GO
