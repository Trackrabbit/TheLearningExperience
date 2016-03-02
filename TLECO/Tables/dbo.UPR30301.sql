CREATE TABLE [dbo].[UPR30301]
(
[EMPLOYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[YEAR1] [smallint] NOT NULL,
[PYRLRTYP] [smallint] NOT NULL,
[PAYROLCD] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MTDWAGES_1] [numeric] (19, 5) NOT NULL,
[MTDWAGES_2] [numeric] (19, 5) NOT NULL,
[MTDWAGES_3] [numeric] (19, 5) NOT NULL,
[MTDWAGES_4] [numeric] (19, 5) NOT NULL,
[MTDWAGES_5] [numeric] (19, 5) NOT NULL,
[MTDWAGES_6] [numeric] (19, 5) NOT NULL,
[MTDWAGES_7] [numeric] (19, 5) NOT NULL,
[MTDWAGES_8] [numeric] (19, 5) NOT NULL,
[MTDWAGES_9] [numeric] (19, 5) NOT NULL,
[MTDWAGES_10] [numeric] (19, 5) NOT NULL,
[MTDWAGES_11] [numeric] (19, 5) NOT NULL,
[MTDWAGES_12] [numeric] (19, 5) NOT NULL,
[MTDHOURS_1] [int] NOT NULL,
[MTDHOURS_2] [int] NOT NULL,
[MTDHOURS_3] [int] NOT NULL,
[MTDHOURS_4] [int] NOT NULL,
[MTDHOURS_5] [int] NOT NULL,
[MTDHOURS_6] [int] NOT NULL,
[MTDHOURS_7] [int] NOT NULL,
[MTDHOURS_8] [int] NOT NULL,
[MTDHOURS_9] [int] NOT NULL,
[MTDHOURS_10] [int] NOT NULL,
[MTDHOURS_11] [int] NOT NULL,
[MTDHOURS_12] [int] NOT NULL,
[STXBLWGS_1] [numeric] (19, 5) NOT NULL,
[STXBLWGS_2] [numeric] (19, 5) NOT NULL,
[STXBLWGS_3] [numeric] (19, 5) NOT NULL,
[STXBLWGS_4] [numeric] (19, 5) NOT NULL,
[STXBLWGS_5] [numeric] (19, 5) NOT NULL,
[STXBLWGS_6] [numeric] (19, 5) NOT NULL,
[STXBLWGS_7] [numeric] (19, 5) NOT NULL,
[STXBLWGS_8] [numeric] (19, 5) NOT NULL,
[STXBLWGS_9] [numeric] (19, 5) NOT NULL,
[STXBLWGS_10] [numeric] (19, 5) NOT NULL,
[STXBLWGS_11] [numeric] (19, 5) NOT NULL,
[STXBLWGS_12] [numeric] (19, 5) NOT NULL,
[LCTXBLWG_1] [numeric] (19, 5) NOT NULL,
[LCTXBLWG_2] [numeric] (19, 5) NOT NULL,
[LCTXBLWG_3] [numeric] (19, 5) NOT NULL,
[LCTXBLWG_4] [numeric] (19, 5) NOT NULL,
[LCTXBLWG_5] [numeric] (19, 5) NOT NULL,
[LCTXBLWG_6] [numeric] (19, 5) NOT NULL,
[LCTXBLWG_7] [numeric] (19, 5) NOT NULL,
[LCTXBLWG_8] [numeric] (19, 5) NOT NULL,
[LCTXBLWG_9] [numeric] (19, 5) NOT NULL,
[LCTXBLWG_10] [numeric] (19, 5) NOT NULL,
[LCTXBLWG_11] [numeric] (19, 5) NOT NULL,
[LCTXBLWG_12] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR30301] ADD CONSTRAINT [PKUPR30301] PRIMARY KEY NONCLUSTERED  ([EMPLOYID], [YEAR1], [PYRLRTYP], [PAYROLCD]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2UPR30301] ON [dbo].[UPR30301] ([EMPLOYID], [PYRLRTYP], [PAYROLCD], [YEAR1]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3UPR30301] ON [dbo].[UPR30301] ([YEAR1], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR30301].[EMPLOYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR30301].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR30301].[PYRLRTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR30301].[PAYROLCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30301].[MTDWAGES_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30301].[MTDWAGES_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30301].[MTDWAGES_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30301].[MTDWAGES_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30301].[MTDWAGES_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30301].[MTDWAGES_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30301].[MTDWAGES_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30301].[MTDWAGES_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30301].[MTDWAGES_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30301].[MTDWAGES_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30301].[MTDWAGES_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30301].[MTDWAGES_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR30301].[MTDHOURS_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR30301].[MTDHOURS_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR30301].[MTDHOURS_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR30301].[MTDHOURS_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR30301].[MTDHOURS_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR30301].[MTDHOURS_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR30301].[MTDHOURS_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR30301].[MTDHOURS_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR30301].[MTDHOURS_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR30301].[MTDHOURS_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR30301].[MTDHOURS_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR30301].[MTDHOURS_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30301].[STXBLWGS_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30301].[STXBLWGS_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30301].[STXBLWGS_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30301].[STXBLWGS_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30301].[STXBLWGS_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30301].[STXBLWGS_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30301].[STXBLWGS_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30301].[STXBLWGS_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30301].[STXBLWGS_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30301].[STXBLWGS_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30301].[STXBLWGS_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30301].[STXBLWGS_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30301].[LCTXBLWG_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30301].[LCTXBLWG_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30301].[LCTXBLWG_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30301].[LCTXBLWG_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30301].[LCTXBLWG_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30301].[LCTXBLWG_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30301].[LCTXBLWG_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30301].[LCTXBLWG_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30301].[LCTXBLWG_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30301].[LCTXBLWG_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30301].[LCTXBLWG_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30301].[LCTXBLWG_12]'
GO
GRANT SELECT ON  [dbo].[UPR30301] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR30301] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR30301] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR30301] TO [DYNGRP]
GO
