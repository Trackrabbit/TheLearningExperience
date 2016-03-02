CREATE TABLE [dbo].[SVC06201]
(
[SERVICEBOM] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEQUENCE1] [numeric] (19, 5) NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITEMDESC] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[QUANTITY] [numeric] (19, 5) NOT NULL,
[EFFDATE] [datetime] NOT NULL,
[EXPNDATE] [datetime] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC06201] ADD CONSTRAINT [CK__SVC06201__EFFDAT__17593DD2] CHECK ((datepart(hour,[EFFDATE])=(0) AND datepart(minute,[EFFDATE])=(0) AND datepart(second,[EFFDATE])=(0) AND datepart(millisecond,[EFFDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC06201] ADD CONSTRAINT [CK__SVC06201__EXPNDA__184D620B] CHECK ((datepart(hour,[EXPNDATE])=(0) AND datepart(minute,[EXPNDATE])=(0) AND datepart(second,[EXPNDATE])=(0) AND datepart(millisecond,[EXPNDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC06201] ADD CONSTRAINT [PKSVC06201] PRIMARY KEY CLUSTERED  ([SERVICEBOM], [SEQUENCE1]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC06201] ON [dbo].[SVC06201] ([ITEMNMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06201].[SERVICEBOM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC06201].[SEQUENCE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06201].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06201].[ITEMDESC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC06201].[QUANTITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC06201].[EFFDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC06201].[EXPNDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC06201].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[SVC06201] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC06201] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC06201] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC06201] TO [DYNGRP]
GO
