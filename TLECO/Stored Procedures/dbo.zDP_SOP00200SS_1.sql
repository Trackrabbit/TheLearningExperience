SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP00200SS_1] (@PROSPID char(15)) AS  set nocount on SELECT TOP 1  PROSPID, NOTEINDX, CUSTNAME, CNTCPRSN, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIP, COUNTRY, CUSTCLAS, PHONE1, PHONE2, PHONE3, PRCLEVEL, FAX, SHIPMTHD, TAXSCHID, USERDEF1, USERDEF2, USER2ENT, CREATDDT, MODIFDT, DEX_ROW_ID FROM .SOP00200 WHERE PROSPID = @PROSPID ORDER BY PROSPID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP00200SS_1] TO [DYNGRP]
GO
