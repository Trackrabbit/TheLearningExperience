CREATE TABLE [dbo].[SY40506]
(
[BARULEID] [int] NOT NULL,
[DATESENT] [datetime] NOT NULL,
[TIMESENT] [datetime] NOT NULL,
[RCPIENTS] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY40506] ADD CONSTRAINT [CK__SY40506__TIMESEN__345EC57D] CHECK ((datepart(day,[TIMESENT])=(1) AND datepart(month,[TIMESENT])=(1) AND datepart(year,[TIMESENT])=(1900)))
GO
ALTER TABLE [dbo].[SY40506] ADD CONSTRAINT [CK__SY40506__DATESEN__336AA144] CHECK ((datepart(hour,[DATESENT])=(0) AND datepart(minute,[DATESENT])=(0) AND datepart(second,[DATESENT])=(0) AND datepart(millisecond,[DATESENT])=(0)))
GO
ALTER TABLE [dbo].[SY40506] ADD CONSTRAINT [PKSY40506] PRIMARY KEY NONCLUSTERED  ([BARULEID], [DATESENT], [TIMESENT]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40506].[BARULEID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY40506].[DATESENT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY40506].[TIMESENT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY40506].[RCPIENTS]'
GO
GRANT SELECT ON  [dbo].[SY40506] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY40506] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY40506] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY40506] TO [DYNGRP]
GO
