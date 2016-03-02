CREATE TABLE [dbo].[NCIC3025]
(
[CMRECNUM] [numeric] (19, 5) NOT NULL,
[options_1] [tinyint] NOT NULL,
[options_2] [tinyint] NOT NULL,
[options_3] [tinyint] NOT NULL,
[options_4] [tinyint] NOT NULL,
[options_5] [tinyint] NOT NULL,
[options_6] [tinyint] NOT NULL,
[options_7] [tinyint] NOT NULL,
[options_8] [tinyint] NOT NULL,
[options_9] [tinyint] NOT NULL,
[options_10] [tinyint] NOT NULL,
[options_11] [tinyint] NOT NULL,
[options_12] [tinyint] NOT NULL,
[options_13] [tinyint] NOT NULL,
[options_14] [tinyint] NOT NULL,
[options_15] [tinyint] NOT NULL,
[options_16] [tinyint] NOT NULL,
[options_17] [tinyint] NOT NULL,
[options_18] [tinyint] NOT NULL,
[options_19] [tinyint] NOT NULL,
[options_20] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NCIC3025] ADD CONSTRAINT [PKNCIC3025] PRIMARY KEY CLUSTERED  ([CMRECNUM]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[NCIC3025].[CMRECNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC3025].[options_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC3025].[options_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC3025].[options_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC3025].[options_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC3025].[options_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC3025].[options_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC3025].[options_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC3025].[options_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC3025].[options_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC3025].[options_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC3025].[options_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC3025].[options_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC3025].[options_13]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC3025].[options_14]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC3025].[options_15]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC3025].[options_16]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC3025].[options_17]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC3025].[options_18]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC3025].[options_19]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC3025].[options_20]'
GO
GRANT REFERENCES ON  [dbo].[NCIC3025] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[NCIC3025] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[NCIC3025] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[NCIC3025] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[NCIC3025] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[NCIC3025] TO [public]
GO
GRANT INSERT ON  [dbo].[NCIC3025] TO [public]
GO
GRANT DELETE ON  [dbo].[NCIC3025] TO [public]
GO
GRANT UPDATE ON  [dbo].[NCIC3025] TO [public]
GO
