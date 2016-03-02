CREATE TABLE [dbo].[HR2BEN21]
(
[BENEFIT] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BNFTMTHD] [smallint] NOT NULL,
[BNFPRCNT_1] [numeric] (19, 5) NOT NULL,
[BNFPRCNT_2] [numeric] (19, 5) NOT NULL,
[BNFPRCNT_3] [numeric] (19, 5) NOT NULL,
[BNFPRCNT_4] [numeric] (19, 5) NOT NULL,
[BNFPRCNT_5] [numeric] (19, 5) NOT NULL,
[BNFITAMT_1] [numeric] (19, 5) NOT NULL,
[BNFITAMT_2] [numeric] (19, 5) NOT NULL,
[BNFITAMT_3] [numeric] (19, 5) NOT NULL,
[BNFITAMT_4] [numeric] (19, 5) NOT NULL,
[BNFITAMT_5] [numeric] (19, 5) NOT NULL,
[BNFTRMAX_1] [numeric] (19, 5) NOT NULL,
[BNFTRMAX_2] [numeric] (19, 5) NOT NULL,
[BNFTRMAX_3] [numeric] (19, 5) NOT NULL,
[BNFTRMAX_4] [numeric] (19, 5) NOT NULL,
[BNFTRMAX_5] [numeric] (19, 5) NOT NULL,
[BNTRMXUN_1] [int] NOT NULL,
[BNTRMXUN_2] [int] NOT NULL,
[BNTRMXUN_3] [int] NOT NULL,
[BNTRMXUN_4] [int] NOT NULL,
[BNTRMXUN_5] [int] NOT NULL,
[DEDUCTON] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEDNMTHD] [smallint] NOT NULL,
[DEDNPRCT_1] [numeric] (19, 5) NOT NULL,
[DEDNPRCT_2] [numeric] (19, 5) NOT NULL,
[DEDNPRCT_3] [numeric] (19, 5) NOT NULL,
[DEDNPRCT_4] [numeric] (19, 5) NOT NULL,
[DEDNPRCT_5] [numeric] (19, 5) NOT NULL,
[DEDCAMNT_1] [numeric] (19, 5) NOT NULL,
[DEDCAMNT_2] [numeric] (19, 5) NOT NULL,
[DEDCAMNT_3] [numeric] (19, 5) NOT NULL,
[DEDCAMNT_4] [numeric] (19, 5) NOT NULL,
[DEDCAMNT_5] [numeric] (19, 5) NOT NULL,
[DEDTRMAX_1] [numeric] (19, 5) NOT NULL,
[DEDTRMAX_2] [numeric] (19, 5) NOT NULL,
[DEDTRMAX_3] [numeric] (19, 5) NOT NULL,
[DEDTRMAX_4] [numeric] (19, 5) NOT NULL,
[DEDTRMAX_5] [numeric] (19, 5) NOT NULL,
[DETRMXUN_1] [int] NOT NULL,
[DETRMXUN_2] [int] NOT NULL,
[DETRMXUN_3] [int] NOT NULL,
[DETRMXUN_4] [int] NOT NULL,
[DETRMXUN_5] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HR2BEN21] ADD CONSTRAINT [PKHR2BEN21] PRIMARY KEY CLUSTERED  ([BENEFIT]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2BEN21].[BENEFIT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2BEN21].[BNFTMTHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2BEN21].[BNFPRCNT_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2BEN21].[BNFPRCNT_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2BEN21].[BNFPRCNT_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2BEN21].[BNFPRCNT_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2BEN21].[BNFPRCNT_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2BEN21].[BNFITAMT_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2BEN21].[BNFITAMT_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2BEN21].[BNFITAMT_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2BEN21].[BNFITAMT_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2BEN21].[BNFITAMT_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2BEN21].[BNFTRMAX_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2BEN21].[BNFTRMAX_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2BEN21].[BNFTRMAX_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2BEN21].[BNFTRMAX_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2BEN21].[BNFTRMAX_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2BEN21].[BNTRMXUN_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2BEN21].[BNTRMXUN_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2BEN21].[BNTRMXUN_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2BEN21].[BNTRMXUN_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2BEN21].[BNTRMXUN_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2BEN21].[DEDUCTON]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2BEN21].[DEDNMTHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2BEN21].[DEDNPRCT_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2BEN21].[DEDNPRCT_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2BEN21].[DEDNPRCT_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2BEN21].[DEDNPRCT_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2BEN21].[DEDNPRCT_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2BEN21].[DEDCAMNT_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2BEN21].[DEDCAMNT_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2BEN21].[DEDCAMNT_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2BEN21].[DEDCAMNT_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2BEN21].[DEDCAMNT_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2BEN21].[DEDTRMAX_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2BEN21].[DEDTRMAX_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2BEN21].[DEDTRMAX_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2BEN21].[DEDTRMAX_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2BEN21].[DEDTRMAX_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2BEN21].[DETRMXUN_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2BEN21].[DETRMXUN_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2BEN21].[DETRMXUN_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2BEN21].[DETRMXUN_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2BEN21].[DETRMXUN_5]'
GO
GRANT SELECT ON  [dbo].[HR2BEN21] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[HR2BEN21] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[HR2BEN21] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[HR2BEN21] TO [DYNGRP]
GO
