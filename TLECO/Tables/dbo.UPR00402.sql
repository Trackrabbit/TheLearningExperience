CREATE TABLE [dbo].[UPR00402]
(
[EMPLOYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PAYRCORD] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Effective_Date] [datetime] NOT NULL,
[PAYRTAMT] [numeric] (19, 5) NOT NULL,
[CHANGEREASON_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PayStepStatus] [smallint] NOT NULL,
[PYSTPTBLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Step] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR00402] ADD CONSTRAINT [CK__UPR00402__Effect__5E7FE7D2] CHECK ((datepart(hour,[Effective_Date])=(0) AND datepart(minute,[Effective_Date])=(0) AND datepart(second,[Effective_Date])=(0) AND datepart(millisecond,[Effective_Date])=(0)))
GO
ALTER TABLE [dbo].[UPR00402] ADD CONSTRAINT [PKUPR00402] PRIMARY KEY NONCLUSTERED  ([EMPLOYID], [PAYRCORD], [Effective_Date]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3UPR00402] ON [dbo].[UPR00402] ([Effective_Date], [EMPLOYID], [PAYRCORD]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2UPR00402] ON [dbo].[UPR00402] ([PAYRCORD], [EMPLOYID], [Effective_Date]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00402].[EMPLOYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00402].[PAYRCORD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR00402].[Effective_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00402].[PAYRTAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00402].[CHANGEREASON_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00402].[PayStepStatus]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00402].[PYSTPTBLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00402].[Step]'
GO
GRANT SELECT ON  [dbo].[UPR00402] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR00402] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR00402] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR00402] TO [DYNGRP]
GO
