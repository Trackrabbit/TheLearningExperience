CREATE TABLE [dbo].[CFMTEMP]
(
[CHEKBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MKTOPROC] [tinyint] NOT NULL,
[CFM_Exchange_Rate] [numeric] (19, 5) NOT NULL,
[CFM_Calc_Method] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CFMTEMP] ADD CONSTRAINT [PKCFMTEMP] PRIMARY KEY CLUSTERED  ([CHEKBKID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CFMTEMP].[CHEKBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CFMTEMP].[MKTOPROC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CFMTEMP].[CFM_Exchange_Rate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CFMTEMP].[CFM_Calc_Method]'
GO
GRANT SELECT ON  [dbo].[CFMTEMP] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[CFMTEMP] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[CFMTEMP] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[CFMTEMP] TO [DYNGRP]
GO
