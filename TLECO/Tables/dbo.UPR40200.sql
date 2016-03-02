CREATE TABLE [dbo].[UPR40200]
(
[SETUPKEY] [smallint] NOT NULL,
[AUTOVRTM] [tinyint] NOT NULL,
[REGHRSRQ] [int] NOT NULL,
[LSFUTADT] [datetime] NOT NULL,
[LSSUTADT] [datetime] NOT NULL,
[LSWCMPDT] [datetime] NOT NULL,
[USRDFPR1] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDRPR2] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COMPCHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MLCHBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UPRNPNUM] [int] NOT NULL,
[UPRNANUM] [int] NOT NULL,
[NXCTRNUM] [int] NOT NULL,
[NXMTRNUM] [int] NOT NULL,
[KPYCHKHS] [tinyint] NOT NULL,
[KPPTRHST] [tinyint] NOT NULL,
[KPYGLDST] [tinyint] NOT NULL,
[EDFINFLD] [tinyint] NOT NULL,
[DSPYRTRX] [tinyint] NOT NULL,
[CalcTipAlloc] [tinyint] NOT NULL,
[TipAllocRate] [numeric] (19, 5) NOT NULL,
[TRKDYWKD] [tinyint] NOT NULL,
[TRKWKWKD] [tinyint] NOT NULL,
[PAYRTDEC] [smallint] NOT NULL,
[DEDTNDEC] [smallint] NOT NULL,
[BNFTDCML] [smallint] NOT NULL,
[CHKFRMAT] [smallint] NOT NULL,
[SCKTMAVLPWD] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VCTAVLPWD] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Benefit_YTD_Amts] [tinyint] NOT NULL,
[Deduction_YTD_Amts] [tinyint] NOT NULL,
[Local_Taxes_YTD_Amts] [tinyint] NOT NULL,
[Pay_Code_YTD_Amts] [tinyint] NOT NULL,
[State_Taxes_YTD_Amts] [tinyint] NOT NULL,
[PYFTRDEC] [smallint] NOT NULL,
[Enable_Fiscal_Tracking] [tinyint] NOT NULL,
[Check_Print_Default] [smallint] NOT NULL,
[VIEWMULTDIR] [tinyint] NOT NULL,
[INCINEMP] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR40200] ADD CONSTRAINT [CK__UPR40200__LSFUTA__150712D6] CHECK ((datepart(hour,[LSFUTADT])=(0) AND datepart(minute,[LSFUTADT])=(0) AND datepart(second,[LSFUTADT])=(0) AND datepart(millisecond,[LSFUTADT])=(0)))
GO
ALTER TABLE [dbo].[UPR40200] ADD CONSTRAINT [CK__UPR40200__LSSUTA__15FB370F] CHECK ((datepart(hour,[LSSUTADT])=(0) AND datepart(minute,[LSSUTADT])=(0) AND datepart(second,[LSSUTADT])=(0) AND datepart(millisecond,[LSSUTADT])=(0)))
GO
ALTER TABLE [dbo].[UPR40200] ADD CONSTRAINT [CK__UPR40200__LSWCMP__16EF5B48] CHECK ((datepart(hour,[LSWCMPDT])=(0) AND datepart(minute,[LSWCMPDT])=(0) AND datepart(second,[LSWCMPDT])=(0) AND datepart(millisecond,[LSWCMPDT])=(0)))
GO
ALTER TABLE [dbo].[UPR40200] ADD CONSTRAINT [PKUPR40200] PRIMARY KEY NONCLUSTERED  ([SETUPKEY]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40200].[SETUPKEY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40200].[AUTOVRTM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40200].[REGHRSRQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR40200].[LSFUTADT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR40200].[LSSUTADT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR40200].[LSWCMPDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR40200].[USRDFPR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR40200].[USRDRPR2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR40200].[COMPCHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR40200].[MLCHBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40200].[UPRNPNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40200].[UPRNANUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40200].[NXCTRNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40200].[NXMTRNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40200].[KPYCHKHS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40200].[KPPTRHST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40200].[KPYGLDST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40200].[EDFINFLD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40200].[DSPYRTRX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40200].[CalcTipAlloc]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR40200].[TipAllocRate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40200].[TRKDYWKD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40200].[TRKWKWKD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40200].[PAYRTDEC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40200].[DEDTNDEC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40200].[BNFTDCML]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40200].[CHKFRMAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR40200].[SCKTMAVLPWD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR40200].[VCTAVLPWD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40200].[Benefit_YTD_Amts]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40200].[Deduction_YTD_Amts]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40200].[Local_Taxes_YTD_Amts]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40200].[Pay_Code_YTD_Amts]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40200].[State_Taxes_YTD_Amts]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40200].[PYFTRDEC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40200].[Enable_Fiscal_Tracking]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40200].[Check_Print_Default]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40200].[VIEWMULTDIR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40200].[INCINEMP]'
GO
GRANT SELECT ON  [dbo].[UPR40200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR40200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR40200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR40200] TO [DYNGRP]
GO
