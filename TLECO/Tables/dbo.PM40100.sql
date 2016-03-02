CREATE TABLE [dbo].[PM40100]
(
[UNIQKEY] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADUPINNM] [smallint] NOT NULL,
[OVVCHNUM] [tinyint] NOT NULL,
[TRKDISAV] [tinyint] NOT NULL,
[PRTHATRB] [tinyint] NOT NULL,
[AGEBY] [smallint] NOT NULL,
[APPLYBY] [smallint] NOT NULL,
[RMVNDHPW] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RMVTRHPW] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XCDMINPW] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WROFPSWD] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NTVCHNUM] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PMNPYNBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NXTVNDID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDFPR1] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDRPR2] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PMTRXDSC_1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PMTRXDSC_2] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PMTRXDSC_3] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PMTRXDSC_4] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PMTRXDSC_5] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PMTRXDSC_6] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PMTRXDSC_7] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PMTRXDSC_8] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PMTRXABR_1] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PMTRXABR_2] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PMTRXABR_3] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PMTRXABR_4] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PMTRXABR_5] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PMTRXABR_6] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PMTRXABR_7] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PMTRXABR_8] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHEKBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PCHSCHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FRTSCHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSCSCHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LSTYECAL] [datetime] NOT NULL,
[LSTYEFSC] [datetime] NOT NULL,
[Check_Format_Default] [smallint] NOT NULL,
[Check_Stub_Default] [smallint] NOT NULL,
[PRNTPRVSLYAPPLDDCS] [tinyint] NOT NULL,
[DelUPDoc] [tinyint] NOT NULL,
[PrntTaxDetDoc] [tinyint] NOT NULL,
[DateSensitivitySumView] [smallint] NOT NULL,
[PRNTDCUR] [tinyint] NOT NULL,
[AGEUNAPPLDCR] [tinyint] NOT NULL,
[PMNXTSCHDNBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ExcludeExprdDiscntsPymnt] [tinyint] NOT NULL,
[PMDefaultCheckSort] [smallint] NOT NULL,
[WarnIfVenHasExistingPO] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PM40100] ADD CONSTRAINT [CK__PM40100__LSTYECA__18F4A3B9] CHECK ((datepart(hour,[LSTYECAL])=(0) AND datepart(minute,[LSTYECAL])=(0) AND datepart(second,[LSTYECAL])=(0) AND datepart(millisecond,[LSTYECAL])=(0)))
GO
ALTER TABLE [dbo].[PM40100] ADD CONSTRAINT [CK__PM40100__LSTYEFS__19E8C7F2] CHECK ((datepart(hour,[LSTYEFSC])=(0) AND datepart(minute,[LSTYEFSC])=(0) AND datepart(second,[LSTYEFSC])=(0) AND datepart(millisecond,[LSTYEFSC])=(0)))
GO
ALTER TABLE [dbo].[PM40100] ADD CONSTRAINT [PKPM40100] PRIMARY KEY NONCLUSTERED  ([UNIQKEY]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM40100].[UNIQKEY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM40100].[ADUPINNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM40100].[OVVCHNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM40100].[TRKDISAV]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM40100].[PRTHATRB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM40100].[AGEBY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM40100].[APPLYBY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM40100].[RMVNDHPW]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM40100].[RMVTRHPW]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM40100].[XCDMINPW]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM40100].[WROFPSWD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM40100].[NTVCHNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM40100].[PMNPYNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM40100].[NXTVNDID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM40100].[USRDFPR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM40100].[USRDRPR2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM40100].[PMTRXDSC_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM40100].[PMTRXDSC_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM40100].[PMTRXDSC_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM40100].[PMTRXDSC_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM40100].[PMTRXDSC_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM40100].[PMTRXDSC_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM40100].[PMTRXDSC_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM40100].[PMTRXDSC_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM40100].[PMTRXABR_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM40100].[PMTRXABR_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM40100].[PMTRXABR_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM40100].[PMTRXABR_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM40100].[PMTRXABR_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM40100].[PMTRXABR_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM40100].[PMTRXABR_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM40100].[PMTRXABR_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM40100].[CHEKBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM40100].[PCHSCHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM40100].[FRTSCHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM40100].[MSCSCHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM40100].[LSTYECAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM40100].[LSTYEFSC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM40100].[Check_Format_Default]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM40100].[Check_Stub_Default]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM40100].[PRNTPRVSLYAPPLDDCS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM40100].[DelUPDoc]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM40100].[PrntTaxDetDoc]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM40100].[DateSensitivitySumView]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM40100].[PRNTDCUR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM40100].[AGEUNAPPLDCR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM40100].[PMNXTSCHDNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM40100].[ExcludeExprdDiscntsPymnt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM40100].[PMDefaultCheckSort]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM40100].[WarnIfVenHasExistingPO]'
GO
GRANT SELECT ON  [dbo].[PM40100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PM40100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PM40100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PM40100] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[PM40100] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[PM40100] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[PM40100] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[PM40100] TO [RAPIDGRP]
GO
GRANT SELECT ON  [dbo].[PM40100] TO [rpt_executive]
GO
