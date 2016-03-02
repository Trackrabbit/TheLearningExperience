CREATE TABLE [dbo].[UPR40600]
(
[PAYRCORD] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INACTIVE] [tinyint] NOT NULL,
[PAYTYPE] [smallint] NOT NULL,
[BSPAYRCD] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PAYRTAMT] [numeric] (19, 5) NOT NULL,
[PAYUNIT] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PAYUNPER] [smallint] NOT NULL,
[PAYPEROD] [smallint] NOT NULL,
[PAYPRPRD] [numeric] (19, 5) NOT NULL,
[MXPYPPER] [numeric] (19, 5) NOT NULL,
[TipType] [smallint] NOT NULL,
[PAYADVNC] [numeric] (19, 5) NOT NULL,
[RPTASWGS] [tinyint] NOT NULL,
[W2BXNMBR] [smallint] NOT NULL,
[W2BXLABL] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TAXABLE] [tinyint] NOT NULL,
[SBJTFDTX] [tinyint] NOT NULL,
[SBJTSSEC] [tinyint] NOT NULL,
[SBJTMCAR] [tinyint] NOT NULL,
[SBJTSTTX] [tinyint] NOT NULL,
[SBJTLTAX] [tinyint] NOT NULL,
[SBJTFUTA] [tinyint] NOT NULL,
[SBJTSUTA] [tinyint] NOT NULL,
[FFEDTXRT] [smallint] NOT NULL,
[FLSTTXRT] [smallint] NOT NULL,
[ACRUVACN] [tinyint] NOT NULL,
[ACRUSTIM] [tinyint] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DATAENTDFLT] [tinyint] NOT NULL,
[SHFTCODE] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PAYFACTR] [numeric] (19, 5) NOT NULL,
[BSDONRTE] [numeric] (19, 5) NOT NULL,
[W2BXNMBR2] [smallint] NOT NULL,
[W2BXLABL2] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[W2BXNMBR3] [smallint] NOT NULL,
[W2BXLABL3] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[W2BXNMBR4] [smallint] NOT NULL,
[W2BXLABL4] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR40600] ADD CONSTRAINT [PKUPR40600] PRIMARY KEY NONCLUSTERED  ([PAYRCORD]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4UPR40600] ON [dbo].[UPR40600] ([BSPAYRCD], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2UPR40600] ON [dbo].[UPR40600] ([DSCRIPTN], [PAYRCORD]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3UPR40600] ON [dbo].[UPR40600] ([PAYTYPE], [PAYRCORD]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR40600].[PAYRCORD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR40600].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40600].[INACTIVE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40600].[PAYTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR40600].[BSPAYRCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR40600].[PAYRTAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR40600].[PAYUNIT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40600].[PAYUNPER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40600].[PAYPEROD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR40600].[PAYPRPRD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR40600].[MXPYPPER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40600].[TipType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR40600].[PAYADVNC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40600].[RPTASWGS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40600].[W2BXNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR40600].[W2BXLABL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40600].[TAXABLE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40600].[SBJTFDTX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40600].[SBJTSSEC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40600].[SBJTMCAR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40600].[SBJTSTTX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40600].[SBJTLTAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40600].[SBJTFUTA]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40600].[SBJTSUTA]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40600].[FFEDTXRT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40600].[FLSTTXRT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40600].[ACRUVACN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40600].[ACRUSTIM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR40600].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40600].[DATAENTDFLT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR40600].[SHFTCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR40600].[PAYFACTR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR40600].[BSDONRTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40600].[W2BXNMBR2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR40600].[W2BXLABL2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40600].[W2BXNMBR3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR40600].[W2BXLABL3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40600].[W2BXNMBR4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR40600].[W2BXLABL4]'
GO
GRANT SELECT ON  [dbo].[UPR40600] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR40600] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR40600] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR40600] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[UPR40600] TO [rpt_executive]
GO
GRANT SELECT ON  [dbo].[UPR40600] TO [rpt_human resource administrator]
GO
GRANT SELECT ON  [dbo].[UPR40600] TO [rpt_payroll]
GO
