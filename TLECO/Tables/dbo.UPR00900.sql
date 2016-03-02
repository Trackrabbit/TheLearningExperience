CREATE TABLE [dbo].[UPR00900]
(
[EMPLOYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LPCHKNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LSTPCKDT] [datetime] NOT NULL,
[LPCHKAMT] [numeric] (19, 5) NOT NULL,
[GROSWAGS_1] [numeric] (19, 5) NOT NULL,
[GROSWAGS_2] [numeric] (19, 5) NOT NULL,
[GROSWAGS_3] [numeric] (19, 5) NOT NULL,
[GROSWAGS_4] [numeric] (19, 5) NOT NULL,
[GROSWAGS_5] [numeric] (19, 5) NOT NULL,
[GROSWAGS_6] [numeric] (19, 5) NOT NULL,
[GROSWAGS_7] [numeric] (19, 5) NOT NULL,
[GROSWAGS_8] [numeric] (19, 5) NOT NULL,
[GROSWAGS_9] [numeric] (19, 5) NOT NULL,
[GROSWAGS_10] [numeric] (19, 5) NOT NULL,
[GROSWAGS_11] [numeric] (19, 5) NOT NULL,
[GROSWAGS_12] [numeric] (19, 5) NOT NULL,
[FDWTHLDG_1] [numeric] (19, 5) NOT NULL,
[FDWTHLDG_2] [numeric] (19, 5) NOT NULL,
[FDWTHLDG_3] [numeric] (19, 5) NOT NULL,
[FDWTHLDG_4] [numeric] (19, 5) NOT NULL,
[FDWTHLDG_5] [numeric] (19, 5) NOT NULL,
[FDWTHLDG_6] [numeric] (19, 5) NOT NULL,
[FDWTHLDG_7] [numeric] (19, 5) NOT NULL,
[FDWTHLDG_8] [numeric] (19, 5) NOT NULL,
[FDWTHLDG_9] [numeric] (19, 5) NOT NULL,
[FDWTHLDG_10] [numeric] (19, 5) NOT NULL,
[FDWTHLDG_11] [numeric] (19, 5) NOT NULL,
[FDWTHLDG_12] [numeric] (19, 5) NOT NULL,
[FICASSWG_1] [numeric] (19, 5) NOT NULL,
[FICASSWG_2] [numeric] (19, 5) NOT NULL,
[FICASSWG_3] [numeric] (19, 5) NOT NULL,
[FICASSWG_4] [numeric] (19, 5) NOT NULL,
[FICASSWG_5] [numeric] (19, 5) NOT NULL,
[FICASSWG_6] [numeric] (19, 5) NOT NULL,
[FICASSWG_7] [numeric] (19, 5) NOT NULL,
[FICASSWG_8] [numeric] (19, 5) NOT NULL,
[FICASSWG_9] [numeric] (19, 5) NOT NULL,
[FICASSWG_10] [numeric] (19, 5) NOT NULL,
[FICASSWG_11] [numeric] (19, 5) NOT NULL,
[FICASSWG_12] [numeric] (19, 5) NOT NULL,
[FICAMWGS_1] [numeric] (19, 5) NOT NULL,
[FICAMWGS_2] [numeric] (19, 5) NOT NULL,
[FICAMWGS_3] [numeric] (19, 5) NOT NULL,
[FICAMWGS_4] [numeric] (19, 5) NOT NULL,
[FICAMWGS_5] [numeric] (19, 5) NOT NULL,
[FICAMWGS_6] [numeric] (19, 5) NOT NULL,
[FICAMWGS_7] [numeric] (19, 5) NOT NULL,
[FICAMWGS_8] [numeric] (19, 5) NOT NULL,
[FICAMWGS_9] [numeric] (19, 5) NOT NULL,
[FICAMWGS_10] [numeric] (19, 5) NOT NULL,
[FICAMWGS_11] [numeric] (19, 5) NOT NULL,
[FICAMWGS_12] [numeric] (19, 5) NOT NULL,
[FICASSWH_1] [numeric] (19, 5) NOT NULL,
[FICASSWH_2] [numeric] (19, 5) NOT NULL,
[FICASSWH_3] [numeric] (19, 5) NOT NULL,
[FICASSWH_4] [numeric] (19, 5) NOT NULL,
[FICASSWH_5] [numeric] (19, 5) NOT NULL,
[FICASSWH_6] [numeric] (19, 5) NOT NULL,
[FICASSWH_7] [numeric] (19, 5) NOT NULL,
[FICASSWH_8] [numeric] (19, 5) NOT NULL,
[FICASSWH_9] [numeric] (19, 5) NOT NULL,
[FICASSWH_10] [numeric] (19, 5) NOT NULL,
[FICASSWH_11] [numeric] (19, 5) NOT NULL,
[FICASSWH_12] [numeric] (19, 5) NOT NULL,
[FICAMWDG_1] [numeric] (19, 5) NOT NULL,
[FICAMWDG_2] [numeric] (19, 5) NOT NULL,
[FICAMWDG_3] [numeric] (19, 5) NOT NULL,
[FICAMWDG_4] [numeric] (19, 5) NOT NULL,
[FICAMWDG_5] [numeric] (19, 5) NOT NULL,
[FICAMWDG_6] [numeric] (19, 5) NOT NULL,
[FICAMWDG_7] [numeric] (19, 5) NOT NULL,
[FICAMWDG_8] [numeric] (19, 5) NOT NULL,
[FICAMWDG_9] [numeric] (19, 5) NOT NULL,
[FICAMWDG_10] [numeric] (19, 5) NOT NULL,
[FICAMWDG_11] [numeric] (19, 5) NOT NULL,
[FICAMWDG_12] [numeric] (19, 5) NOT NULL,
[SUTAWAGS_1] [numeric] (19, 5) NOT NULL,
[SUTAWAGS_2] [numeric] (19, 5) NOT NULL,
[SUTAWAGS_3] [numeric] (19, 5) NOT NULL,
[SUTAWAGS_4] [numeric] (19, 5) NOT NULL,
[SUTAWAGS_5] [numeric] (19, 5) NOT NULL,
[SUTAWAGS_6] [numeric] (19, 5) NOT NULL,
[SUTAWAGS_7] [numeric] (19, 5) NOT NULL,
[SUTAWAGS_8] [numeric] (19, 5) NOT NULL,
[SUTAWAGS_9] [numeric] (19, 5) NOT NULL,
[SUTAWAGS_10] [numeric] (19, 5) NOT NULL,
[SUTAWAGS_11] [numeric] (19, 5) NOT NULL,
[SUTAWAGS_12] [numeric] (19, 5) NOT NULL,
[FUTAWAGS_1] [numeric] (19, 5) NOT NULL,
[FUTAWAGS_2] [numeric] (19, 5) NOT NULL,
[FUTAWAGS_3] [numeric] (19, 5) NOT NULL,
[FUTAWAGS_4] [numeric] (19, 5) NOT NULL,
[FUTAWAGS_5] [numeric] (19, 5) NOT NULL,
[FUTAWAGS_6] [numeric] (19, 5) NOT NULL,
[FUTAWAGS_7] [numeric] (19, 5) NOT NULL,
[FUTAWAGS_8] [numeric] (19, 5) NOT NULL,
[FUTAWAGS_9] [numeric] (19, 5) NOT NULL,
[FUTAWAGS_10] [numeric] (19, 5) NOT NULL,
[FUTAWAGS_11] [numeric] (19, 5) NOT NULL,
[FUTAWAGS_12] [numeric] (19, 5) NOT NULL,
[NETWAGES_1] [numeric] (19, 5) NOT NULL,
[NETWAGES_2] [numeric] (19, 5) NOT NULL,
[NETWAGES_3] [numeric] (19, 5) NOT NULL,
[NETWAGES_4] [numeric] (19, 5) NOT NULL,
[NETWAGES_5] [numeric] (19, 5) NOT NULL,
[NETWAGES_6] [numeric] (19, 5) NOT NULL,
[NETWAGES_7] [numeric] (19, 5) NOT NULL,
[NETWAGES_8] [numeric] (19, 5) NOT NULL,
[NETWAGES_9] [numeric] (19, 5) NOT NULL,
[NETWAGES_10] [numeric] (19, 5) NOT NULL,
[NETWAGES_11] [numeric] (19, 5) NOT NULL,
[NETWAGES_12] [numeric] (19, 5) NOT NULL,
[YEAR1] [smallint] NOT NULL,
[Federal_Wages_1] [numeric] (19, 5) NOT NULL,
[Federal_Wages_2] [numeric] (19, 5) NOT NULL,
[Federal_Wages_3] [numeric] (19, 5) NOT NULL,
[Federal_Wages_4] [numeric] (19, 5) NOT NULL,
[Federal_Wages_5] [numeric] (19, 5) NOT NULL,
[Federal_Wages_6] [numeric] (19, 5) NOT NULL,
[Federal_Wages_7] [numeric] (19, 5) NOT NULL,
[Federal_Wages_8] [numeric] (19, 5) NOT NULL,
[Federal_Wages_9] [numeric] (19, 5) NOT NULL,
[Federal_Wages_10] [numeric] (19, 5) NOT NULL,
[Federal_Wages_11] [numeric] (19, 5) NOT NULL,
[Federal_Wages_12] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR00900] ADD CONSTRAINT [CK__UPR00900__LSTPCK__737B04B8] CHECK ((datepart(hour,[LSTPCKDT])=(0) AND datepart(minute,[LSTPCKDT])=(0) AND datepart(second,[LSTPCKDT])=(0) AND datepart(millisecond,[LSTPCKDT])=(0)))
GO
ALTER TABLE [dbo].[UPR00900] ADD CONSTRAINT [PKUPR00900] PRIMARY KEY NONCLUSTERED  ([EMPLOYID], [YEAR1]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00900].[EMPLOYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00900].[LPCHKNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR00900].[LSTPCKDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[LPCHKAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[GROSWAGS_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[GROSWAGS_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[GROSWAGS_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[GROSWAGS_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[GROSWAGS_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[GROSWAGS_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[GROSWAGS_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[GROSWAGS_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[GROSWAGS_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[GROSWAGS_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[GROSWAGS_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[GROSWAGS_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FDWTHLDG_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FDWTHLDG_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FDWTHLDG_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FDWTHLDG_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FDWTHLDG_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FDWTHLDG_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FDWTHLDG_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FDWTHLDG_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FDWTHLDG_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FDWTHLDG_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FDWTHLDG_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FDWTHLDG_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FICASSWG_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FICASSWG_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FICASSWG_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FICASSWG_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FICASSWG_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FICASSWG_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FICASSWG_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FICASSWG_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FICASSWG_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FICASSWG_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FICASSWG_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FICASSWG_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FICAMWGS_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FICAMWGS_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FICAMWGS_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FICAMWGS_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FICAMWGS_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FICAMWGS_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FICAMWGS_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FICAMWGS_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FICAMWGS_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FICAMWGS_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FICAMWGS_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FICAMWGS_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FICASSWH_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FICASSWH_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FICASSWH_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FICASSWH_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FICASSWH_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FICASSWH_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FICASSWH_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FICASSWH_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FICASSWH_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FICASSWH_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FICASSWH_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FICASSWH_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FICAMWDG_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FICAMWDG_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FICAMWDG_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FICAMWDG_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FICAMWDG_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FICAMWDG_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FICAMWDG_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FICAMWDG_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FICAMWDG_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FICAMWDG_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FICAMWDG_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FICAMWDG_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[SUTAWAGS_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[SUTAWAGS_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[SUTAWAGS_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[SUTAWAGS_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[SUTAWAGS_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[SUTAWAGS_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[SUTAWAGS_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[SUTAWAGS_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[SUTAWAGS_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[SUTAWAGS_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[SUTAWAGS_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[SUTAWAGS_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FUTAWAGS_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FUTAWAGS_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FUTAWAGS_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FUTAWAGS_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FUTAWAGS_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FUTAWAGS_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FUTAWAGS_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FUTAWAGS_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FUTAWAGS_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FUTAWAGS_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FUTAWAGS_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[FUTAWAGS_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[NETWAGES_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[NETWAGES_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[NETWAGES_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[NETWAGES_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[NETWAGES_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[NETWAGES_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[NETWAGES_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[NETWAGES_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[NETWAGES_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[NETWAGES_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[NETWAGES_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[NETWAGES_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00900].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[Federal_Wages_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[Federal_Wages_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[Federal_Wages_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[Federal_Wages_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[Federal_Wages_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[Federal_Wages_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[Federal_Wages_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[Federal_Wages_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[Federal_Wages_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[Federal_Wages_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[Federal_Wages_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00900].[Federal_Wages_12]'
GO
GRANT SELECT ON  [dbo].[UPR00900] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR00900] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR00900] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR00900] TO [DYNGRP]
GO
