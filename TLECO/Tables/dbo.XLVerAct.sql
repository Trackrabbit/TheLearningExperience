CREATE TABLE [dbo].[XLVerAct]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTNUMBR_1] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTNUMBR_2] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTNUMBR_3] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTNUMBR_4] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTDESCR] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INCLUDED] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[XLVerAct] ADD CONSTRAINT [PKXLVerAct] PRIMARY KEY CLUSTERED  ([USERID], [ACTNUMBR_1], [ACTNUMBR_2], [ACTNUMBR_3], [ACTNUMBR_4]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2XLVerAct] ON [dbo].[XLVerAct] ([USERID], [INCLUDED], [ACTNUMBR_1], [ACTNUMBR_2], [ACTNUMBR_3], [ACTNUMBR_4]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[XLVerAct].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[XLVerAct].[ACTNUMBR_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[XLVerAct].[ACTNUMBR_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[XLVerAct].[ACTNUMBR_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[XLVerAct].[ACTNUMBR_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[XLVerAct].[ACTDESCR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[XLVerAct].[INCLUDED]'
GO
GRANT SELECT ON  [dbo].[XLVerAct] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[XLVerAct] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[XLVerAct] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[XLVerAct] TO [DYNGRP]
GO
