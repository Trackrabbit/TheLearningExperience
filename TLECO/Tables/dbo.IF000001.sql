CREATE TABLE [dbo].[IF000001]
(
[UNIQKEY] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IF_Activated] [tinyint] NOT NULL,
[IF_Distribution_Created] [tinyint] NOT NULL,
[IF_Method] [smallint] NOT NULL,
[SGMTNUMB] [smallint] NOT NULL,
[SGMNTID] [char] (67) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IF000001] ADD CONSTRAINT [PKIF000001] PRIMARY KEY CLUSTERED  ([UNIQKEY]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IF000001].[UNIQKEY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IF000001].[IF_Activated]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IF000001].[IF_Distribution_Created]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IF000001].[IF_Method]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IF000001].[SGMTNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IF000001].[SGMNTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IF000001].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[IF000001] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[IF000001] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[IF000001] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[IF000001] TO [DYNGRP]
GO
