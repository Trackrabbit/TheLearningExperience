CREATE TABLE [dbo].[IV00111]
(
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORDERPOLICY] [smallint] NOT NULL,
[FXDORDRQTY] [numeric] (19, 5) NOT NULL,
[NMBROFDYS] [smallint] NOT NULL,
[ORDRPNTQTY] [numeric] (19, 5) NOT NULL,
[REPLENISHMENTMETHOD] [smallint] NOT NULL,
[PRCHSNGLDTM] [numeric] (19, 5) NOT NULL,
[MNFCTRNGFXDLDTM] [numeric] (19, 5) NOT NULL,
[MNFCTRNGVRBLLDTM] [numeric] (19, 5) NOT NULL,
[STAGINGLDTME] [numeric] (19, 5) NOT NULL,
[PLNNNGTMFNCDYS] [smallint] NOT NULL,
[DMNDTMFNCPRDS] [smallint] NOT NULL,
[BUYERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PLANNERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FRCSTCNSMPTNPRD] [smallint] NOT NULL,
[INCLDDINPLNNNG] [tinyint] NOT NULL,
[CALCULATEATP] [tinyint] NOT NULL,
[AUTOCHKATP] [tinyint] NOT NULL,
[PLNFNLPAB] [tinyint] NOT NULL,
[Move_Out_Fence] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IV00111] ADD CONSTRAINT [PKIV00111] PRIMARY KEY NONCLUSTERED  ([LOCNCODE]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00111].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00111].[ORDERPOLICY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV00111].[FXDORDRQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00111].[NMBROFDYS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV00111].[ORDRPNTQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00111].[REPLENISHMENTMETHOD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV00111].[PRCHSNGLDTM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV00111].[MNFCTRNGFXDLDTM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV00111].[MNFCTRNGVRBLLDTM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV00111].[STAGINGLDTME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00111].[PLNNNGTMFNCDYS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00111].[DMNDTMFNCPRDS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00111].[BUYERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00111].[PLANNERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00111].[FRCSTCNSMPTNPRD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00111].[INCLDDINPLNNNG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00111].[CALCULATEATP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00111].[AUTOCHKATP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00111].[PLNFNLPAB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00111].[Move_Out_Fence]'
GO
GRANT SELECT ON  [dbo].[IV00111] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[IV00111] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[IV00111] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[IV00111] TO [DYNGRP]
GO
