SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE VIEW [dbo].[svcContractLineDeferRev] as ( select  0 as MY_GROUP_ID,  SVC00601.CONSTS, SVC00601.CONTNBR, SVC00601.CNTTYPE,   SVC00601.LNSEQNBR,   case SVC00601.SVC_Liability_Type  when 1 then 'S'  when 2 then 'B'  when 3 then 'R'  when 4 then 'C'  when 5 then 'M'  else ''  end  as SVC_Liability_Type_Txt,  '' as HIST,  SVC00601.CUSTNMBR, RM00101.CUSTNAME, SVC00601.ADRSCODE, SVC00601.Contract_Line_Status,  SVC00601.STRTDATE, SVC00601.ENDDATE, SVC00601.Contract_Length, SVC00601.Contract_Period,   SVC00601.ITEMNMBR, SVC00601.DSCRIPTN, SVC00601.EQUIPID, SVC00601.SERLNMBR, SVC00601.QUANTITY, SVC00601.UOFM,   case   when IV00101.DECPLCUR is not null then IV00101.DECPLCUR  else 2  end as DECPLCUR,  SVC00601.CURNCYID, SVC00601.CURRNIDX, SVC00601.SVC_Monthly_Price,  SVC00601.FRSTBLDTE, SVC00601.Last_Amount_Billed, SVC00601.LSTBLDTE, SVC00601.TOTAL,  SVC00601.Invoiced_Amount, SVC00601.Amount_To_Invoice,  SVC00601.NXTBLDTE, SVC00601.TOTBIL,   SVC00601.BILONDY, SVC00601.BILCYC, SVC00601.BILSTAT,   SVC00601.Liabiltiy_Reduction, SVC00601.Liability_Amount, SVC00601.Total_Liability_Amount, SVC00601.Total_Liability_Billed,  SVC00601.TAXAMNT  from SVC00601  inner join SVC00600 on SVC00600.CONSTS = SVC00601.CONSTS and SVC00600.CONTNBR = SVC00601.CONTNBR   left outer join IV00101 on IV00101.ITEMNMBR = SVC00601.ITEMNMBR        inner join RM00101 on RM00101.CUSTNMBR = SVC00601.CUSTNMBR        and (SVC00600.BILCYC > 3 or (SVC00600.BILCYC = 3 and (SVC00600.svcFrequencyQty>1 or SVC00600.Liabiltiy_Reduction = 1)))  )    
GO
GRANT SELECT ON  [dbo].[svcContractLineDeferRev] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[svcContractLineDeferRev] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[svcContractLineDeferRev] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[svcContractLineDeferRev] TO [DYNGRP]
GO
