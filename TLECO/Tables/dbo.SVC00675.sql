CREATE TABLE [dbo].[SVC00675]
(
[CONSTS] [smallint] NOT NULL,
[CONTNBR] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
[CNTTYPE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[ENDDATE] [datetime] NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SERLNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EQUIPID] [int] NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[QUANTITY] [numeric] (19, 5) NOT NULL,
[Effective_Date] [datetime] NOT NULL,
[CMXFRNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[To_Customer_Number] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADRSCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRICSHED] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CNTPRCOVR] [tinyint] NOT NULL,
[TOTAL] [numeric] (19, 5) NOT NULL,
[SVC_Monthly_Price] [numeric] (19, 5) NOT NULL,
[DEDCAMNT_1] [numeric] (19, 5) NOT NULL,
[DEDCAMNT_2] [numeric] (19, 5) NOT NULL,
[DEDCAMNT_3] [numeric] (19, 5) NOT NULL,
[DEDCAMNT_4] [numeric] (19, 5) NOT NULL,
[DEDCAMNT_5] [numeric] (19, 5) NOT NULL,
[RETNAGAM] [numeric] (19, 5) NOT NULL,
[RTNBILLD] [numeric] (19, 5) NOT NULL,
[NBRCAL] [smallint] NOT NULL,
[ACTCAL] [smallint] NOT NULL,
[BLKTIM] [numeric] (19, 5) NOT NULL,
[VALTIM] [numeric] (19, 5) NOT NULL,
[MKDTOPST] [tinyint] NOT NULL,
[POSTDATE] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC00675] ADD CONSTRAINT [CK__SVC00675__Effect__74E42A3D] CHECK ((datepart(hour,[Effective_Date])=(0) AND datepart(minute,[Effective_Date])=(0) AND datepart(second,[Effective_Date])=(0) AND datepart(millisecond,[Effective_Date])=(0)))
GO
ALTER TABLE [dbo].[SVC00675] ADD CONSTRAINT [CK__SVC00675__ENDDAT__73F00604] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC00675] ADD CONSTRAINT [CK__SVC00675__POSTDA__75D84E76] CHECK ((datepart(hour,[POSTDATE])=(0) AND datepart(minute,[POSTDATE])=(0) AND datepart(second,[POSTDATE])=(0) AND datepart(millisecond,[POSTDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC00675] ADD CONSTRAINT [CK__SVC00675__STRTDA__76CC72AF] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC00675] ADD CONSTRAINT [PKSVC00675] PRIMARY KEY NONCLUSTERED  ([CONSTS], [CONTNBR], [LNSEQNBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC00675] ON [dbo].[SVC00675] ([MKDTOPST], [CMXFRNUM], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SVC00675] ON [dbo].[SVC00675] ([MKDTOPST], [CONSTS], [CONTNBR], [LNSEQNBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00675].[CONSTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00675].[CONTNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00675].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00675].[CNTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00675].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00675].[ENDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00675].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00675].[SERLNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00675].[EQUIPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00675].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00675].[QUANTITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00675].[Effective_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00675].[CMXFRNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00675].[To_Customer_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00675].[ADRSCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00675].[PRICSHED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00675].[CNTPRCOVR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00675].[TOTAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00675].[SVC_Monthly_Price]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00675].[DEDCAMNT_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00675].[DEDCAMNT_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00675].[DEDCAMNT_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00675].[DEDCAMNT_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00675].[DEDCAMNT_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00675].[RETNAGAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00675].[RTNBILLD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00675].[NBRCAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00675].[ACTCAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00675].[BLKTIM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00675].[VALTIM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00675].[MKDTOPST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00675].[POSTDATE]'
GO
GRANT SELECT ON  [dbo].[SVC00675] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00675] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00675] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00675] TO [DYNGRP]
GO
