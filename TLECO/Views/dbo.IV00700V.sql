SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE VIEW [dbo].[IV00700V] AS SELECT     ORDDOCID AS ORDDOCID, ORDRDATE, ETADTE AS PRMDATE, STATUS AS Status, SHIPMTHD, TRNSFLOC AS TRXLOCTN, ITLOCN AS VIALOCN, LOCNCODE AS TRNSTLOC,   CUSTNAME, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTRY, TECHID AS EMPLOYID, NOTEINDX, DEX_ROW_ID FROM         dbo.SVC00700    
GO
GRANT SELECT ON  [dbo].[IV00700V] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[IV00700V] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[IV00700V] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[IV00700V] TO [DYNGRP]
GO
