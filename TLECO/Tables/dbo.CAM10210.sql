CREATE TABLE [dbo].[CAM10210]
(
[DATE1] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[CMPANYID] [smallint] NOT NULL,
[SGMNTID] [char] (67) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CAM_ControlAccountIndex] [int] NOT NULL,
[CAMControlAccount_1] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CAMControlAccount_2] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CAMControlAccount_3] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CAMControlAccount_4] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CAM_ControlAcctDescr] [char] (33) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CAM_Amount_Total] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CAM10210] ADD CONSTRAINT [CK__CAM10210__TIME1__117A3FFD] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[CAM10210] ADD CONSTRAINT [CK__CAM10210__DATE1__10861BC4] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[CAM10210] ADD CONSTRAINT [PKCAM10210] PRIMARY KEY NONCLUSTERED  ([DATE1], [TIME1], [CMPANYID], [SGMNTID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3CAM10210] ON [dbo].[CAM10210] ([DATE1], [TIME1], [CMPANYID], [CAM_Amount_Total], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2CAM10210] ON [dbo].[CAM10210] ([DATE1], [TIME1], [CMPANYID], [CAM_ControlAcctDescr], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4CAM10210] ON [dbo].[CAM10210] ([DATE1], [TIME1], [CMPANYID], [CAMControlAccount_1], [CAMControlAccount_2], [CAMControlAccount_3], [CAMControlAccount_4]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CAM10210].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CAM10210].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CAM10210].[CMPANYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CAM10210].[SGMNTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CAM10210].[CAM_ControlAccountIndex]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CAM10210].[CAMControlAccount_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CAM10210].[CAMControlAccount_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CAM10210].[CAMControlAccount_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CAM10210].[CAMControlAccount_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CAM10210].[CAM_ControlAcctDescr]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CAM10210].[CAM_Amount_Total]'
GO
GRANT SELECT ON  [dbo].[CAM10210] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[CAM10210] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[CAM10210] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[CAM10210] TO [DYNGRP]
GO
