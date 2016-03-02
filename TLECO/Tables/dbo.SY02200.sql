CREATE TABLE [dbo].[SY02200]
(
[FILEXPNM] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRNTJRNL] [tinyint] NOT NULL,
[SERIES] [smallint] NOT NULL,
[TRXSOURC] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PTGRPTNM] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ASECTMNT] [tinyint] NOT NULL,
[PRTOPRNT] [tinyint] NOT NULL,
[PRTOSCNT] [tinyint] NOT NULL,
[PRTOFLNT] [tinyint] NOT NULL,
[EXPTTYPE] [smallint] NOT NULL,
[APNDRPLC] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY02200] ADD CONSTRAINT [PKSY02200] PRIMARY KEY NONCLUSTERED  ([SERIES], [TRXSOURC], [PTGRPTNM]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SY02200] ON [dbo].[SY02200] ([TRXSOURC], [SERIES], [PTGRPTNM]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY02200].[FILEXPNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY02200].[PRNTJRNL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY02200].[SERIES]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY02200].[TRXSOURC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY02200].[PTGRPTNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY02200].[ASECTMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY02200].[PRTOPRNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY02200].[PRTOSCNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY02200].[PRTOFLNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY02200].[EXPTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY02200].[APNDRPLC]'
GO
GRANT SELECT ON  [dbo].[SY02200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY02200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY02200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY02200] TO [DYNGRP]
GO
