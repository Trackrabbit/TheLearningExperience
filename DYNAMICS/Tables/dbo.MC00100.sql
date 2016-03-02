CREATE TABLE [dbo].[MC00100]
(
[EXGTBLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EXCHDATE] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[XCHGRATE] [numeric] (19, 7) NOT NULL,
[EXPNDATE] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MC00100] ADD CONSTRAINT [CK__MC00100__TIME1__30F848ED] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[MC00100] ADD CONSTRAINT [CK__MC00100__EXCHDAT__2F10007B] CHECK ((datepart(hour,[EXCHDATE])=(0) AND datepart(minute,[EXCHDATE])=(0) AND datepart(second,[EXCHDATE])=(0) AND datepart(millisecond,[EXCHDATE])=(0)))
GO
ALTER TABLE [dbo].[MC00100] ADD CONSTRAINT [CK__MC00100__EXPNDAT__300424B4] CHECK ((datepart(hour,[EXPNDATE])=(0) AND datepart(minute,[EXPNDATE])=(0) AND datepart(second,[EXPNDATE])=(0) AND datepart(millisecond,[EXPNDATE])=(0)))
GO
ALTER TABLE [dbo].[MC00100] ADD CONSTRAINT [PKMC00100] PRIMARY KEY NONCLUSTERED  ([EXGTBLID], [EXCHDATE], [TIME1]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3MC00100] ON [dbo].[MC00100] ([CURNCYID], [EXCHDATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2MC00100] ON [dbo].[MC00100] ([CURNCYID], [EXGTBLID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4MC00100] ON [dbo].[MC00100] ([EXGTBLID], [XCHGRATE], [EXCHDATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MC00100] ENABLE CHANGE_TRACKING WITH (TRACK_COLUMNS_UPDATED = ON)
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC00100].[EXGTBLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC00100].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[MC00100].[EXCHDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[MC00100].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC00100].[XCHGRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[MC00100].[EXPNDATE]'
GO
GRANT SELECT ON  [dbo].[MC00100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[MC00100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[MC00100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[MC00100] TO [DYNGRP]
GO