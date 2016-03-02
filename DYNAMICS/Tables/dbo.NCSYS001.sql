CREATE TABLE [dbo].[NCSYS001]
(
[PRODID] [smallint] NOT NULL,
[CMPANYID] [smallint] NOT NULL,
[NC_System_Version] [smallint] NOT NULL,
[NC_Version_Major] [smallint] NOT NULL,
[NC_Version_Minor] [smallint] NOT NULL,
[NC_Version_Build] [smallint] NOT NULL,
[NC_SpareStrings_1] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NC_SpareStrings_2] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NC_SpareStrings_3] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NC_SpareStrings_4] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NC_SpareStrings_5] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
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
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NCSYS001] ADD CONSTRAINT [PKNCSYS001] PRIMARY KEY CLUSTERED  ([PRODID], [CMPANYID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2NCSYS001] ON [dbo].[NCSYS001] ([CMPANYID], [PRODID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCSYS001].[PRODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCSYS001].[CMPANYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCSYS001].[NC_System_Version]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCSYS001].[NC_Version_Major]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCSYS001].[NC_Version_Minor]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCSYS001].[NC_Version_Build]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCSYS001].[NC_SpareStrings_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCSYS001].[NC_SpareStrings_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCSYS001].[NC_SpareStrings_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCSYS001].[NC_SpareStrings_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCSYS001].[NC_SpareStrings_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCSYS001].[NC_SpareInts_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCSYS001].[NC_SpareInts_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCSYS001].[NC_SpareInts_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCSYS001].[NC_SpareInts_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCSYS001].[NC_SpareInts_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCSYS001].[NC_SpareInts_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCSYS001].[NC_SpareInts_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCSYS001].[NC_SpareInts_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCSYS001].[NC_SpareInts_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCSYS001].[NC_SpareInts_10]'
GO
GRANT REFERENCES ON  [dbo].[NCSYS001] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[NCSYS001] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[NCSYS001] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[NCSYS001] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[NCSYS001] TO [DYNGRP]
GO
