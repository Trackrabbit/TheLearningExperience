CREATE TABLE [dbo].[PC40802]
(
[PLANCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JOBTITLE] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEAT] [int] NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[BENEFIT] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEDCAMNT_1] [numeric] (19, 5) NOT NULL,
[DEDCAMNT_2] [numeric] (19, 5) NOT NULL,
[DEDCAMNT_3] [numeric] (19, 5) NOT NULL,
[DEDCAMNT_4] [numeric] (19, 5) NOT NULL,
[DEDCAMNT_5] [numeric] (19, 5) NOT NULL,
[BNFBEGDT] [datetime] NOT NULL,
[BENEFITCB] [tinyint] NOT NULL,
[DEDNMTHD] [smallint] NOT NULL,
[DEDNPRCT_1] [numeric] (19, 5) NOT NULL,
[DEDNPRCT_2] [numeric] (19, 5) NOT NULL,
[DEDNPRCT_3] [numeric] (19, 5) NOT NULL,
[DEDNPRCT_4] [numeric] (19, 5) NOT NULL,
[DEDNPRCT_5] [numeric] (19, 5) NOT NULL,
[DEDFRMLA] [smallint] NOT NULL,
[BENEFITSTATUS_I] [smallint] NOT NULL,
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
[CHILDREN_I] [smallint] NOT NULL,
[CONTRIBAFTERTAX_I] [numeric] (19, 5) NOT NULL,
[CONTAFTERTAXDLR_I] [numeric] (19, 5) NOT NULL,
[CONTRIBBONUS_I] [numeric] (19, 5) NOT NULL,
[CONTRIBBONUSDOLLAR_I] [numeric] (19, 5) NOT NULL,
[CONTRIBPRETAX_I] [numeric] (19, 5) NOT NULL,
[CONTPRETAXDLR_I] [numeric] (19, 5) NOT NULL,
[EARNINGSCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PREMMETHOD_I] [smallint] NOT NULL,
[LIFEAMTCHILDREN_I] [numeric] (19, 5) NOT NULL,
[LIFEAMTEMPL_I] [numeric] (19, 5) NOT NULL,
[LIFEAMTSPOUSE_I] [numeric] (19, 5) NOT NULL,
[SMOKER_I] [tinyint] NOT NULL,
[SMOKERSP_I] [tinyint] NOT NULL,
[TIERSUSED_I] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PC40802] ADD CONSTRAINT [CK__PC40802__BNFBEGD__6B26196D] CHECK ((datepart(hour,[BNFBEGDT])=(0) AND datepart(minute,[BNFBEGDT])=(0) AND datepart(second,[BNFBEGDT])=(0) AND datepart(millisecond,[BNFBEGDT])=(0)))
GO
ALTER TABLE [dbo].[PC40802] ADD CONSTRAINT [PKPC40802] PRIMARY KEY NONCLUSTERED  ([PLANCODE], [JOBTITLE], [SEAT], [SEQNUMBR], [BENEFIT]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC40802].[PLANCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC40802].[JOBTITLE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40802].[SEAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40802].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC40802].[BENEFIT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PC40802].[DEDCAMNT_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PC40802].[DEDCAMNT_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PC40802].[DEDCAMNT_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PC40802].[DEDCAMNT_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PC40802].[DEDCAMNT_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PC40802].[BNFBEGDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40802].[BENEFITCB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40802].[DEDNMTHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PC40802].[DEDNPRCT_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PC40802].[DEDNPRCT_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PC40802].[DEDNPRCT_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PC40802].[DEDNPRCT_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PC40802].[DEDNPRCT_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40802].[DEDFRMLA]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40802].[BENEFITSTATUS_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PC40802].[DEDTRMAX_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PC40802].[DEDTRMAX_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PC40802].[DEDTRMAX_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PC40802].[DEDTRMAX_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PC40802].[DEDTRMAX_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40802].[DETRMXUN_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40802].[DETRMXUN_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40802].[DETRMXUN_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40802].[DETRMXUN_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40802].[DETRMXUN_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40802].[CHILDREN_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PC40802].[CONTRIBAFTERTAX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PC40802].[CONTAFTERTAXDLR_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PC40802].[CONTRIBBONUS_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PC40802].[CONTRIBBONUSDOLLAR_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PC40802].[CONTRIBPRETAX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PC40802].[CONTPRETAXDLR_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC40802].[EARNINGSCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40802].[PREMMETHOD_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PC40802].[LIFEAMTCHILDREN_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PC40802].[LIFEAMTEMPL_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PC40802].[LIFEAMTSPOUSE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40802].[SMOKER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40802].[SMOKERSP_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40802].[TIERSUSED_I]'
GO
GRANT SELECT ON  [dbo].[PC40802] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PC40802] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PC40802] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PC40802] TO [DYNGRP]
GO
