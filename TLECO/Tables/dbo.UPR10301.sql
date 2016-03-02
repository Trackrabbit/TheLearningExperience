CREATE TABLE [dbo].[UPR10301]
(
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UPRBCHOR] [smallint] NOT NULL,
[BCHCOMNT] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UPRBCHFR] [smallint] NOT NULL,
[POSTEDDT] [datetime] NOT NULL,
[UPRBCHMK] [tinyint] NOT NULL,
[MKDBYUSR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSCBDINC] [smallint] NOT NULL,
[RECPSTGS] [smallint] NOT NULL,
[RCLPSTDT] [datetime] NOT NULL,
[NOFPSTGS] [smallint] NOT NULL,
[CNTRLTRX] [int] NOT NULL,
[CTRLEMPCT] [smallint] NOT NULL,
[APPROVL] [tinyint] NOT NULL,
[APPRVLDT] [datetime] NOT NULL,
[APRVLUSERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR10301] ADD CONSTRAINT [CK__UPR10301__APPRVL__41AE9EFA] CHECK ((datepart(hour,[APPRVLDT])=(0) AND datepart(minute,[APPRVLDT])=(0) AND datepart(second,[APPRVLDT])=(0) AND datepart(millisecond,[APPRVLDT])=(0)))
GO
ALTER TABLE [dbo].[UPR10301] ADD CONSTRAINT [CK__UPR10301__POSTED__42A2C333] CHECK ((datepart(hour,[POSTEDDT])=(0) AND datepart(minute,[POSTEDDT])=(0) AND datepart(second,[POSTEDDT])=(0) AND datepart(millisecond,[POSTEDDT])=(0)))
GO
ALTER TABLE [dbo].[UPR10301] ADD CONSTRAINT [CK__UPR10301__RCLPST__4396E76C] CHECK ((datepart(hour,[RCLPSTDT])=(0) AND datepart(minute,[RCLPSTDT])=(0) AND datepart(second,[RCLPSTDT])=(0) AND datepart(millisecond,[RCLPSTDT])=(0)))
GO
ALTER TABLE [dbo].[UPR10301] ADD CONSTRAINT [PKUPR10301] PRIMARY KEY NONCLUSTERED  ([UPRBCHOR], [BACHNUMB]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2UPR10301] ON [dbo].[UPR10301] ([UPRBCHMK], [MKDBYUSR], [BACHNUMB], [UPRBCHOR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10301].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10301].[UPRBCHOR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10301].[BCHCOMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10301].[UPRBCHFR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR10301].[POSTEDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10301].[UPRBCHMK]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10301].[MKDBYUSR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10301].[MSCBDINC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10301].[RECPSTGS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR10301].[RCLPSTDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10301].[NOFPSTGS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10301].[CNTRLTRX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10301].[CTRLEMPCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10301].[APPROVL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR10301].[APPRVLDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10301].[APRVLUSERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10301].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[UPR10301] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR10301] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR10301] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR10301] TO [DYNGRP]
GO
