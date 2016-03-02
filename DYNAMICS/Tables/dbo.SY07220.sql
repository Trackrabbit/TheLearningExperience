CREATE TABLE [dbo].[SY07220]
(
[ListDictID] [smallint] NOT NULL,
[ListID] [smallint] NOT NULL,
[ViewID] [int] NOT NULL,
[ViewName] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CompanyVisibility] [smallint] NOT NULL,
[IsShared] [tinyint] NOT NULL,
[RoleSharing] [smallint] NOT NULL,
[UserSharing] [smallint] NOT NULL,
[CRUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[MDFUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[DefaultViewID] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY07220] ADD CONSTRAINT [CK__SY07220__CREATDD__540C7B00] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[SY07220] ADD CONSTRAINT [CK__SY07220__MODIFDT__55009F39] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[SY07220] ADD CONSTRAINT [PKSY07220] PRIMARY KEY NONCLUSTERED  ([ListDictID], [ListID], [ViewID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07220].[ListDictID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07220].[ListID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07220].[ViewID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY07220].[ViewName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07220].[CompanyVisibility]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07220].[IsShared]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07220].[RoleSharing]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07220].[UserSharing]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY07220].[CRUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY07220].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY07220].[MDFUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY07220].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07220].[DefaultViewID]'
GO
GRANT SELECT ON  [dbo].[SY07220] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY07220] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY07220] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY07220] TO [DYNGRP]
GO
