SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE VIEW [dbo].[ivHistoryTransactions] as (  select 0 as 'MKTOPROC',  0 as 'InfoValue',  GETDATE() AS 'DOCDATE',  0 as 'DOCTYPE',  REPLICATE('X', 21) as 'DOCTYNAM',  REPLICATE('X', 21) as 'DOCNUMBR',  0 as 'LNSEQNBR',  REPLICATE('X', 31) as 'ITEMNMBR',  REPLICATE('X', 101) as 'ITEMDESC',  0 as 'DCSTATUS',  REPLICATE('X', 31) as 'STSDESCR',  9999999999999.99999 as 'TRXQTY',  REPLICATE('X', 9) as 'UOFM',  9999999999999.99999 as 'UNITCOST',  REPLICATE('X', 11) as 'TRXLOCTN',  REPLICATE('X', 3) as 'HSTMODUL',  REPLICATE('X', 31) as 'SRCRFRNCNMBR',  0 as DECPLQTY,  0 as DECPLCUR,  REPLICATE('X', 15) as 'Reason_Code'  where (1 = 0)  UNION ALL   select 0 as 'MKTOPROC',   0 as 'InfoValue',  ['IV Transaction History LINE'].[DOCDATE] as 'DOCDATE',  ['IV Transaction History LINE'].[DOCTYPE] as 'DOCTYPE',  '' as 'DOCTYNAM',  rtrim(['IV Transaction History LINE'].[DOCNUMBR]) as 'DOCNUMBR',  ['IV Transaction History LINE'].[LNSEQNBR] as 'LNSEQNBR',  ['IV Transaction History LINE'].[ITEMNMBR] as 'ITEMNMBR',  ['IV Item Master'].[ITEMDESC] as 'ITEMDESC',  DCSTATUS = 3,  STSDESCR = 'Hist.',  ['IV Transaction History LINE'].[TRXQTY] as 'TRXQTY',  ['IV Transaction History LINE'].[UOFM] as 'UOFM',  ['IV Transaction History LINE'].[UNITCOST] as 'UNITCOST',  ['IV Transaction History LINE'].[TRXLOCTN] as 'TRXLOCTN',  ['IV Transaction History LINE'].[HSTMODUL] as 'HSTMODUL',  (select SRCRFRNCNMBR = case ['IV Transaction History LINE'].[DOCTYPE]  when 1 then ['IV Transaction History HDR'].[SRCRFRNCNMBR]  when 2 then ['IV Transaction History HDR'].[SRCRFRNCNMBR]  when 3 then ['IV Transaction History HDR'].[SRCRFRNCNMBR]  else ''  end),  ['IV Transaction History LINE'].[DECPLQTY] as DECPLQTY,  ['IV Transaction History LINE'].[DECPLCUR] + 6 as DECPLCUR,  ['IV Transaction History LINE'].[Reason_Code] as 'Reason_Code'   from IV30300 as ['IV Transaction History LINE'] with (NOLOCK)   left outer join IV30200 as ['IV Transaction History HDR'] with (NOLOCK)   on (['IV Transaction History HDR'].IVDOCTYP = ['IV Transaction History LINE'].DOCTYPE and   ['IV Transaction History HDR'].DOCNUMBR = ['IV Transaction History LINE'].DOCNUMBR)   left outer join IV00101 as ['IV Item Master']  with (NOLOCK)   on (['IV Transaction History LINE'].ITEMNMBR = ['IV Item Master'].ITEMNMBR)  where ['IV Transaction History LINE'].DOCTYPE <= 7 )    
GO
GRANT SELECT ON  [dbo].[ivHistoryTransactions] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ivHistoryTransactions] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ivHistoryTransactions] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ivHistoryTransactions] TO [DYNGRP]
GO
