SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeSOPDocumentAnalysis]  @SORTBY char(15),       @i_ITEMNMBR_RS char(21) = '',    @i_ITEMNMBR_RE char(21) = '',    @i_CUSTNMBR_RS char(15) = '',    @i_CUSTNMBR_RE char(15) = '',    @i_DOCDATE_RS char(17) = '',    @i_DOCDATE_RE char(17) = '',    @DETAIL tinyint = 0        as  set nocount on  If OBJECT_ID('tempdb..#SOPDOCS') is  NULL  Begin  create table #SOPDOCS (  CUSTNMBR char(15) not null default '',  CUSTNAME char(65) not null default '',  SOPNUMBE char(21) not null default '',  SOPTYPE int not null default 0,  ITEMNMBR char(31) not null default '',  DOCDATE datetime not null default '01/01/1900',  QUANTITY numeric(19,5) not null default 0.00,  UNITPRIC numeric(19,5) not null default 0.00,  UNITCOST numeric(19,5) not null default 0.00,  PROFIT numeric(19,5) not null default 0.00,  PRPRCNT numeric(19,5) not null default 0.00,  MY_DEX_ROW int Identity (1,1) )  End   delete #SOPDOCS   insert into #SOPDOCS (CUSTNMBR,CUSTNAME,SOPNUMBE,SOPTYPE,ITEMNMBR,DOCDATE,QUANTITY,UNITPRIC,UNITCOST,PROFIT,PRPRCNT)  select a.CUSTNMBR, a.CUSTNAME, a.SOPNUMBE, a.SOPTYPE, b.ITEMNMBR, a.DOCDATE, b.QTYTOINV,   cast((b.ORUNTPRC * b.QTYTOINV) as numeric(19,5)),  cast((b.UNITCOST * b.QTYTOINV) as numeric(19,5)),  cast(((b.ORUNTPRC * b.QTYTOINV) - (b.UNITCOST * b.QTYTOINV)) as numeric(19,5)),  cast((((b.ORUNTPRC * b.QTYTOINV) - (b.UNITCOST * b.QTYTOINV)) / (b.ORUNTPRC * b.QTYTOINV)) as numeric(19,5))  from SOP30200 a, SOP30300 b  where a.SOPNUMBE = b.SOPNUMBE and  a.SOPTYPE = b.SOPTYPE and  a.SOPTYPE = 3 and  a.VOIDSTTS <> 1 and  b.QTYTOINV <> 0 and  b.ORUNTPRC <> 0 and  b.ITEMNMBR between @i_ITEMNMBR_RS and @i_ITEMNMBR_RE and  a.CUSTNMBR between @i_CUSTNMBR_RS and @i_CUSTNMBR_RE and  a.DOCDATE between @i_DOCDATE_RS and @i_DOCDATE_RE   order by a.CUSTNMBR, a.DOCDATE ASC  select * from #SOPDOCS     
GO
GRANT EXECUTE ON  [dbo].[seeSOPDocumentAnalysis] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeSOPDocumentAnalysis] TO [rpt_customer service rep]
GO
GRANT EXECUTE ON  [dbo].[seeSOPDocumentAnalysis] TO [rpt_operations manager]
GO
GRANT EXECUTE ON  [dbo].[seeSOPDocumentAnalysis] TO [rpt_order processor]
GO
GRANT EXECUTE ON  [dbo].[seeSOPDocumentAnalysis] TO [rpt_power user]
GO
GRANT EXECUTE ON  [dbo].[seeSOPDocumentAnalysis] TO [rpt_sales manager]
GO
GRANT EXECUTE ON  [dbo].[seeSOPDocumentAnalysis] TO [rpt_shipping and receiving]
GO
GRANT EXECUTE ON  [dbo].[seeSOPDocumentAnalysis] TO [rpt_warehouse manager]
GO
