CREATE TABLE [dbo].[UPR40100]
(
[FUTASUTA] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EPRIDNBR] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ESTIDNBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FUSUTXRT] [int] NOT NULL,
[FUSUWLMT] [numeric] (19, 5) NOT NULL,
[INTXSHAN] [tinyint] NOT NULL,
[INPRSTWG] [tinyint] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[Stat_Tax_ID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TXENTYCD] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[OTHSTDAT] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STCNTRLNUM] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SUPPDAT1] [char] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SUPPDAT2] [char] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EmployerKind] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR40100] ADD CONSTRAINT [PKUPR40100] PRIMARY KEY NONCLUSTERED  ([FUTASUTA]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2UPR40100] ON [dbo].[UPR40100] ([DSCRIPTN], [FUTASUTA]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR40100].[FUTASUTA]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR40100].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR40100].[EPRIDNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR40100].[ESTIDNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40100].[FUSUTXRT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR40100].[FUSUWLMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40100].[INTXSHAN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40100].[INPRSTWG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR40100].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR40100].[Stat_Tax_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR40100].[TXENTYCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR40100].[OTHSTDAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR40100].[STCNTRLNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR40100].[SUPPDAT1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR40100].[SUPPDAT2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40100].[EmployerKind]'
GO
GRANT SELECT ON  [dbo].[UPR40100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR40100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR40100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR40100] TO [DYNGRP]
GO
