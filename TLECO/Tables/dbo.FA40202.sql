CREATE TABLE [dbo].[FA40202]
(
[BOOKCLASSINDX] [int] NOT NULL,
[BOOKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ASSETCLASSID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFFECTDATEBEGIN] [datetime] NOT NULL,
[EFFECTDATEEND] [datetime] NOT NULL,
[DEPRECIATIONMETHOD] [smallint] NOT NULL,
[AVERAGINGCONV] [smallint] NOT NULL,
[AMORTIZATIONCODE] [smallint] NOT NULL,
[AMORTIZATIONAMOUNT] [numeric] (19, 5) NOT NULL,
[ORIGINALLIFEYEARS] [smallint] NOT NULL,
[ORIGINALLIFEDAYS] [smallint] NOT NULL,
[SWITCHOVER] [smallint] NOT NULL,
[SALVAGEEST] [tinyint] NOT NULL,
[SALVAGEPCT] [smallint] NOT NULL,
[TEFRAFLAG] [smallint] NOT NULL,
[LUXAUTOIND] [smallint] NOT NULL,
[Initial_Allowance_Perc] [smallint] NOT NULL,
[SPECDEPRALLOW] [smallint] NOT NULL,
[SPECDEPRALLOWPCT] [smallint] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[LASTMNTDDATE] [datetime] NOT NULL,
[LASTMNTDTIME] [datetime] NOT NULL,
[LASTMNTDUSERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LUXVANTRUCK] [tinyint] NOT NULL,
[LUXELAUTO] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FA40202] ADD CONSTRAINT [CK__FA40202__LASTMNT__19018F22] CHECK ((datepart(day,[LASTMNTDTIME])=(1) AND datepart(month,[LASTMNTDTIME])=(1) AND datepart(year,[LASTMNTDTIME])=(1900)))
GO
ALTER TABLE [dbo].[FA40202] ADD CONSTRAINT [CK__FA40202__EFFECTD__16252277] CHECK ((datepart(hour,[EFFECTDATEBEGIN])=(0) AND datepart(minute,[EFFECTDATEBEGIN])=(0) AND datepart(second,[EFFECTDATEBEGIN])=(0) AND datepart(millisecond,[EFFECTDATEBEGIN])=(0)))
GO
ALTER TABLE [dbo].[FA40202] ADD CONSTRAINT [CK__FA40202__EFFECTD__171946B0] CHECK ((datepart(hour,[EFFECTDATEEND])=(0) AND datepart(minute,[EFFECTDATEEND])=(0) AND datepart(second,[EFFECTDATEEND])=(0) AND datepart(millisecond,[EFFECTDATEEND])=(0)))
GO
ALTER TABLE [dbo].[FA40202] ADD CONSTRAINT [CK__FA40202__LASTMNT__180D6AE9] CHECK ((datepart(hour,[LASTMNTDDATE])=(0) AND datepart(minute,[LASTMNTDDATE])=(0) AND datepart(second,[LASTMNTDDATE])=(0) AND datepart(millisecond,[LASTMNTDDATE])=(0)))
GO
ALTER TABLE [dbo].[FA40202] ADD CONSTRAINT [PKFA40202] PRIMARY KEY CLUSTERED  ([BOOKCLASSINDX]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3FA40202] ON [dbo].[FA40202] ([ASSETCLASSID], [BOOKID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2FA40202] ON [dbo].[FA40202] ([BOOKID], [ASSETCLASSID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA40202].[BOOKCLASSINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA40202].[BOOKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA40202].[ASSETCLASSID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA40202].[EFFECTDATEBEGIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA40202].[EFFECTDATEEND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA40202].[DEPRECIATIONMETHOD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA40202].[AVERAGINGCONV]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA40202].[AMORTIZATIONCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA40202].[AMORTIZATIONAMOUNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA40202].[ORIGINALLIFEYEARS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA40202].[ORIGINALLIFEDAYS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA40202].[SWITCHOVER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA40202].[SALVAGEEST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA40202].[SALVAGEPCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA40202].[TEFRAFLAG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA40202].[LUXAUTOIND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA40202].[Initial_Allowance_Perc]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA40202].[SPECDEPRALLOW]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA40202].[SPECDEPRALLOWPCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA40202].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA40202].[LASTMNTDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA40202].[LASTMNTDTIME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA40202].[LASTMNTDUSERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA40202].[LUXVANTRUCK]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA40202].[LUXELAUTO]'
GO
GRANT SELECT ON  [dbo].[FA40202] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[FA40202] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[FA40202] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[FA40202] TO [DYNGRP]
GO
