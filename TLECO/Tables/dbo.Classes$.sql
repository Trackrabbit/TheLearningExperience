CREATE TABLE [dbo].[Classes$]
(
[VNDCLSID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[VNDCLDSC] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DEFLTCLS] [float] NULL,
[MXIAFVND] [float] NULL,
[MXINVAMT] [float] NULL,
[WRITEOFF] [float] NULL,
[CREDTLMT] [float] NULL,
[TEN99TYPE] [float] NULL,
[PTCSHACF] [float] NULL,
[MXWOFAMT] [float] NULL,
[MINORDER] [float] NULL,
[CRLMTDLR] [float] NULL,
[PYMNTPRI] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SHIPMTHD] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PYMTRMID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MINPYTYP] [float] NULL,
[MINPYDLR] [float] NULL,
[MINPYPCT] [float] NULL,
[CURNCYID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TAXSCHID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KPCALHST] [float] NULL,
[KGLDSTHS] [float] NULL,
[KPERHIST] [float] NULL,
[KPTRXHST] [float] NULL,
[TRDDISCT] [float] NULL,
[USERDEF1] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[USERDEF2] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PMAPINDX] [float] NULL,
[PMCSHIDX] [float] NULL,
[PMDAVIDX] [float] NULL,
[PMDTKIDX] [float] NULL,
[PMFINIDX] [float] NULL,
[PMMSCHIX] [float] NULL,
[PMFRTIDX] [float] NULL,
[PMTAXIDX] [float] NULL,
[PMWRTIDX] [float] NULL,
[PMPRCHIX] [float] NULL,
[PMRTNGIX] [float] NULL,
[PMTDSCIX] [float] NULL,
[ACPURIDX] [float] NULL,
[PURPVIDX] [float] NULL,
[CHEKBKID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MODIFDT] [datetime] NULL,
[CREATDDT] [float] NULL,
[RATETPID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Revalue_Vendor] [float] NULL,
[Post_Results_To] [float] NULL,
[FREEONBOARD] [float] NULL,
[DISGRPER] [float] NULL,
[DUEGRPER] [float] NULL,
[TaxInvRecvd] [float] NULL,
[CBVAT] [float] NULL,
[DEX_ROW_ID] [float] NULL
) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[Classes$] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[Classes$] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[Classes$] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[Classes$] TO [DYNGRP]
GO
