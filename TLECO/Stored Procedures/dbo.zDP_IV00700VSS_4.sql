SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV00700VSS_4] (@Status smallint, @ORDDOCID char(15)) AS  set nocount on SELECT TOP 1  ORDDOCID, ORDRDATE, PRMDATE, Status, SHIPMTHD, TRXLOCTN, VIALOCN, TRNSTLOC, CUSTNAME, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTRY, EMPLOYID, NOTEINDX, DEX_ROW_ID FROM .IV00700V WHERE Status = @Status AND ORDDOCID = @ORDDOCID ORDER BY Status ASC, ORDDOCID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV00700VSS_4] TO [DYNGRP]
GO
