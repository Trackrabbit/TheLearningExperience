CREATE TABLE [dbo].[UPR00500]
(
[EMPLOYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEDUCTON] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INACTIVE] [tinyint] NOT NULL,
[DEDBEGDT] [datetime] NOT NULL,
[DEDENDDT] [datetime] NOT NULL,
[VARDEDTN] [tinyint] NOT NULL,
[DEDNFREQ] [smallint] NOT NULL,
[TXSHANTY] [tinyint] NOT NULL,
[SFRFEDTX] [tinyint] NOT NULL,
[SHFRFICA] [tinyint] NOT NULL,
[SHFRSTTX] [tinyint] NOT NULL,
[SFRLCLTX] [tinyint] NOT NULL,
[BSDORCDS] [smallint] NOT NULL,
[DEDNMTHD] [smallint] NOT NULL,
[DEDFRMLA] [smallint] NOT NULL,
[DEDNPRCT_1] [numeric] (19, 5) NOT NULL,
[DEDNPRCT_2] [numeric] (19, 5) NOT NULL,
[DEDNPRCT_3] [numeric] (19, 5) NOT NULL,
[DEDNPRCT_4] [numeric] (19, 5) NOT NULL,
[DEDNPRCT_5] [numeric] (19, 5) NOT NULL,
[DEDCAMNT_1] [numeric] (19, 5) NOT NULL,
[DEDCAMNT_2] [numeric] (19, 5) NOT NULL,
[DEDCAMNT_3] [numeric] (19, 5) NOT NULL,
[DEDCAMNT_4] [numeric] (19, 5) NOT NULL,
[DEDCAMNT_5] [numeric] (19, 5) NOT NULL,
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
[DEPYPRMX] [numeric] (19, 5) NOT NULL,
[DEDYRMAX] [numeric] (19, 5) NOT NULL,
[DEDLTMAX] [numeric] (19, 5) NOT NULL,
[W2BXNMBR] [smallint] NOT NULL,
[W2BXLABL] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LTDDEDTN] [numeric] (19, 5) NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[NOTEINDX2] [numeric] (19, 5) NOT NULL,
[DATAENTDFLT] [tinyint] NOT NULL,
[EARNINGSCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COURTDATE] [datetime] NOT NULL,
[COURTNAME] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCDESCR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORIGINALAMOUNT] [numeric] (19, 5) NOT NULL,
[AMNTTAKEN] [numeric] (19, 5) NOT NULL,
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FEDMAXDED] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STATEMAXDED] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[W2BXNMBR2] [smallint] NOT NULL,
[W2BXLABL2] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[W2BXNMBR3] [smallint] NOT NULL,
[W2BXLABL3] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[W2BXNMBR4] [smallint] NOT NULL,
[W2BXLABL4] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Deduction_Fiscal_Yr_Max] [numeric] (19, 5) NOT NULL,
[SHFRFICAMED] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR00500] ADD CONSTRAINT [CK__UPR00500__COURTD__615C547D] CHECK ((datepart(hour,[COURTDATE])=(0) AND datepart(minute,[COURTDATE])=(0) AND datepart(second,[COURTDATE])=(0) AND datepart(millisecond,[COURTDATE])=(0)))
GO
ALTER TABLE [dbo].[UPR00500] ADD CONSTRAINT [CK__UPR00500__DEDBEG__625078B6] CHECK ((datepart(hour,[DEDBEGDT])=(0) AND datepart(minute,[DEDBEGDT])=(0) AND datepart(second,[DEDBEGDT])=(0) AND datepart(millisecond,[DEDBEGDT])=(0)))
GO
ALTER TABLE [dbo].[UPR00500] ADD CONSTRAINT [CK__UPR00500__DEDEND__63449CEF] CHECK ((datepart(hour,[DEDENDDT])=(0) AND datepart(minute,[DEDENDDT])=(0) AND datepart(second,[DEDENDDT])=(0) AND datepart(millisecond,[DEDENDDT])=(0)))
GO
ALTER TABLE [dbo].[UPR00500] ADD CONSTRAINT [PKUPR00500] PRIMARY KEY NONCLUSTERED  ([EMPLOYID], [DEDUCTON]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2UPR00500] ON [dbo].[UPR00500] ([DEDUCTON], [EMPLOYID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3UPR00500] ON [dbo].[UPR00500] ([EMPLOYID], [VARDEDTN], [DEDUCTON]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4UPR00500] ON [dbo].[UPR00500] ([EMPLOYID], [W2BXNMBR], [W2BXLABL], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00500].[EMPLOYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00500].[DEDUCTON]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00500].[INACTIVE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR00500].[DEDBEGDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR00500].[DEDENDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00500].[VARDEDTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00500].[DEDNFREQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00500].[TXSHANTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00500].[SFRFEDTX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00500].[SHFRFICA]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00500].[SHFRSTTX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00500].[SFRLCLTX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00500].[BSDORCDS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00500].[DEDNMTHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00500].[DEDFRMLA]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00500].[DEDNPRCT_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00500].[DEDNPRCT_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00500].[DEDNPRCT_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00500].[DEDNPRCT_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00500].[DEDNPRCT_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00500].[DEDCAMNT_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00500].[DEDCAMNT_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00500].[DEDCAMNT_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00500].[DEDCAMNT_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00500].[DEDCAMNT_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00500].[DEDTRMAX_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00500].[DEDTRMAX_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00500].[DEDTRMAX_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00500].[DEDTRMAX_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00500].[DEDTRMAX_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00500].[DETRMXUN_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00500].[DETRMXUN_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00500].[DETRMXUN_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00500].[DETRMXUN_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00500].[DETRMXUN_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00500].[DEPYPRMX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00500].[DEDYRMAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00500].[DEDLTMAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00500].[W2BXNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00500].[W2BXLABL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00500].[LTDDEDTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00500].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00500].[NOTEINDX2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00500].[DATAENTDFLT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00500].[EARNINGSCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR00500].[COURTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00500].[COURTNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00500].[DOCDESCR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00500].[ORIGINALAMOUNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00500].[AMNTTAKEN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00500].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00500].[FEDMAXDED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00500].[STATEMAXDED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00500].[W2BXNMBR2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00500].[W2BXLABL2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00500].[W2BXNMBR3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00500].[W2BXLABL3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00500].[W2BXNMBR4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00500].[W2BXLABL4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00500].[Deduction_Fiscal_Yr_Max]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00500].[SHFRFICAMED]'
GO
GRANT SELECT ON  [dbo].[UPR00500] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR00500] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR00500] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR00500] TO [DYNGRP]
GO
