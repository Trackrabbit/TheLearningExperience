SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV00700VSI] (@ORDDOCID char(15), @ORDRDATE datetime, @PRMDATE datetime, @Status smallint, @SHIPMTHD char(15), @TRXLOCTN char(11), @VIALOCN char(11), @TRNSTLOC char(11), @CUSTNAME char(65), @ADDRESS1 char(61), @ADDRESS2 char(61), @ADDRESS3 char(61), @CITY char(35), @STATE char(29), @ZIPCODE char(11), @COUNTRY char(61), @EMPLOYID char(15), @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .IV00700V (ORDDOCID, ORDRDATE, PRMDATE, Status, SHIPMTHD, TRXLOCTN, VIALOCN, TRNSTLOC, CUSTNAME, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTRY, EMPLOYID, NOTEINDX) VALUES ( @ORDDOCID, @ORDRDATE, @PRMDATE, @Status, @SHIPMTHD, @TRXLOCTN, @VIALOCN, @TRNSTLOC, @CUSTNAME, @ADDRESS1, @ADDRESS2, @ADDRESS3, @CITY, @STATE, @ZIPCODE, @COUNTRY, @EMPLOYID, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV00700VSI] TO [DYNGRP]
GO
