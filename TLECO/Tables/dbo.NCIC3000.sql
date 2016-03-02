CREATE TABLE [dbo].[NCIC3000]
(
[CMRECNUM] [numeric] (19, 5) NOT NULL,
[NC_Process_Templates] [tinyint] NOT NULL,
[NC_FunctionalOriginating] [smallint] NOT NULL,
[NC_Export_FileName] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NC_Dest_Accs_Required] [tinyint] NOT NULL,
[NC_SpareInts_1] [smallint] NOT NULL,
[NC_SpareInts_2] [smallint] NOT NULL,
[NC_SpareInts_3] [smallint] NOT NULL,
[NC_SpareInts_4] [smallint] NOT NULL,
[NC_SpareInts_5] [smallint] NOT NULL,
[NC_SpareInts_6] [smallint] NOT NULL,
[NC_SpareInts_7] [smallint] NOT NULL,
[NC_SpareInts_8] [smallint] NOT NULL,
[NC_SpareInts_9] [smallint] NOT NULL,
[NC_SpareInts_10] [smallint] NOT NULL,
[NC_SpareStrings_1] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NC_SpareStrings_2] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NC_SpareStrings_3] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NC_SpareStrings_4] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NC_SpareStrings_5] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NC_SpareBools_1] [tinyint] NOT NULL,
[NC_SpareBools_2] [tinyint] NOT NULL,
[NC_SpareBools_3] [tinyint] NOT NULL,
[NC_SpareBools_4] [tinyint] NOT NULL,
[NC_SpareBools_5] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NCIC3000] ADD CONSTRAINT [PKNCIC3000] PRIMARY KEY CLUSTERED  ([CMRECNUM]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[NCIC3000].[CMRECNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC3000].[NC_Process_Templates]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC3000].[NC_FunctionalOriginating]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC3000].[NC_Export_FileName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC3000].[NC_Dest_Accs_Required]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC3000].[NC_SpareInts_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC3000].[NC_SpareInts_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC3000].[NC_SpareInts_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC3000].[NC_SpareInts_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC3000].[NC_SpareInts_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC3000].[NC_SpareInts_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC3000].[NC_SpareInts_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC3000].[NC_SpareInts_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC3000].[NC_SpareInts_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC3000].[NC_SpareInts_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC3000].[NC_SpareStrings_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC3000].[NC_SpareStrings_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC3000].[NC_SpareStrings_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC3000].[NC_SpareStrings_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC3000].[NC_SpareStrings_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC3000].[NC_SpareBools_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC3000].[NC_SpareBools_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC3000].[NC_SpareBools_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC3000].[NC_SpareBools_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC3000].[NC_SpareBools_5]'
GO
GRANT REFERENCES ON  [dbo].[NCIC3000] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[NCIC3000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[NCIC3000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[NCIC3000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[NCIC3000] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[NCIC3000] TO [public]
GO
GRANT INSERT ON  [dbo].[NCIC3000] TO [public]
GO
GRANT DELETE ON  [dbo].[NCIC3000] TO [public]
GO
GRANT UPDATE ON  [dbo].[NCIC3000] TO [public]
GO
