CREATE TABLE [dbo].[RM40101]
(
[SETUPKEY] [smallint] NOT NULL,
[AGEBY] [smallint] NOT NULL,
[AGPEREND_1] [smallint] NOT NULL,
[AGPEREND_2] [smallint] NOT NULL,
[AGPEREND_3] [smallint] NOT NULL,
[AGPEREND_4] [smallint] NOT NULL,
[AGPEREND_5] [smallint] NOT NULL,
[AGPEREND_6] [smallint] NOT NULL,
[AGPEREND_7] [smallint] NOT NULL,
[AGPERUSD] [smallint] NOT NULL,
[CRLMPSWD] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUSTHPWD] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WRTFPSWD] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WVFCHPWD] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRTHATRB] [tinyint] NOT NULL,
[CPDFINCH] [tinyint] NOT NULL,
[RMTRKDAV] [tinyint] NOT NULL,
[RMPCAIPD] [tinyint] NOT NULL,
[NSFCHDEF] [numeric] (19, 5) NOT NULL,
[APLBYDEF] [smallint] NOT NULL,
[LDFNCHGD] [datetime] NOT NULL,
[LDSTPRTD] [datetime] NOT NULL,
[LDBLFAGD] [datetime] NOT NULL,
[LDOITAGD] [datetime] NOT NULL,
[LDPTRRMV] [datetime] NOT NULL,
[LSTYECAL] [datetime] NOT NULL,
[LSTYEFSC] [datetime] NOT NULL,
[USRDFPR1] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDRPR2] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FRTSCHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SLSCHDID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSCSCHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHEKBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SALESCB] [tinyint] NOT NULL,
[DISCNTCB] [tinyint] NOT NULL,
[FREIGHT] [tinyint] NOT NULL,
[MISC] [tinyint] NOT NULL,
[TAX] [tinyint] NOT NULL,
[RMVDSTTY_1] [binary] (4) NOT NULL,
[RMVDSTTY_2] [binary] (4) NOT NULL,
[RMVDSTTY_3] [binary] (4) NOT NULL,
[RMVDSTTY_4] [binary] (4) NOT NULL,
[RMVDSTTY_5] [binary] (4) NOT NULL,
[RMVDSTTY_6] [binary] (4) NOT NULL,
[RMVDSTTY_7] [binary] (4) NOT NULL,
[RMVDSTTY_8] [binary] (4) NOT NULL,
[RMVDSTTY_9] [binary] (4) NOT NULL,
[LDCMTRNS] [datetime] NOT NULL,
[PRCLEVEL] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RMDFTyp] [smallint] NOT NULL,
[DelUPDoc] [tinyint] NOT NULL,
[PrntTaxDetDoc] [tinyint] NOT NULL,
[RPRNTSTTMNTS] [tinyint] NOT NULL,
[ATAPPLFNNCCHRGSFRST] [tinyint] NOT NULL,
[EmailStmtStatusRecipient] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DateSensitivitySumView] [smallint] NOT NULL,
[PRNTDCUR] [tinyint] NOT NULL,
[AGEUNAPPLDCR] [tinyint] NOT NULL,
[WriteoffCreditMemoNumber] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WriteoffDebitMemoNumber] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDRPR3] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDRPR4] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DisplayOverCreditIcon] [tinyint] NOT NULL,
[DisplayOverCreditWarning] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RM40101] ADD CONSTRAINT [CK__RM40101__LDBLFAG__64D5E135] CHECK ((datepart(hour,[LDBLFAGD])=(0) AND datepart(minute,[LDBLFAGD])=(0) AND datepart(second,[LDBLFAGD])=(0) AND datepart(millisecond,[LDBLFAGD])=(0)))
GO
ALTER TABLE [dbo].[RM40101] ADD CONSTRAINT [CK__RM40101__LDCMTRN__699A9652] CHECK ((datepart(hour,[LDCMTRNS])=(0) AND datepart(minute,[LDCMTRNS])=(0) AND datepart(second,[LDCMTRNS])=(0) AND datepart(millisecond,[LDCMTRNS])=(0)))
GO
ALTER TABLE [dbo].[RM40101] ADD CONSTRAINT [CK__RM40101__LDFNCHG__62ED98C3] CHECK ((datepart(hour,[LDFNCHGD])=(0) AND datepart(minute,[LDFNCHGD])=(0) AND datepart(second,[LDFNCHGD])=(0) AND datepart(millisecond,[LDFNCHGD])=(0)))
GO
ALTER TABLE [dbo].[RM40101] ADD CONSTRAINT [CK__RM40101__LDOITAG__65CA056E] CHECK ((datepart(hour,[LDOITAGD])=(0) AND datepart(minute,[LDOITAGD])=(0) AND datepart(second,[LDOITAGD])=(0) AND datepart(millisecond,[LDOITAGD])=(0)))
GO
ALTER TABLE [dbo].[RM40101] ADD CONSTRAINT [CK__RM40101__LDPTRRM__66BE29A7] CHECK ((datepart(hour,[LDPTRRMV])=(0) AND datepart(minute,[LDPTRRMV])=(0) AND datepart(second,[LDPTRRMV])=(0) AND datepart(millisecond,[LDPTRRMV])=(0)))
GO
ALTER TABLE [dbo].[RM40101] ADD CONSTRAINT [CK__RM40101__LDSTPRT__63E1BCFC] CHECK ((datepart(hour,[LDSTPRTD])=(0) AND datepart(minute,[LDSTPRTD])=(0) AND datepart(second,[LDSTPRTD])=(0) AND datepart(millisecond,[LDSTPRTD])=(0)))
GO
ALTER TABLE [dbo].[RM40101] ADD CONSTRAINT [CK__RM40101__LSTYECA__67B24DE0] CHECK ((datepart(hour,[LSTYECAL])=(0) AND datepart(minute,[LSTYECAL])=(0) AND datepart(second,[LSTYECAL])=(0) AND datepart(millisecond,[LSTYECAL])=(0)))
GO
ALTER TABLE [dbo].[RM40101] ADD CONSTRAINT [CK__RM40101__LSTYEFS__68A67219] CHECK ((datepart(hour,[LSTYEFSC])=(0) AND datepart(minute,[LSTYEFSC])=(0) AND datepart(second,[LSTYEFSC])=(0) AND datepart(millisecond,[LSTYEFSC])=(0)))
GO
ALTER TABLE [dbo].[RM40101] ADD CONSTRAINT [PKRM40101] PRIMARY KEY NONCLUSTERED  ([SETUPKEY]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM40101].[SETUPKEY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM40101].[AGEBY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM40101].[AGPEREND_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM40101].[AGPEREND_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM40101].[AGPEREND_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM40101].[AGPEREND_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM40101].[AGPEREND_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM40101].[AGPEREND_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM40101].[AGPEREND_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM40101].[AGPERUSD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM40101].[CRLMPSWD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM40101].[CUSTHPWD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM40101].[WRTFPSWD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM40101].[WVFCHPWD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM40101].[PRTHATRB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM40101].[CPDFINCH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM40101].[RMTRKDAV]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM40101].[RMPCAIPD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM40101].[NSFCHDEF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM40101].[APLBYDEF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM40101].[LDFNCHGD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM40101].[LDSTPRTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM40101].[LDBLFAGD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM40101].[LDOITAGD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM40101].[LDPTRRMV]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM40101].[LSTYECAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM40101].[LSTYEFSC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM40101].[USRDFPR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM40101].[USRDRPR2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM40101].[FRTSCHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM40101].[SLSCHDID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM40101].[MSCSCHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM40101].[CHEKBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM40101].[SALESCB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM40101].[DISCNTCB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM40101].[FREIGHT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM40101].[MISC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM40101].[TAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM40101].[RMVDSTTY_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM40101].[RMVDSTTY_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM40101].[RMVDSTTY_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM40101].[RMVDSTTY_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM40101].[RMVDSTTY_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM40101].[RMVDSTTY_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM40101].[RMVDSTTY_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM40101].[RMVDSTTY_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM40101].[RMVDSTTY_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM40101].[LDCMTRNS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM40101].[PRCLEVEL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM40101].[RMDFTyp]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM40101].[DelUPDoc]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM40101].[PrntTaxDetDoc]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM40101].[RPRNTSTTMNTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM40101].[ATAPPLFNNCCHRGSFRST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM40101].[EmailStmtStatusRecipient]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM40101].[DateSensitivitySumView]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM40101].[PRNTDCUR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM40101].[AGEUNAPPLDCR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM40101].[WriteoffCreditMemoNumber]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM40101].[WriteoffDebitMemoNumber]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM40101].[USRDRPR3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM40101].[USRDRPR4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM40101].[DisplayOverCreditIcon]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM40101].[DisplayOverCreditWarning]'
GO
GRANT SELECT ON  [dbo].[RM40101] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[RM40101] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[RM40101] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[RM40101] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[RM40101] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[RM40101] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[RM40101] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[RM40101] TO [RAPIDGRP]
GO
