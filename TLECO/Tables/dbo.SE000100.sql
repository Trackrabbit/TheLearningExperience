CREATE TABLE [dbo].[SE000100]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PERIODID] [smallint] NOT NULL,
[PERNAME] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SE_Net_Amount_1] [numeric] (19, 5) NOT NULL,
[SE_Net_Amount_2] [numeric] (19, 5) NOT NULL,
[SE_Net_Amount_3] [numeric] (19, 5) NOT NULL,
[SE_Net_Amount_4] [numeric] (19, 5) NOT NULL,
[SE_Period_Balance_1] [numeric] (19, 5) NOT NULL,
[SE_Period_Balance_2] [numeric] (19, 5) NOT NULL,
[SE_Period_Balance_3] [numeric] (19, 5) NOT NULL,
[SE_Period_Balance_4] [numeric] (19, 5) NOT NULL,
[SECURIDX_1] [smallint] NOT NULL,
[SECURIDX_2] [smallint] NOT NULL,
[SECURIDX_3] [smallint] NOT NULL,
[SECURIDX_4] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SE000100] ADD CONSTRAINT [PKSE000100] PRIMARY KEY CLUSTERED  ([USERID], [PERIODID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SE000100].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SE000100].[PERIODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SE000100].[PERNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SE000100].[SE_Net_Amount_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SE000100].[SE_Net_Amount_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SE000100].[SE_Net_Amount_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SE000100].[SE_Net_Amount_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SE000100].[SE_Period_Balance_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SE000100].[SE_Period_Balance_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SE000100].[SE_Period_Balance_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SE000100].[SE_Period_Balance_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SE000100].[SECURIDX_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SE000100].[SECURIDX_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SE000100].[SECURIDX_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SE000100].[SECURIDX_4]'
GO
GRANT SELECT ON  [dbo].[SE000100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SE000100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SE000100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SE000100] TO [DYNGRP]
GO
