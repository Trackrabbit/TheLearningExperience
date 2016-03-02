CREATE TABLE [dbo].[WF40310]
(
[YEAR1] [smallint] NOT NULL,
[DATE1] [datetime] NOT NULL,
[DateDescription] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WF40310] ADD CONSTRAINT [CK__WF40310__DATE1__0A521834] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[WF40310] ADD CONSTRAINT [PKWF40310] PRIMARY KEY CLUSTERED  ([YEAR1], [DATE1]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WF40310].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[WF40310].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WF40310].[DateDescription]'
GO
GRANT SELECT ON  [dbo].[WF40310] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[WF40310] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[WF40310] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[WF40310] TO [DYNGRP]
GO
