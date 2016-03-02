CREATE TABLE [dbo].[HRPS0401]
(
[PYSTPTBLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Effective_Date] [datetime] NOT NULL,
[Step] [smallint] NOT NULL,
[Months_In_Step_Start] [smallint] NOT NULL,
[Months_In_Step_End] [smallint] NOT NULL,
[PAYRTAMT] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HRPS0401] ADD CONSTRAINT [CK__HRPS0401__Effect__63BA01CF] CHECK ((datepart(hour,[Effective_Date])=(0) AND datepart(minute,[Effective_Date])=(0) AND datepart(second,[Effective_Date])=(0) AND datepart(millisecond,[Effective_Date])=(0)))
GO
ALTER TABLE [dbo].[HRPS0401] ADD CONSTRAINT [PKHRPS0401] PRIMARY KEY NONCLUSTERED  ([PYSTPTBLID], [Effective_Date], [Step]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRPS0401].[PYSTPTBLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HRPS0401].[Effective_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRPS0401].[Step]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRPS0401].[Months_In_Step_Start]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRPS0401].[Months_In_Step_End]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HRPS0401].[PAYRTAMT]'
GO
GRANT SELECT ON  [dbo].[HRPS0401] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[HRPS0401] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[HRPS0401] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[HRPS0401] TO [DYNGRP]
GO
