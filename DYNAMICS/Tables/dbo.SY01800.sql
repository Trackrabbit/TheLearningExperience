CREATE TABLE [dbo].[SY01800]
(
[CMPANYID] [smallint] NOT NULL,
[Offline_Date] [datetime] NOT NULL,
[Offline_Time] [datetime] NOT NULL,
[Offline_Message_Type] [smallint] NOT NULL,
[Offline_User] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[Offline_Message] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY01800] ADD CONSTRAINT [CK__SY01800__Offline__19975756] CHECK ((datepart(day,[Offline_Time])=(1) AND datepart(month,[Offline_Time])=(1) AND datepart(year,[Offline_Time])=(1900)))
GO
ALTER TABLE [dbo].[SY01800] ADD CONSTRAINT [CK__SY01800__Offline__18A3331D] CHECK ((datepart(hour,[Offline_Date])=(0) AND datepart(minute,[Offline_Date])=(0) AND datepart(second,[Offline_Date])=(0) AND datepart(millisecond,[Offline_Date])=(0)))
GO
ALTER TABLE [dbo].[SY01800] ADD CONSTRAINT [PKSY01800] PRIMARY KEY CLUSTERED  ([CMPANYID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01800].[CMPANYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY01800].[Offline_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY01800].[Offline_Time]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01800].[Offline_Message_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01800].[Offline_User]'
GO
GRANT SELECT ON  [dbo].[SY01800] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY01800] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY01800] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY01800] TO [DYNGRP]
GO
