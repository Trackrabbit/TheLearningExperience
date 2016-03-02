SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE VIEW [dbo].[SVC0202V] (EQUIPID, EQPLINE, ITEMNMBR, CALLNBR, SRVRECTYPE, TECHID,  SRVTYPE, ENTDTE, COMPDTE, COMPTME, PROBCDE, OFFID, SRVSTAT, CONTNBR, CUSTNMBR, CUSTNAME, DEX_ROW_ID)  AS   SELECT SVC00202.EQUIPID, SVC00202.EQPLINE, SVC00202.ITEMNMBR, SVC00202.CALLNBR, SVC00202.SRVRECTYPE, SVC00200.TECHID,  SVC00200.SRVTYPE, SVC00200.ENTDTE, SVC00200.COMPDTE, SVC00200.COMPTME, SVC00201.PROBCDE, SVC00200.OFFID,  SVC00200.SRVSTAT, SVC00200.CONTNBR, SVC00200.CUSTNMBR, SVC00200.CUSTNAME, SVC00202.DEX_ROW_ID  FROM SVC00202 JOIN SVC00200 ON ( SVC00202.SRVRECTYPE = SVC00200.SRVRECTYPE AND SVC00202.CALLNBR = SVC00200.CALLNBR )  JOIN SVC00201 ON ( SVC00202.SRVRECTYPE = SVC00201.SRVRECTYPE AND SVC00202.CALLNBR = SVC00201.CALLNBR AND SVC00202.EQPLINE = SVC00201.LNITMSEQ )  union SELECT SVC30202.EQUIPID, SVC30202.EQPLINE, SVC30202.ITEMNMBR, SVC30202.CALLNBR, SVC30202.SRVRECTYPE, SVC30200.TECHID, SVC30200.SRVTYPE, SVC30200.ENTDTE, SVC30200.COMPDTE, SVC30200.COMPTME, SVC30201.PROBCDE, SVC30200.OFFID, SVC30200.SRVSTAT, SVC30200.CONTNBR, SVC30200.CUSTNMBR,SVC30200.CUSTNAME,SVC30202.DEX_ROW_ID+1000000000 FROM SVC30202 JOIN SVC30200 ON ( SVC30202.SRVRECTYPE = SVC30200.SRVRECTYPE AND SVC30202.CALLNBR = SVC30200.CALLNBR )  JOIN SVC30201 ON ( SVC30202.SRVRECTYPE = SVC30201.SRVRECTYPE AND SVC30202.CALLNBR = SVC30201.CALLNBR AND SVC30202.EQPLINE = SVC30201.LNITMSEQ )     
GO
GRANT SELECT ON  [dbo].[SVC0202V] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC0202V] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC0202V] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC0202V] TO [DYNGRP]
GO