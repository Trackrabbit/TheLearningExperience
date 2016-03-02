CREATE TABLE [dbo].[IV10401]
(
[PRCSHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[EPITMTYP] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BRKPTPRC] [tinyint] NOT NULL,
[ACTIVE] [tinyint] NOT NULL,
[BASEUOFM] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRODTCOD] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PROMOTYP] [smallint] NOT NULL,
[PROMOLVL] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IV10401] ADD CONSTRAINT [PKIV10401] PRIMARY KEY CLUSTERED  ([PRCSHID], [SEQNUMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2IV10401] ON [dbo].[IV10401] ([PRCSHID], [ITEMNMBR], [EPITMTYP]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV10401].[PRCSHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV10401].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV10401].[EPITMTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV10401].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV10401].[BRKPTPRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV10401].[ACTIVE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV10401].[BASEUOFM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV10401].[PRODTCOD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV10401].[PROMOTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV10401].[PROMOLVL]'
GO
GRANT SELECT ON  [dbo].[IV10401] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[IV10401] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[IV10401] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[IV10401] TO [DYNGRP]
GO
