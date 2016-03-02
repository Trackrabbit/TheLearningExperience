CREATE TABLE [dbo].[SVC00010]
(
[INTERID] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Major_Release] [smallint] NOT NULL,
[SVC_Minor_Release] [smallint] NOT NULL,
[SVC_Build_Release] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Install_Date] [datetime] NOT NULL,
[SVC_Update_Date] [datetime] NOT NULL,
[SVC_ServerUpd] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_ClientUpd] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC00010] ADD CONSTRAINT [CK__SVC00010__SVC_In__0000D72E] CHECK ((datepart(hour,[SVC_Install_Date])=(0) AND datepart(minute,[SVC_Install_Date])=(0) AND datepart(second,[SVC_Install_Date])=(0) AND datepart(millisecond,[SVC_Install_Date])=(0)))
GO
ALTER TABLE [dbo].[SVC00010] ADD CONSTRAINT [CK__SVC00010__SVC_Up__00F4FB67] CHECK ((datepart(hour,[SVC_Update_Date])=(0) AND datepart(minute,[SVC_Update_Date])=(0) AND datepart(second,[SVC_Update_Date])=(0) AND datepart(millisecond,[SVC_Update_Date])=(0)))
GO
ALTER TABLE [dbo].[SVC00010] ADD CONSTRAINT [PKSVC00010] PRIMARY KEY NONCLUSTERED  ([INTERID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00010].[INTERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00010].[SVC_Major_Release]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00010].[SVC_Minor_Release]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00010].[SVC_Build_Release]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00010].[SVC_Install_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00010].[SVC_Update_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00010].[SVC_ServerUpd]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00010].[SVC_ClientUpd]'
GO
GRANT SELECT ON  [dbo].[SVC00010] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00010] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00010] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00010] TO [DYNGRP]
GO
