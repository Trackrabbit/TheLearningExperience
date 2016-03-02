CREATE TABLE [dbo].[LK000102]
(
[LK_Link_No] [int] NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LK_Link_Date] [datetime] NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[LSTDTEDT] [datetime] NOT NULL,
[LK_Link_Balance] [numeric] (19, 5) NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LSTUSRED] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LK000102] ADD CONSTRAINT [CK__LK000102__CREATD__1229A90A] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[LK000102] ADD CONSTRAINT [CK__LK000102__LK_Lin__131DCD43] CHECK ((datepart(hour,[LK_Link_Date])=(0) AND datepart(minute,[LK_Link_Date])=(0) AND datepart(second,[LK_Link_Date])=(0) AND datepart(millisecond,[LK_Link_Date])=(0)))
GO
ALTER TABLE [dbo].[LK000102] ADD CONSTRAINT [CK__LK000102__LSTDTE__1411F17C] CHECK ((datepart(hour,[LSTDTEDT])=(0) AND datepart(minute,[LSTDTEDT])=(0) AND datepart(second,[LSTDTEDT])=(0) AND datepart(millisecond,[LSTDTEDT])=(0)))
GO
ALTER TABLE [dbo].[LK000102] ADD CONSTRAINT [PKLK000102] PRIMARY KEY CLUSTERED  ([LK_Link_No]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2LK000102] ON [dbo].[LK000102] ([LK_Link_Date], [LK_Link_No], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3LK000102] ON [dbo].[LK000102] ([USERID], [LK_Link_No]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[LK000102].[LK_Link_No]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[LK000102].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[LK000102].[LK_Link_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[LK000102].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[LK000102].[LSTDTEDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[LK000102].[LK_Link_Balance]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[LK000102].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[LK000102].[LSTUSRED]'
GO
GRANT SELECT ON  [dbo].[LK000102] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[LK000102] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[LK000102] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[LK000102] TO [DYNGRP]
GO
