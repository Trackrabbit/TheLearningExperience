CREATE TABLE [dbo].[NCIC6000]
(
[DATE1] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[NC_Log_Message] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NCIC6000] ADD CONSTRAINT [CK__NCIC6000__TIME1__757494DA] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[NCIC6000] ADD CONSTRAINT [CK__NCIC6000__DATE1__748070A1] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[NCIC6000] ADD CONSTRAINT [PKNCIC6000] PRIMARY KEY NONCLUSTERED  ([DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [CL1NCIC6000] ON [dbo].[NCIC6000] ([DATE1], [TIME1]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK1NCIC6000] ON [dbo].[NCIC6000] ([DATE1], [TIME1], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[NCIC6000].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[NCIC6000].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC6000].[NC_Log_Message]'
GO
GRANT REFERENCES ON  [dbo].[NCIC6000] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[NCIC6000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[NCIC6000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[NCIC6000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[NCIC6000] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[NCIC6000] TO [public]
GO
GRANT INSERT ON  [dbo].[NCIC6000] TO [public]
GO
GRANT DELETE ON  [dbo].[NCIC6000] TO [public]
GO
GRANT UPDATE ON  [dbo].[NCIC6000] TO [public]
GO
