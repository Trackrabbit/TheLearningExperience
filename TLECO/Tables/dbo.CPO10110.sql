CREATE TABLE [dbo].[CPO10110]
(
[PONUMBER] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORD] [int] NOT NULL,
[ACTINDX] [int] NOT NULL,
[REQDATE] [datetime] NOT NULL,
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[APPROVL] [tinyint] NOT NULL,
[Committed_Amount] [numeric] (19, 5) NOT NULL,
[POLNESTA] [smallint] NOT NULL,
[QTYCANCE] [numeric] (19, 5) NOT NULL,
[UNITCOST] [numeric] (19, 5) NOT NULL,
[PostedSubtotal] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CPO10110] ADD CONSTRAINT [CK__CPO10110__REQDAT__5FF3FA4F] CHECK ((datepart(hour,[REQDATE])=(0) AND datepart(minute,[REQDATE])=(0) AND datepart(second,[REQDATE])=(0) AND datepart(millisecond,[REQDATE])=(0)))
GO
ALTER TABLE [dbo].[CPO10110] ADD CONSTRAINT [PKCPO10110] PRIMARY KEY NONCLUSTERED  ([PONUMBER], [ORD]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4CPO10110] ON [dbo].[CPO10110] ([ACTINDX], [POLNESTA], [REQDATE], [PONUMBER], [ORD], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3CPO10110] ON [dbo].[CPO10110] ([ACTINDX], [REQDATE], [PONUMBER], [ORD]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2CPO10110] ON [dbo].[CPO10110] ([PONUMBER], [ORD], [APPROVL]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CPO10110].[PONUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CPO10110].[ORD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CPO10110].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CPO10110].[REQDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CPO10110].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CPO10110].[APPROVL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CPO10110].[Committed_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CPO10110].[POLNESTA]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CPO10110].[QTYCANCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CPO10110].[UNITCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CPO10110].[PostedSubtotal]'
GO
GRANT SELECT ON  [dbo].[CPO10110] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[CPO10110] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[CPO10110] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[CPO10110] TO [DYNGRP]
GO
