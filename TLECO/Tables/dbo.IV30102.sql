CREATE TABLE [dbo].[IV30102]
(
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SMRYTYPE] [smallint] NOT NULL,
[SMRYPMTH] [smallint] NOT NULL,
[YEAR1] [smallint] NOT NULL,
[SMRYQTYS] [numeric] (19, 5) NOT NULL,
[SMRYCOST] [numeric] (19, 5) NOT NULL,
[SMRYSALS] [numeric] (19, 5) NOT NULL,
[SMMRYDPNDNTUSGQTY] [numeric] (19, 5) NOT NULL,
[SMMRYDPNDNTUSGCST] [numeric] (19, 5) NOT NULL,
[SMMRYPRJCTDUSGQTY] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IV30102] ADD CONSTRAINT [PKIV30102] PRIMARY KEY NONCLUSTERED  ([SMRYTYPE], [ITEMNMBR], [LOCNCODE], [YEAR1], [SMRYPMTH]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3IV30102] ON [dbo].[IV30102] ([ITEMNMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4IV30102] ON [dbo].[IV30102] ([ITEMNMBR], [SMRYTYPE], [YEAR1], [SMRYPMTH], [LOCNCODE]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2IV30102] ON [dbo].[IV30102] ([SMRYTYPE], [LOCNCODE], [YEAR1], [SMRYPMTH], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV30102].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV30102].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV30102].[SMRYTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV30102].[SMRYPMTH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV30102].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV30102].[SMRYQTYS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV30102].[SMRYCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV30102].[SMRYSALS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV30102].[SMMRYDPNDNTUSGQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV30102].[SMMRYDPNDNTUSGCST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV30102].[SMMRYPRJCTDUSGQTY]'
GO
GRANT SELECT ON  [dbo].[IV30102] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[IV30102] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[IV30102] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[IV30102] TO [DYNGRP]
GO
