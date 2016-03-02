CREATE TABLE [dbo].[SY07250]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ListDictID] [smallint] NOT NULL,
[ListID] [smallint] NOT NULL,
[ViewID] [int] NOT NULL,
[ActionID] [int] NOT NULL,
[DATE1] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[ActionName] [char] (79) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SuccessCount] [int] NOT NULL,
[FailureCount] [int] NOT NULL,
[ActionStatusID] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY07250] ADD CONSTRAINT [CK__SY07250__TIME1__7B5130AA] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[SY07250] ADD CONSTRAINT [CK__SY07250__DATE1__7A5D0C71] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[SY07250] ADD CONSTRAINT [PKSY07250] PRIMARY KEY NONCLUSTERED  ([USERID], [ListDictID], [ListID], [ViewID], [DATE1], [TIME1], [ActionStatusID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SY07250] ON [dbo].[SY07250] ([ActionStatusID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY07250].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07250].[ListDictID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07250].[ListID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07250].[ViewID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07250].[ActionID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY07250].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY07250].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY07250].[ActionName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07250].[SuccessCount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07250].[FailureCount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07250].[ActionStatusID]'
GO
GRANT SELECT ON  [dbo].[SY07250] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY07250] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY07250] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY07250] TO [DYNGRP]
GO
