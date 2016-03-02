CREATE TABLE [dbo].[NCSYS100]
(
[PRODID] [smallint] NOT NULL,
[NCRegistrationKeys_1] [char] (19) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NCRegistrationKeys_2] [char] (19) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NCRegistrationKeys_3] [char] (19) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NCRegistrationKeys_4] [char] (19) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NCRegistrationKeys_5] [char] (19) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NC_SpareStrings_1] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NC_SpareStrings_2] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NC_SpareStrings_3] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NC_SpareStrings_4] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NC_SpareStrings_5] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NCSYS100] ADD CONSTRAINT [PKNCSYS100] PRIMARY KEY NONCLUSTERED  ([PRODID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCSYS100].[PRODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCSYS100].[NCRegistrationKeys_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCSYS100].[NCRegistrationKeys_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCSYS100].[NCRegistrationKeys_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCSYS100].[NCRegistrationKeys_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCSYS100].[NCRegistrationKeys_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCSYS100].[NC_SpareStrings_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCSYS100].[NC_SpareStrings_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCSYS100].[NC_SpareStrings_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCSYS100].[NC_SpareStrings_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCSYS100].[NC_SpareStrings_5]'
GO
GRANT REFERENCES ON  [dbo].[NCSYS100] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[NCSYS100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[NCSYS100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[NCSYS100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[NCSYS100] TO [DYNGRP]
GO
