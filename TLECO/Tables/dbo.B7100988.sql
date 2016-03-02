CREATE TABLE [dbo].[B7100988]
(
[INTERID] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DECPLACS] [smallint] NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[ICExchangeRateInfo_1] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ICExchangeRateInfo_2] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ICExchangeRateInfo_3] [smallint] NOT NULL,
[ICExchangeRateInfo_4] [smallint] NOT NULL,
[ICExchangeRateInfo_5] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ICExchangeRateInfo_6] [numeric] (19, 7) NOT NULL,
[ICExchangeRateInfo_7] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ICExchangeRateInfo_8] [datetime] NOT NULL,
[ICExchangeRateInfo_9] [datetime] NOT NULL,
[ICExchangeRateInfo_10] [smallint] NOT NULL,
[ICExchangeRateInfo_11] [smallint] NOT NULL,
[ICExchangeRateInfo_12] [datetime] NOT NULL,
[ICExchangeRateInfo_13] [numeric] (19, 7) NOT NULL,
[ICExchangeRateInfo_14] [smallint] NOT NULL,
[LNESTAT] [smallint] NOT NULL,
[ACTNUMBR_1] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTNUMBR_2] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTNUMBR_3] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTNUMBR_4] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTINDX] [int] NOT NULL,
[ACCTTYPE] [smallint] NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEBITAMT] [numeric] (19, 5) NOT NULL,
[CRDTAMNT] [numeric] (19, 5) NOT NULL,
[ORDBTAMT] [numeric] (19, 5) NOT NULL,
[ORCRDAMT] [numeric] (19, 5) NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B7100988] ADD CONSTRAINT [CK__B7100988__ICExch__5765DA5D] CHECK ((datepart(day,[ICExchangeRateInfo_9])=(1) AND datepart(month,[ICExchangeRateInfo_9])=(1) AND datepart(year,[ICExchangeRateInfo_9])=(1900)))
GO
ALTER TABLE [dbo].[B7100988] ADD CONSTRAINT [CK__B7100988__ICExch__5859FE96] CHECK ((datepart(hour,[ICExchangeRateInfo_12])=(0) AND datepart(minute,[ICExchangeRateInfo_12])=(0) AND datepart(second,[ICExchangeRateInfo_12])=(0) AND datepart(millisecond,[ICExchangeRateInfo_12])=(0)))
GO
ALTER TABLE [dbo].[B7100988] ADD CONSTRAINT [CK__B7100988__ICExch__5671B624] CHECK ((datepart(hour,[ICExchangeRateInfo_8])=(0) AND datepart(minute,[ICExchangeRateInfo_8])=(0) AND datepart(second,[ICExchangeRateInfo_8])=(0) AND datepart(millisecond,[ICExchangeRateInfo_8])=(0)))
GO
ALTER TABLE [dbo].[B7100988] ADD CONSTRAINT [PKB7100988] PRIMARY KEY NONCLUSTERED  ([SEQNUMBR], [USERID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100988].[INTERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100988].[DECPLACS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100988].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100988].[ICExchangeRateInfo_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100988].[ICExchangeRateInfo_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100988].[ICExchangeRateInfo_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100988].[ICExchangeRateInfo_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100988].[ICExchangeRateInfo_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7100988].[ICExchangeRateInfo_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100988].[ICExchangeRateInfo_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B7100988].[ICExchangeRateInfo_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B7100988].[ICExchangeRateInfo_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100988].[ICExchangeRateInfo_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100988].[ICExchangeRateInfo_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B7100988].[ICExchangeRateInfo_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7100988].[ICExchangeRateInfo_13]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100988].[ICExchangeRateInfo_14]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100988].[LNESTAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100988].[ACTNUMBR_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100988].[ACTNUMBR_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100988].[ACTNUMBR_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100988].[ACTNUMBR_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100988].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100988].[ACCTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100988].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7100988].[DEBITAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7100988].[CRDTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7100988].[ORDBTAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7100988].[ORCRDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100988].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100988].[USERID]'
GO
GRANT SELECT ON  [dbo].[B7100988] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B7100988] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B7100988] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B7100988] TO [DYNGRP]
GO
