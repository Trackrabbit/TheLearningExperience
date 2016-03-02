CREATE TABLE [dbo].[UPR00400]
(
[EMPLOYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PAYRCORD] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INACTIVE] [tinyint] NOT NULL,
[PAYTYPE] [smallint] NOT NULL,
[BSPAYRCD] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PAYRTAMT] [numeric] (19, 5) NOT NULL,
[PAYUNIT] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PAYUNPER] [smallint] NOT NULL,
[RPTASWGS] [tinyint] NOT NULL,
[TAXABLE] [tinyint] NOT NULL,
[SBJTFDTX] [tinyint] NOT NULL,
[SBJTSSEC] [tinyint] NOT NULL,
[SBJTMCAR] [tinyint] NOT NULL,
[SBJTSTTX] [tinyint] NOT NULL,
[SBJTLTAX] [tinyint] NOT NULL,
[SBJTFUTA] [tinyint] NOT NULL,
[SBJTSUTA] [tinyint] NOT NULL,
[SUTASTAT] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FFEDTXRT] [smallint] NOT NULL,
[FLSTTXRT] [smallint] NOT NULL,
[PAYPEROD] [smallint] NOT NULL,
[PAYPRPRD] [numeric] (19, 5) NOT NULL,
[MXPYPPER] [numeric] (19, 5) NOT NULL,
[TipType] [smallint] NOT NULL,
[PAYADVNC] [numeric] (19, 5) NOT NULL,
[ACRUVACN] [tinyint] NOT NULL,
[ACRUSTIM] [tinyint] NOT NULL,
[WRKRCOMP] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[W2BXNMBR] [smallint] NOT NULL,
[W2BXLABL] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PYADVTKN] [numeric] (19, 5) NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DATAENTDFLT] [tinyint] NOT NULL,
[SHFTCODE] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PAYFACTR] [numeric] (19, 5) NOT NULL,
[BSDONRTE] [numeric] (19, 5) NOT NULL,
[PYSTPTBLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Base_Step_Increased_On] [smallint] NOT NULL,
[Step] [smallint] NOT NULL,
[Step_Effective_Date] [datetime] NOT NULL,
[Step_FTE] [numeric] (19, 5) NOT NULL,
[W2BXNMBR2] [smallint] NOT NULL,
[W2BXLABL2] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[W2BXNMBR3] [smallint] NOT NULL,
[W2BXLABL3] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[W2BXNMBR4] [smallint] NOT NULL,
[W2BXLABL4] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Workflow_Approval_Status] [smallint] NOT NULL,
[Workflow_Priority] [smallint] NOT NULL,
[Workflow_Status] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR00400] ADD CONSTRAINT [CK__UPR00400__Step_E__6E945599] CHECK ((datepart(hour,[Step_Effective_Date])=(0) AND datepart(minute,[Step_Effective_Date])=(0) AND datepart(second,[Step_Effective_Date])=(0) AND datepart(millisecond,[Step_Effective_Date])=(0)))
GO
ALTER TABLE [dbo].[UPR00400] ADD CONSTRAINT [PKUPR00400] PRIMARY KEY NONCLUSTERED  ([EMPLOYID], [PAYRCORD]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3UPR00400] ON [dbo].[UPR00400] ([EMPLOYID], [BSPAYRCD], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6UPR00400] ON [dbo].[UPR00400] ([EMPLOYID], [PAYTYPE], [BSPAYRCD], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5UPR00400] ON [dbo].[UPR00400] ([EMPLOYID], [W2BXNMBR], [W2BXLABL], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2UPR00400] ON [dbo].[UPR00400] ([PAYRCORD], [EMPLOYID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4UPR00400] ON [dbo].[UPR00400] ([PAYTYPE], [EMPLOYID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00400].[EMPLOYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00400].[PAYRCORD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00400].[INACTIVE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00400].[PAYTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00400].[BSPAYRCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00400].[PAYRTAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00400].[PAYUNIT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00400].[PAYUNPER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00400].[RPTASWGS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00400].[TAXABLE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00400].[SBJTFDTX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00400].[SBJTSSEC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00400].[SBJTMCAR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00400].[SBJTSTTX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00400].[SBJTLTAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00400].[SBJTFUTA]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00400].[SBJTSUTA]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00400].[SUTASTAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00400].[FFEDTXRT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00400].[FLSTTXRT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00400].[PAYPEROD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00400].[PAYPRPRD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00400].[MXPYPPER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00400].[TipType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00400].[PAYADVNC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00400].[ACRUVACN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00400].[ACRUSTIM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00400].[WRKRCOMP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00400].[W2BXNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00400].[W2BXLABL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00400].[PYADVTKN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00400].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00400].[DATAENTDFLT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00400].[SHFTCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00400].[PAYFACTR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00400].[BSDONRTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00400].[PYSTPTBLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00400].[Base_Step_Increased_On]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00400].[Step]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR00400].[Step_Effective_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00400].[Step_FTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00400].[W2BXNMBR2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00400].[W2BXLABL2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00400].[W2BXNMBR3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00400].[W2BXLABL3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00400].[W2BXNMBR4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00400].[W2BXLABL4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00400].[Workflow_Approval_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00400].[Workflow_Priority]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00400].[Workflow_Status]'
GO
GRANT SELECT ON  [dbo].[UPR00400] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR00400] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR00400] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR00400] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[UPR00400] TO [rpt_executive]
GO
GRANT SELECT ON  [dbo].[UPR00400] TO [rpt_payroll]
GO
