CREATE TABLE [dbo].[AF40104]
(
[REPORTID] [smallint] NOT NULL,
[CLCOLNUM] [smallint] NOT NULL,
[TKNODNUM] [smallint] NOT NULL,
[TKNTYPE] [smallint] NOT NULL,
[TKNVALUE] [smallint] NOT NULL,
[TKNDLVAL] [numeric] (19, 5) NOT NULL,
[TKNUNACT_1] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TKNUNACT_2] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TKNUNACT_3] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TKNUNACT_4] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AF40104] ADD CONSTRAINT [PKAF40104] PRIMARY KEY NONCLUSTERED  ([REPORTID], [CLCOLNUM], [TKNODNUM]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40104].[REPORTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40104].[CLCOLNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40104].[TKNODNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40104].[TKNTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40104].[TKNVALUE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF40104].[TKNDLVAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF40104].[TKNUNACT_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF40104].[TKNUNACT_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF40104].[TKNUNACT_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF40104].[TKNUNACT_4]'
GO
GRANT REFERENCES ON  [dbo].[AF40104] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[AF40104] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AF40104] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AF40104] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AF40104] TO [DYNGRP]
GO
