CREATE TABLE [dbo].[CFM00101]
(
[EBS_Forecast_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHEKBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CFM_Exchange_Rate] [numeric] (19, 5) NOT NULL,
[CFM_Calc_Method] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CFM00101] ADD CONSTRAINT [PKCFM00101] PRIMARY KEY NONCLUSTERED  ([EBS_Forecast_ID], [CHEKBKID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2CFM00101] ON [dbo].[CFM00101] ([CHEKBKID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CFM00101].[EBS_Forecast_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CFM00101].[CHEKBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CFM00101].[CFM_Exchange_Rate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CFM00101].[CFM_Calc_Method]'
GO
GRANT SELECT ON  [dbo].[CFM00101] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[CFM00101] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[CFM00101] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[CFM00101] TO [DYNGRP]
GO