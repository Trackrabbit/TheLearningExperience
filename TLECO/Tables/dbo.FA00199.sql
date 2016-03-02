CREATE TABLE [dbo].[FA00199]
(
[LOGINDEX] [int] NOT NULL,
[DATE1] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[Script] [char] (79) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MsgText] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FA00199] ADD CONSTRAINT [CK__FA00199__TIME1__7310F064] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[FA00199] ADD CONSTRAINT [CK__FA00199__DATE1__721CCC2B] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[FA00199] ADD CONSTRAINT [PKFA00199] PRIMARY KEY CLUSTERED  ([DATE1], [TIME1], [LOGINDEX]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00199].[LOGINDEX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA00199].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA00199].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA00199].[Script]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA00199].[MsgText]'
GO
GRANT SELECT ON  [dbo].[FA00199] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[FA00199] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[FA00199] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[FA00199] TO [DYNGRP]
GO
