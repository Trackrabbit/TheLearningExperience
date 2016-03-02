CREATE TABLE [dbo].[UPR41300]
(
[TAXCODE] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TXCALCTN_1] [smallint] NOT NULL,
[TXCALCTN_2] [smallint] NOT NULL,
[TXCALCTN_3] [smallint] NOT NULL,
[TXCALCTN_4] [smallint] NOT NULL,
[TXCALCTN_5] [smallint] NOT NULL,
[TXCALCTN_6] [smallint] NOT NULL,
[TXCALCTN_7] [smallint] NOT NULL,
[TXCALCTN_8] [smallint] NOT NULL,
[TXCALCTN_9] [smallint] NOT NULL,
[TXCALCTN_10] [smallint] NOT NULL,
[ESTDEDTN] [numeric] (19, 5) NOT NULL,
[DEPEXMPT] [numeric] (19, 5) NOT NULL,
[MXEICPMT] [numeric] (19, 5) NOT NULL,
[EXWGLIMT] [numeric] (19, 5) NOT NULL,
[EXTXRATE] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR41300] ADD CONSTRAINT [PKUPR41300] PRIMARY KEY NONCLUSTERED  ([TAXCODE]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2UPR41300] ON [dbo].[UPR41300] ([DSCRIPTN], [TAXCODE]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR41300].[TAXCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR41300].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR41300].[TXCALCTN_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR41300].[TXCALCTN_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR41300].[TXCALCTN_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR41300].[TXCALCTN_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR41300].[TXCALCTN_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR41300].[TXCALCTN_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR41300].[TXCALCTN_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR41300].[TXCALCTN_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR41300].[TXCALCTN_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR41300].[TXCALCTN_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR41300].[ESTDEDTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR41300].[DEPEXMPT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR41300].[MXEICPMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR41300].[EXWGLIMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR41300].[EXTXRATE]'
GO
GRANT SELECT ON  [dbo].[UPR41300] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR41300] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR41300] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR41300] TO [DYNGRP]
GO
