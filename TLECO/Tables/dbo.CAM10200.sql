CREATE TABLE [dbo].[CAM10200]
(
[CAMAccountType] [smallint] NOT NULL,
[DATE1] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[CMPANYID] [smallint] NOT NULL,
[CAM_Series] [smallint] NOT NULL,
[SGMTNUMB] [smallint] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CAM_Amount_Total] [numeric] (19, 5) NOT NULL,
[CAM_CntrlCount_1] [smallint] NOT NULL,
[CAM_CntrlCount_2] [smallint] NOT NULL,
[CAM_DistCount_1] [smallint] NOT NULL,
[CAM_DistCount_2] [smallint] NOT NULL,
[CAM_DistCount_3] [smallint] NOT NULL,
[CAM_DistCount_4] [smallint] NOT NULL,
[CAM_DistCount_5] [smallint] NOT NULL,
[CAM_DistCount_6] [smallint] NOT NULL,
[CAM_DistCount_7] [smallint] NOT NULL,
[CAM_DistCount_8] [smallint] NOT NULL,
[CAM_DistCount_9] [smallint] NOT NULL,
[CAM_DistCount_10] [smallint] NOT NULL,
[CAM_DistCount_11] [smallint] NOT NULL,
[CAM_DistCount_12] [smallint] NOT NULL,
[CAM_DistCount_13] [smallint] NOT NULL,
[CAM_DistCount_14] [smallint] NOT NULL,
[CAM_DistCount_15] [smallint] NOT NULL,
[CAM_DistCount_16] [smallint] NOT NULL,
[CAM_DocCount_1] [smallint] NOT NULL,
[CAM_DocCount_2] [smallint] NOT NULL,
[CAM_DocCount_3] [smallint] NOT NULL,
[CAM_DocCount_4] [smallint] NOT NULL,
[CAM_DocCount_5] [smallint] NOT NULL,
[CAM_DocCount_6] [smallint] NOT NULL,
[CAM_DocCount_7] [smallint] NOT NULL,
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BCHCOMNT] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[REFRENCE] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SOURCDOC] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRXSRCPX] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRXDATE] [datetime] NOT NULL,
[RVRSNGDT] [datetime] NOT NULL,
[CAM_Status] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CAM10200] ADD CONSTRAINT [CK__CAM10200__TIME1__76D75FA7] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[CAM10200] ADD CONSTRAINT [CK__CAM10200__DATE1__74EF1735] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[CAM10200] ADD CONSTRAINT [CK__CAM10200__RVRSNG__75E33B6E] CHECK ((datepart(hour,[RVRSNGDT])=(0) AND datepart(minute,[RVRSNGDT])=(0) AND datepart(second,[RVRSNGDT])=(0) AND datepart(millisecond,[RVRSNGDT])=(0)))
GO
ALTER TABLE [dbo].[CAM10200] ADD CONSTRAINT [CK__CAM10200__TRXDAT__77CB83E0] CHECK ((datepart(hour,[TRXDATE])=(0) AND datepart(minute,[TRXDATE])=(0) AND datepart(second,[TRXDATE])=(0) AND datepart(millisecond,[TRXDATE])=(0)))
GO
ALTER TABLE [dbo].[CAM10200] ADD CONSTRAINT [PKCAM10200] PRIMARY KEY NONCLUSTERED  ([DATE1], [TIME1]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3CAM10200] ON [dbo].[CAM10200] ([CAM_Amount_Total], [DATE1], [TIME1]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4CAM10200] ON [dbo].[CAM10200] ([CAM_Status], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5CAM10200] ON [dbo].[CAM10200] ([CMPANYID], [BACHNUMB], [CAM_Status], [CAMAccountType], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2CAM10200] ON [dbo].[CAM10200] ([USERID], [DATE1], [TIME1]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CAM10200].[CAMAccountType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CAM10200].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CAM10200].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CAM10200].[CMPANYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CAM10200].[CAM_Series]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CAM10200].[SGMTNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CAM10200].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CAM10200].[CAM_Amount_Total]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CAM10200].[CAM_CntrlCount_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CAM10200].[CAM_CntrlCount_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CAM10200].[CAM_DistCount_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CAM10200].[CAM_DistCount_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CAM10200].[CAM_DistCount_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CAM10200].[CAM_DistCount_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CAM10200].[CAM_DistCount_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CAM10200].[CAM_DistCount_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CAM10200].[CAM_DistCount_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CAM10200].[CAM_DistCount_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CAM10200].[CAM_DistCount_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CAM10200].[CAM_DistCount_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CAM10200].[CAM_DistCount_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CAM10200].[CAM_DistCount_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CAM10200].[CAM_DistCount_13]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CAM10200].[CAM_DistCount_14]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CAM10200].[CAM_DistCount_15]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CAM10200].[CAM_DistCount_16]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CAM10200].[CAM_DocCount_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CAM10200].[CAM_DocCount_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CAM10200].[CAM_DocCount_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CAM10200].[CAM_DocCount_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CAM10200].[CAM_DocCount_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CAM10200].[CAM_DocCount_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CAM10200].[CAM_DocCount_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CAM10200].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CAM10200].[BCHCOMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CAM10200].[REFRENCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CAM10200].[SOURCDOC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CAM10200].[TRXSRCPX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CAM10200].[TRXDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CAM10200].[RVRSNGDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CAM10200].[CAM_Status]'
GO
GRANT SELECT ON  [dbo].[CAM10200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[CAM10200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[CAM10200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[CAM10200] TO [DYNGRP]
GO
