CREATE TABLE [dbo].[UPR19900]
(
[ISTIPPAY] [tinyint] NOT NULL,
[ACTINDX] [int] NOT NULL,
[ACCTAMNT] [numeric] (19, 5) NOT NULL,
[ACCTTYPE] [smallint] NOT NULL,
[STATECD] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PAYRCORD] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PAYTYPE] [smallint] NOT NULL,
[GROSWAGS_1] [numeric] (19, 5) NOT NULL,
[GROSWAGS_2] [numeric] (19, 5) NOT NULL,
[GROSWAGS_3] [numeric] (19, 5) NOT NULL,
[GROSWAGS_4] [numeric] (19, 5) NOT NULL,
[GROSWAGS_5] [numeric] (19, 5) NOT NULL,
[GROSWAGS_6] [numeric] (19, 5) NOT NULL,
[GROSWAGS_7] [numeric] (19, 5) NOT NULL,
[GROSWAGS_8] [numeric] (19, 5) NOT NULL,
[GROSWAGS_9] [numeric] (19, 5) NOT NULL,
[GROSWAGS_10] [numeric] (19, 5) NOT NULL,
[GROSWAGS_11] [numeric] (19, 5) NOT NULL,
[GROSWAGS_12] [numeric] (19, 5) NOT NULL,
[FFEDTXRT] [smallint] NOT NULL,
[FLSTTXRT] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR19900] ADD CONSTRAINT [PKUPR19900] PRIMARY KEY NONCLUSTERED  ([ACCTTYPE], [ACTINDX], [STATECD], [PAYRCORD], [ISTIPPAY]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2UPR19900] ON [dbo].[UPR19900] ([ACCTTYPE], [STATECD], [ISTIPPAY], [PAYRCORD], [ACTINDX]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR19900].[ISTIPPAY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR19900].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR19900].[ACCTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR19900].[ACCTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR19900].[STATECD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR19900].[PAYRCORD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR19900].[PAYTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR19900].[GROSWAGS_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR19900].[GROSWAGS_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR19900].[GROSWAGS_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR19900].[GROSWAGS_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR19900].[GROSWAGS_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR19900].[GROSWAGS_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR19900].[GROSWAGS_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR19900].[GROSWAGS_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR19900].[GROSWAGS_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR19900].[GROSWAGS_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR19900].[GROSWAGS_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR19900].[GROSWAGS_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR19900].[FFEDTXRT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR19900].[FLSTTXRT]'
GO
GRANT SELECT ON  [dbo].[UPR19900] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR19900] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR19900] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR19900] TO [DYNGRP]
GO
