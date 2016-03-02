CREATE TABLE [dbo].[UPR40900]
(
[DEDUCTON] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
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
[DEDCAMNT_1] [numeric] (19, 5) NOT NULL,
[DEDCAMNT_2] [numeric] (19, 5) NOT NULL,
[DEDCAMNT_3] [numeric] (19, 5) NOT NULL,
[DEDCAMNT_4] [numeric] (19, 5) NOT NULL,
[DEDCAMNT_5] [numeric] (19, 5) NOT NULL,
[DEDNPRCT_1] [numeric] (19, 5) NOT NULL,
[DEDNPRCT_2] [numeric] (19, 5) NOT NULL,
[DEDNPRCT_3] [numeric] (19, 5) NOT NULL,
[DEDNPRCT_4] [numeric] (19, 5) NOT NULL,
[DEDNPRCT_5] [numeric] (19, 5) NOT NULL,
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
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DATAENTDFLT] [tinyint] NOT NULL,
[DEDTYPE] [smallint] NOT NULL,
[GARNCAT] [smallint] NOT NULL,
[EARNINGSCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
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
ALTER TABLE [dbo].[UPR40900] ADD CONSTRAINT [CK__UPR40900__DEDBEG__159B1292] CHECK ((datepart(hour,[DEDBEGDT])=(0) AND datepart(minute,[DEDBEGDT])=(0) AND datepart(second,[DEDBEGDT])=(0) AND datepart(millisecond,[DEDBEGDT])=(0)))
GO
ALTER TABLE [dbo].[UPR40900] ADD CONSTRAINT [CK__UPR40900__DEDEND__168F36CB] CHECK ((datepart(hour,[DEDENDDT])=(0) AND datepart(minute,[DEDENDDT])=(0) AND datepart(second,[DEDENDDT])=(0) AND datepart(millisecond,[DEDENDDT])=(0)))
GO
ALTER TABLE [dbo].[UPR40900] ADD CONSTRAINT [PKUPR40900] PRIMARY KEY NONCLUSTERED  ([DEDUCTON]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2UPR40900] ON [dbo].[UPR40900] ([DSCRIPTN], [DEDUCTON]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3UPR40900] ON [dbo].[UPR40900] ([VARDEDTN], [DEDUCTON]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR40900].[DEDUCTON]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR40900].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40900].[INACTIVE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR40900].[DEDBEGDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR40900].[DEDENDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40900].[VARDEDTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40900].[DEDNFREQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40900].[TXSHANTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40900].[SFRFEDTX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40900].[SHFRFICA]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40900].[SHFRSTTX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40900].[SFRLCLTX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40900].[BSDORCDS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40900].[DEDNMTHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40900].[DEDFRMLA]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR40900].[DEDCAMNT_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR40900].[DEDCAMNT_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR40900].[DEDCAMNT_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR40900].[DEDCAMNT_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR40900].[DEDCAMNT_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR40900].[DEDNPRCT_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR40900].[DEDNPRCT_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR40900].[DEDNPRCT_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR40900].[DEDNPRCT_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR40900].[DEDNPRCT_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR40900].[DEDTRMAX_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR40900].[DEDTRMAX_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR40900].[DEDTRMAX_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR40900].[DEDTRMAX_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR40900].[DEDTRMAX_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40900].[DETRMXUN_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40900].[DETRMXUN_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40900].[DETRMXUN_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40900].[DETRMXUN_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40900].[DETRMXUN_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR40900].[DEPYPRMX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR40900].[DEDYRMAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR40900].[DEDLTMAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40900].[W2BXNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR40900].[W2BXLABL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR40900].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40900].[DATAENTDFLT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40900].[DEDTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40900].[GARNCAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR40900].[EARNINGSCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40900].[W2BXNMBR2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR40900].[W2BXLABL2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40900].[W2BXNMBR3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR40900].[W2BXLABL3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40900].[W2BXNMBR4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR40900].[W2BXLABL4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR40900].[Deduction_Fiscal_Yr_Max]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40900].[SHFRFICAMED]'
GO
GRANT SELECT ON  [dbo].[UPR40900] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR40900] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR40900] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR40900] TO [DYNGRP]
GO
