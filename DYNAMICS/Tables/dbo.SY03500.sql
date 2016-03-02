CREATE TABLE [dbo].[SY03500]
(
[SITENAME] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[REGNKEYS_1] [char] (23) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[REGNKEYS_2] [char] (23) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[REGNKEYS_3] [char] (23) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[REGNKEYS_4] [char] (23) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[REGNKEYS_5] [char] (23) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SiteAccountNumber] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY03500] ADD CONSTRAINT [PKSY03500] PRIMARY KEY NONCLUSTERED  ([SITENAME]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY03500].[SITENAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY03500].[REGNKEYS_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY03500].[REGNKEYS_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY03500].[REGNKEYS_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY03500].[REGNKEYS_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY03500].[REGNKEYS_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY03500].[SiteAccountNumber]'
GO
GRANT SELECT ON  [dbo].[SY03500] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY03500] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY03500] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY03500] TO [DYNGRP]
GO
