SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE VIEW [dbo].[pmOpenTransactions] as (  select 0 as 'MKTOPROC',  0 as 'InfoValue',  0 as 'CURRNIDX',   GETDATE() AS 'DOCDATE',  REPLICATE('X', 15) as 'VENDORID',  REPLICATE('X', 65) as 'VENDNAME',  REPLICATE('X', 61) as 'CONTACT',  0 as 'SOURCE',  0 as 'DOCTYPE',  REPLICATE('X', 21) as 'DOCTYNAM',  REPLICATE('X', 21) as 'DOCNUMBR',  REPLICATE('X', 21) as 'Other_Number',  REPLICATE('X', 13) as 'TRXSORCE',  0 as 'CNTRLTYP',  0 as 'DCSTATUS',  0 as 'POSTATUS',  REPLICATE('X', 31) as 'STSDESCR',  9999999999999.99999 as 'DOCAMNT',  REPLICATE('X', 15) as 'CURNCYID',  REPLICATE('X', 15) as 'PRSTADCD',  0 as 'VOIDED',  GETDATE() AS 'PRMDATE',  GETDATE() AS 'REQDATE',  GETDATE() AS 'Workflow_Due_Date',  0 as 'Workflow_Approval_Status',  REPLICATE('X', 51) as 'Workflow_Name',  REPLICATE('X', 238) as 'Workflow_Approver',  0 as 'Workflow_Priority',  REPLICATE('X', 238) as 'Workflow_Originator',  0 as 'HOLD',  GETDATE() AS 'DUEDATE',  GETDATE() AS 'DISCDATE',  0 as 'WF_Step_Type',  REPLICATE('X', 15) as 'BACHNUMB',  REPLICATE('X', 15) as 'BCHSOURC',  0 as 'Recond',  0 as 'Emailed',9 as 'Workflow_Status'  where (1 = 0)  UNION ALL  select 0 as 'MKTOPROC',   0 as 'InfoValue',  0 as 'CURRNIDX',  ['PM Transaction OPEN'].[DOCDATE] as 'DOCDATE',  rtrim(['PM Transaction OPEN'].[VENDORID]) as 'VENDORID',  ['PM Vendor Master'].[VENDNAME] as 'VENDNAME',  ['PM Vendor Master'].[VNDCNTCT] as 'CONTACT',  0 as 'SOURCE',  ['PM Transaction OPEN'].[DOCTYPE] as 'DOCTYPE',  DOCTYNAM = dbo.DYN_FUNC_Document_Type_PM_Trx(['PM Transaction OPEN'].[DOCTYPE]),  rtrim(['PM Transaction OPEN'].[VCHRNMBR]) as 'DOCNUMBR',  rtrim(['PM Transaction OPEN'].[DOCNUMBR]) as 'Other_Number',  ['PM Transaction OPEN'].[TRXSORCE] as 'TRXSORCE',  ['PM Transaction OPEN'].[CNTRLTYP] as 'CNTRLTYP',  DCSTATUS = 2,   0 as 'POSTATUS',  'Open.' as 'STSDESCR',  ['PM Transaction OPEN'].[DOCAMNT] as 'DOCAMNT',  rtrim(['PM Transaction OPEN'].[CURNCYID]) as 'CURNCYID',  '' as 'PRSTADCD',  ['PM Transaction OPEN'].[VOIDED] as 'VOIDED',  '01-01-1900' as 'PRMDATE',  '01-01-1900' as 'REQDATE',  '01-01-1900' as Workflow_Due_Date,  0 as 'Workflow_Approval_Status',  '' as Workflow_Name,   '' as Workflow_Approver,  0 as Workflow_Priority,  '' as Workflow_Originator,  ['PM Transaction OPEN'].[HOLD] as 'HOLD',  DUEDATE = ['PM Transaction OPEN'].[DUEDATE],  DISCDATE = ['PM Transaction OPEN'].[DISCDATE],  0 as WF_Step_Type,  ['PM Transaction OPEN'].[BACHNUMB] as 'BACHNUMB',  ['PM Transaction OPEN'].[BCHSOURC] as 'BCHSOURC',  'Recond' = dbo.cmIsReconciledDocument(['PM Transaction OPEN'].DOCTYPE, ['PM Transaction OPEN'].CHEKBKID,  ['PM Transaction OPEN'].DOCNUMBR, ['PM Transaction OPEN'].VENDORID, ['PM Transaction OPEN'].TRXSORCE,  ['PM Transaction OPEN'].VCHRNMBR),  'Emailed' = 0,['PM Transaction OPEN'].[Workflow_Status] as 'Workflow_Status'   from [PM00400] as ['PM Key Master'] with (NOLOCK)  join [PM20000] as ['PM Transaction OPEN'] with (NOLOCK)   on (['PM Key Master'].[CNTRLNUM] = ['PM Transaction OPEN'].[VCHRNMBR] and  ['PM Key Master'].[DOCTYPE] = ['PM Transaction OPEN'].[DOCTYPE])  left outer join [PM00200] as ['PM Vendor Master'] with (NOLOCK)  on (['PM Key Master'].[VENDORID] = ['PM Vendor Master'].[VENDORID])  where ['PM Key Master'].[DCSTATUS] = 2  and  ['PM Key Master'].[DOCTYPE] <> 7   UNION ALL  select 0 as 'MKTOPROC',   0 as 'InfoValue',  0 as 'CURRNIDX',  ['PM_SCH_HDR'].[SCH_DOC_DATE] as 'DOCDATE',  rtrim(['PM_SCH_HDR'].[VENDORID]) as 'VENDORID',  ['PM Vendor Master'].[VENDNAME] as 'VENDNAME',  ['PM Vendor Master'].[VNDCNTCT] as 'CONTACT',  19 as 'SOURCE',   ['PM Key Master'].[DOCTYPE] as 'DOCTYPE',  DOCTYNAM = dbo.DYN_FUNC_Document_Type_PM_Trx(['PM Key Master'].[DOCTYPE]),  rtrim(['PM_SCH_HDR'].[SCHEDULE_NUMBER]) as 'DOCNUMBR',  rtrim(['PM_SCH_HDR'].[ORIG_DOC_NUMBER]) as 'Other_Number',  '' as 'TRXSORCE',  ['PM Key Master'].[CNTRLTYP] as 'CNTRLTYP',  DCSTATUS = 2,   0 as 'POSTATUS',  'Open.' as 'STSDESCR',  ['PM_SCH_HDR'].[FuncSchAmnt] as 'DOCAMNT',  rtrim(['PM_SCH_HDR'].[CURNCYID]) as 'CURNCYID',  '' as 'PRSTADCD',  0 as 'VOIDED',  '01-01-1900' as 'PRMDATE',  '01-01-1900' as 'REQDATE',  '01-01-1900' as Workflow_Due_Date,  0 as 'Workflow_Approval_Status',  '' as Workflow_Name,   '' as Workflow_Approver,  0 as Workflow_Priority,  '' as Workflow_Originator,  0 as 'HOLD',  '01-01-1900' as 'DUEDATE',  '01-01-1900' as 'DISCDATE',  0 as WF_Step_Type,  '' as 'BACHNUMB',  '' as 'BCHSOURC',  'Recond' = 0,  'Emailed' = 0,9   from [PM00400] as ['PM Key Master'] with (NOLOCK)  join [PM20400] as ['PM_SCH_HDR'] with (NOLOCK)   on (['PM Key Master'].[CNTRLNUM] = ['PM_SCH_HDR'].[SCHEDULE_NUMBER])  left outer join [PM00200] as ['PM Vendor Master'] with (NOLOCK)  on (['PM Key Master'].[VENDORID] = ['PM Vendor Master'].[VENDORID])  where ['PM Key Master'].[DCSTATUS] = 2  and  ['PM Key Master'].[DOCTYPE] = 7  )   
GO
GRANT SELECT ON  [dbo].[pmOpenTransactions] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[pmOpenTransactions] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[pmOpenTransactions] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[pmOpenTransactions] TO [DYNGRP]
GO
