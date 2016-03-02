CREATE TABLE [dbo].[AR2BEN40]
(
[EMPID_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BNFBEGDT] [datetime] NOT NULL,
[BENEFIT] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[I1_I] [smallint] NOT NULL,
[CHECK1_I] [tinyint] NOT NULL,
[TIERMETHOD_I] [smallint] NOT NULL,
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
ALTER TABLE [dbo].[AR2BEN40] ADD CONSTRAINT [CK__AR2BEN40__BNFBEG__6DE28A87] CHECK ((datepart(hour,[BNFBEGDT])=(0) AND datepart(minute,[BNFBEGDT])=(0) AND datepart(second,[BNFBEGDT])=(0) AND datepart(millisecond,[BNFBEGDT])=(0)))
GO
ALTER TABLE [dbo].[AR2BEN40] ADD CONSTRAINT [PKAR2BEN40] PRIMARY KEY CLUSTERED  ([EMPID_I], [BNFBEGDT], [BENEFIT], [I1_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AR2BEN40].[EMPID_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AR2BEN40].[BNFBEGDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AR2BEN40].[BENEFIT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AR2BEN40].[I1_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AR2BEN40].[CHECK1_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AR2BEN40].[TIERMETHOD_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AR2BEN40].[BNFTMTHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AR2BEN40].[BNFPRCNT_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AR2BEN40].[BNFPRCNT_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AR2BEN40].[BNFPRCNT_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AR2BEN40].[BNFPRCNT_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AR2BEN40].[BNFPRCNT_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AR2BEN40].[BNFITAMT_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AR2BEN40].[BNFITAMT_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AR2BEN40].[BNFITAMT_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AR2BEN40].[BNFITAMT_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AR2BEN40].[BNFITAMT_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AR2BEN40].[BNFTRMAX_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AR2BEN40].[BNFTRMAX_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AR2BEN40].[BNFTRMAX_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AR2BEN40].[BNFTRMAX_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AR2BEN40].[BNFTRMAX_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AR2BEN40].[BNTRMXUN_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AR2BEN40].[BNTRMXUN_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AR2BEN40].[BNTRMXUN_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AR2BEN40].[BNTRMXUN_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AR2BEN40].[BNTRMXUN_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AR2BEN40].[DEDNMTHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AR2BEN40].[DEDNPRCT_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AR2BEN40].[DEDNPRCT_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AR2BEN40].[DEDNPRCT_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AR2BEN40].[DEDNPRCT_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AR2BEN40].[DEDNPRCT_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AR2BEN40].[DEDCAMNT_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AR2BEN40].[DEDCAMNT_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AR2BEN40].[DEDCAMNT_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AR2BEN40].[DEDCAMNT_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AR2BEN40].[DEDCAMNT_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AR2BEN40].[DEDTRMAX_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AR2BEN40].[DEDTRMAX_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AR2BEN40].[DEDTRMAX_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AR2BEN40].[DEDTRMAX_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AR2BEN40].[DEDTRMAX_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AR2BEN40].[DETRMXUN_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AR2BEN40].[DETRMXUN_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AR2BEN40].[DETRMXUN_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AR2BEN40].[DETRMXUN_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AR2BEN40].[DETRMXUN_5]'
GO
GRANT SELECT ON  [dbo].[AR2BEN40] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AR2BEN40] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AR2BEN40] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AR2BEN40] TO [DYNGRP]
GO
