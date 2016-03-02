SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE VIEW [dbo].[ivWorkTransactions] as (  select 0 as 'MKTOPROC',  0 as 'InfoValue',  GETDATE() AS 'DOCDATE',  0 as 'DOCTYPE',  REPLICATE('X', 21) as 'DOCTYNAM',  REPLICATE('X', 21) as 'DOCNUMBR',  0 as 'LNSEQNBR',  REPLICATE('X', 31) as 'ITEMNMBR',  REPLICATE('X', 101) as 'ITEMDESC',  0 as 'DCSTATUS',  REPLICATE('X', 31) as 'STSDESCR',  9999999999999.99999 as 'TRXQTY',  REPLICATE('X', 9) as 'UOFM',  9999999999999.99999 as 'UNITCOST',  REPLICATE('X', 11) as 'TRXLOCTN',  REPLICATE('X', 3) as 'HSTMODUL',  REPLICATE('X', 31) as 'SRCRFRNCNMBR',  0 as DECPLQTY,  0 as DECPLCUR,  REPLICATE('X', 5) as 'Reason_Code'  where (1 = 0)  UNION ALL   select 0 as 'MKTOPROC',   0 as 'InfoValue',  ['IV Transaction Work HDR'].[DOCDATE] as 'DOCDATE',  ['IV Transaction Work HDR'].[IVDOCTYP] as 'DOCTYPE',  '' as 'DOCTYNAM',  rtrim(['IV Transaction Work HDR'].[IVDOCNBR]) as 'DOCNUMBR',  ['IV Transaction Work LINE'].[LNSEQNBR] as 'LNSEQNBR',  ['IV Transaction Work LINE'].[ITEMNMBR] as 'ITEMNMBR',  isnull(['IV Item Master'].[ITEMDESC], '') as 'ITEMDESC',  DCSTATUS = 1,  STSDESCR = 'Work.',  ['IV Transaction Work LINE'].[TRXQTY] as 'TRXQTY',  ['IV Transaction Work LINE'].[UOFM] as 'UOFM',  ['IV Transaction Work LINE'].[UNITCOST] as 'UNITCOST',  ['IV Transaction Work LINE'].[TRXLOCTN] as 'TRXLOCTN',  '' as 'HSTMODUL',  '' as 'SRCRFRNCNMBR',  ['IV Transaction Work LINE'].[DECPLQTY] as DECPLQTY,  ['IV Transaction Work LINE'].[DECPLCUR] + 6 as DECPLCUR,  ['IV Transaction Work LINE'].[Reason_Code] as 'Reason_Code'   from  IV10001 as ['IV Transaction Work LINE'] with (NOLOCK)  left outer join IV10000 as ['IV Transaction Work HDR'] with (NOLOCK)   on (['IV Transaction Work HDR'].IVDOCTYP = ['IV Transaction Work LINE'].IVDOCTYP and   ['IV Transaction Work HDR'].IVDOCNBR = ['IV Transaction Work LINE'].IVDOCNBR)   left outer join IV00101 as ['IV Item Master']  with (NOLOCK)   on (['IV Transaction Work LINE'].ITEMNMBR = ['IV Item Master'].ITEMNMBR)  where ['IV Transaction Work HDR'].IVDOCTYP <= 3  )    
GO
GRANT SELECT ON  [dbo].[ivWorkTransactions] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ivWorkTransactions] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ivWorkTransactions] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ivWorkTransactions] TO [DYNGRP]
GO
