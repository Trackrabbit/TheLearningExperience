CREATE TABLE [dbo].[UPR40800]
(
[BENEFIT] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INACTIVE] [tinyint] NOT NULL,
[BNFBEGDT] [datetime] NOT NULL,
[BNFENDDT] [datetime] NOT NULL,
[VARBENFT] [tinyint] NOT NULL,
[BNFTFREQ] [smallint] NOT NULL,
[TAXABLE] [tinyint] NOT NULL,
[SBJTFDTX] [tinyint] NOT NULL,
[SBJTSSEC] [tinyint] NOT NULL,
[SBJTMCAR] [tinyint] NOT NULL,
[SBJTSTTX] [tinyint] NOT NULL,
[SBJTLTAX] [tinyint] NOT NULL,
[SBJTFUTA] [tinyint] NOT NULL,
[SBJTSUTA] [tinyint] NOT NULL,
[FFEDTXRT] [smallint] NOT NULL,
[FLSTTXRT] [smallint] NOT NULL,
[BORCDTYP] [smallint] NOT NULL,
[BSDORCDS] [smallint] NOT NULL,
[BNFTMTHD] [smallint] NOT NULL,
[BNFFRMLA] [smallint] NOT NULL,
[BNFPRCNT_1] [numeric] (19, 5) NOT NULL,
[BNFPRCNT_2] [numeric] (19, 5) NOT NULL,
[BNFPRCNT_3] [numeric] (19, 5) NOT NULL,
[BNFPRCNT_4] [numeric] (19, 5) NOT NULL,
[BNFPRCNT_5] [numeric] (19, 5) NOT NULL,
[BNFITAMT_1] [numeric] (19, 5) NOT NULL,
[BNFITAMT_2] [numeric] (19, 5) NOT NULL,
[BNFITAMT_3] [numeric] (19, 5) NOT NULL,
[BNFITAMT_4] [numeric] (19, 5) NOT NULL,
[BNFITAMT_5] [numeric] (19, 5) NOT NULL,
[BNFTRMAX_1] [numeric] (19, 5) NOT NULL,
[BNFTRMAX_2] [numeric] (19, 5) NOT NULL,
[BNFTRMAX_3] [numeric] (19, 5) NOT NULL,
[BNFTRMAX_4] [numeric] (19, 5) NOT NULL,
[BNFTRMAX_5] [numeric] (19, 5) NOT NULL,
[BNTRMXUN_1] [int] NOT NULL,
[BNTRMXUN_2] [int] NOT NULL,
[BNTRMXUN_3] [int] NOT NULL,
[BNTRMXUN_4] [int] NOT NULL,
[BNTRMXUN_5] [int] NOT NULL,
[BNPAYPMX] [numeric] (19, 5) NOT NULL,
[BNFYRMAX] [numeric] (19, 5) NOT NULL,
[BNFLFMAX] [numeric] (19, 5) NOT NULL,
[W2BXNMBR] [smallint] NOT NULL,
[W2BXLABL] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DATAENTDFLT] [tinyint] NOT NULL,
[EMPLRMAXMAT] [numeric] (19, 5) NOT NULL,
[W2BXNMBR2] [smallint] NOT NULL,
[W2BXLABL2] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[W2BXNMBR3] [smallint] NOT NULL,
[W2BXLABL3] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[W2BXNMBR4] [smallint] NOT NULL,
[W2BXLABL4] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Benefit_Fiscal_Max] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR40800] ADD CONSTRAINT [CK__UPR40800__BNFBEG__0FE2393C] CHECK ((datepart(hour,[BNFBEGDT])=(0) AND datepart(minute,[BNFBEGDT])=(0) AND datepart(second,[BNFBEGDT])=(0) AND datepart(millisecond,[BNFBEGDT])=(0)))
GO
ALTER TABLE [dbo].[UPR40800] ADD CONSTRAINT [CK__UPR40800__BNFEND__10D65D75] CHECK ((datepart(hour,[BNFENDDT])=(0) AND datepart(minute,[BNFENDDT])=(0) AND datepart(second,[BNFENDDT])=(0) AND datepart(millisecond,[BNFENDDT])=(0)))
GO
ALTER TABLE [dbo].[UPR40800] ADD CONSTRAINT [PKUPR40800] PRIMARY KEY NONCLUSTERED  ([BENEFIT]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2UPR40800] ON [dbo].[UPR40800] ([DSCRIPTN], [BENEFIT]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3UPR40800] ON [dbo].[UPR40800] ([TAXABLE], [BENEFIT]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4UPR40800] ON [dbo].[UPR40800] ([VARBENFT], [BENEFIT]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR40800].[BENEFIT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR40800].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40800].[INACTIVE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR40800].[BNFBEGDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR40800].[BNFENDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40800].[VARBENFT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40800].[BNFTFREQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40800].[TAXABLE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40800].[SBJTFDTX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40800].[SBJTSSEC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40800].[SBJTMCAR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40800].[SBJTSTTX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40800].[SBJTLTAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40800].[SBJTFUTA]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40800].[SBJTSUTA]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40800].[FFEDTXRT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40800].[FLSTTXRT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40800].[BORCDTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40800].[BSDORCDS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40800].[BNFTMTHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40800].[BNFFRMLA]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR40800].[BNFPRCNT_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR40800].[BNFPRCNT_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR40800].[BNFPRCNT_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR40800].[BNFPRCNT_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR40800].[BNFPRCNT_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR40800].[BNFITAMT_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR40800].[BNFITAMT_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR40800].[BNFITAMT_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR40800].[BNFITAMT_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR40800].[BNFITAMT_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR40800].[BNFTRMAX_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR40800].[BNFTRMAX_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR40800].[BNFTRMAX_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR40800].[BNFTRMAX_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR40800].[BNFTRMAX_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40800].[BNTRMXUN_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40800].[BNTRMXUN_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40800].[BNTRMXUN_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40800].[BNTRMXUN_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40800].[BNTRMXUN_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR40800].[BNPAYPMX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR40800].[BNFYRMAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR40800].[BNFLFMAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40800].[W2BXNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR40800].[W2BXLABL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR40800].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40800].[DATAENTDFLT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR40800].[EMPLRMAXMAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40800].[W2BXNMBR2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR40800].[W2BXLABL2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40800].[W2BXNMBR3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR40800].[W2BXLABL3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40800].[W2BXNMBR4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR40800].[W2BXLABL4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR40800].[Benefit_Fiscal_Max]'
GO
GRANT SELECT ON  [dbo].[UPR40800] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR40800] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR40800] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR40800] TO [DYNGRP]
GO
