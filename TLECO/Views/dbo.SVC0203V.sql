SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE VIEW [dbo].[SVC0203V] (SRVRECTYPE, CALLNBR, EQPLINE, LNITMSEQ, LINITMTYP,ITEMUSETYPE,  TECHID, Work_Type, TRANSTME, BILLABLTIM, QTYORDER, QTYSOLD, STRTDATE, STRTTIME,  ENDDATE, ENDTME, ITEMNMBR,ITEMDESC, DEX_ROW_ID)  AS   SELECT SVC00203.SRVRECTYPE, SVC00203.CALLNBR, SVC00203.EQPLINE, SVC00203.LNITMSEQ,  SVC00203.LINITMTYP, SVC00203.ITEMUSETYPE,SVC00203.TECHID, SVC00203.Work_Type, SVC00203.TRANSTME,  SVC00203.BILLABLTIM, SVC00203.QTYORDER, SVC00203.QTYSOLD, SVC00203.STRTDATE,  SVC00203.STRTTIME, SVC00203.ENDDATE, SVC00203.ENDTME, SVC00203.ITEMNMBR, SVC00203.ITEMDESC, SVC00203.DEX_ROW_ID FROM SVC00203  union SELECT SVC30203.SRVRECTYPE, SVC30203.CALLNBR, SVC30203.EQPLINE, SVC30203.LNITMSEQ,  SVC30203.LINITMTYP, SVC30203.ITEMUSETYPE,SVC30203.TECHID, SVC30203.Work_Type, SVC30203.TRANSTME,  SVC30203.BILLABLTIM, SVC30203.QTYORDER, SVC30203.QTYSOLD, SVC30203.STRTDATE,  SVC30203.STRTTIME, SVC30203.ENDDATE, SVC30203.ENDTME, SVC30203.ITEMNMBR, SVC30203.ITEMDESC, SVC30203.DEX_ROW_ID + 1000000000 FROM SVC30203     
GO
GRANT SELECT ON  [dbo].[SVC0203V] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC0203V] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC0203V] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC0203V] TO [DYNGRP]
GO
