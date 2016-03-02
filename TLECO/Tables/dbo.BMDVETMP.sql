CREATE TABLE [dbo].[BMDVETMP]
(
[BENEFIT] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BENEFITCOST_I] [numeric] (19, 5) NOT NULL,
[BENEFITCOST2_I] [numeric] (19, 5) NOT NULL,
[MAXBENEFIT_I_1] [numeric] (19, 5) NOT NULL,
[MAXBENEFIT_I_2] [numeric] (19, 5) NOT NULL,
[MAXBENEFIT_I_3] [numeric] (19, 5) NOT NULL,
[MAXBENEFIT_I_4] [numeric] (19, 5) NOT NULL,
[MAXBENEFIT_I_5] [numeric] (19, 5) NOT NULL,
[MAXBENEFIT_I_6] [numeric] (19, 5) NOT NULL,
[MAXBENEFIT_I_7] [numeric] (19, 5) NOT NULL,
[MAXBENEFIT_I_8] [numeric] (19, 5) NOT NULL,
[MAXBENEFIT_I_9] [numeric] (19, 5) NOT NULL,
[MAXBENEFIT_I_10] [numeric] (19, 5) NOT NULL,
[MAXBENEFIT_I_11] [numeric] (19, 5) NOT NULL,
[MAXBENEFIT_I_12] [numeric] (19, 5) NOT NULL,
[MAXBENEFIT_I_13] [numeric] (19, 5) NOT NULL,
[MAXBENEFIT_I_14] [numeric] (19, 5) NOT NULL,
[MAXBENEFIT_I_15] [numeric] (19, 5) NOT NULL,
[MAXBENEFIT_I_16] [numeric] (19, 5) NOT NULL,
[MAXBENEFIT_I_17] [numeric] (19, 5) NOT NULL,
[MAXBENEFIT_I_18] [numeric] (19, 5) NOT NULL,
[MAXBENEFIT_I_19] [numeric] (19, 5) NOT NULL,
[MAXBENEFIT_I_20] [numeric] (19, 5) NOT NULL,
[NUMBERENROLLED_I] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BMDVETMP] ADD CONSTRAINT [PKBMDVETMP] PRIMARY KEY NONCLUSTERED  ([BENEFIT]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BMDVETMP].[BENEFIT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BMDVETMP].[BENEFITCOST_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BMDVETMP].[BENEFITCOST2_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BMDVETMP].[MAXBENEFIT_I_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BMDVETMP].[MAXBENEFIT_I_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BMDVETMP].[MAXBENEFIT_I_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BMDVETMP].[MAXBENEFIT_I_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BMDVETMP].[MAXBENEFIT_I_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BMDVETMP].[MAXBENEFIT_I_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BMDVETMP].[MAXBENEFIT_I_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BMDVETMP].[MAXBENEFIT_I_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BMDVETMP].[MAXBENEFIT_I_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BMDVETMP].[MAXBENEFIT_I_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BMDVETMP].[MAXBENEFIT_I_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BMDVETMP].[MAXBENEFIT_I_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BMDVETMP].[MAXBENEFIT_I_13]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BMDVETMP].[MAXBENEFIT_I_14]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BMDVETMP].[MAXBENEFIT_I_15]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BMDVETMP].[MAXBENEFIT_I_16]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BMDVETMP].[MAXBENEFIT_I_17]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BMDVETMP].[MAXBENEFIT_I_18]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BMDVETMP].[MAXBENEFIT_I_19]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BMDVETMP].[MAXBENEFIT_I_20]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BMDVETMP].[NUMBERENROLLED_I]'
GO
GRANT SELECT ON  [dbo].[BMDVETMP] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[BMDVETMP] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[BMDVETMP] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[BMDVETMP] TO [DYNGRP]
GO
