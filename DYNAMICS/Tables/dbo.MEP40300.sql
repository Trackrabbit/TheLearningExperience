CREATE TABLE [dbo].[MEP40300]
(
[PRODID] [smallint] NOT NULL,
[CMPANYID] [smallint] NOT NULL,
[CURVERSION] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MEACTIVATED] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MEP40300] ADD CONSTRAINT [PKMEP40300] PRIMARY KEY NONCLUSTERED  ([PRODID], [CMPANYID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2MEP40300] ON [dbo].[MEP40300] ([CMPANYID], [PRODID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MEP40300].[PRODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MEP40300].[CMPANYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MEP40300].[CURVERSION]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MEP40300].[MEACTIVATED]'
GO
GRANT SELECT ON  [dbo].[MEP40300] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[MEP40300] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[MEP40300] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[MEP40300] TO [DYNGRP]
GO
