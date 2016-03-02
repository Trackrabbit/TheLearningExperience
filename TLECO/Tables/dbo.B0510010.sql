CREATE TABLE [dbo].[B0510010]
(
[MJW_Offering_ID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Log_User] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Log_Date] [datetime] NOT NULL,
[MJW_Log_Time] [datetime] NOT NULL,
[MJW_Log_Type] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[CMMTTEXT] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[B0510010] ADD CONSTRAINT [CK__B0510010__MJW_Lo__08133359] CHECK ((datepart(day,[MJW_Log_Time])=(1) AND datepart(month,[MJW_Log_Time])=(1) AND datepart(year,[MJW_Log_Time])=(1900)))
GO
ALTER TABLE [dbo].[B0510010] ADD CONSTRAINT [CK__B0510010__MJW_Lo__071F0F20] CHECK ((datepart(hour,[MJW_Log_Date])=(0) AND datepart(minute,[MJW_Log_Date])=(0) AND datepart(second,[MJW_Log_Date])=(0) AND datepart(millisecond,[MJW_Log_Date])=(0)))
GO
ALTER TABLE [dbo].[B0510010] ADD CONSTRAINT [PKB0510010] PRIMARY KEY CLUSTERED  ([MJW_Offering_ID], [MJW_Log_User], [MJW_Log_Date], [MJW_Log_Time]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510010].[MJW_Offering_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510010].[MJW_Log_User]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B0510010].[MJW_Log_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B0510010].[MJW_Log_Time]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510010].[MJW_Log_Type]'
GO
GRANT SELECT ON  [dbo].[B0510010] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B0510010] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B0510010] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B0510010] TO [DYNGRP]
GO
