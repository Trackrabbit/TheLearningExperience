CREATE TABLE [dbo].[PM00201]
(
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[HIESTBAL] [numeric] (19, 5) NOT NULL,
[CURRBLNC] [numeric] (19, 5) NOT NULL,
[NOINVYTD] [int] NOT NULL,
[NOINVLIF] [int] NOT NULL,
[NOINVLYR] [int] NOT NULL,
[NOPINYTD] [int] NOT NULL,
[NOPILIFE] [int] NOT NULL,
[AMBLDTYD] [numeric] (19, 5) NOT NULL,
[AMBLDLIF] [numeric] (19, 5) NOT NULL,
[AMBLDLYR] [numeric] (19, 5) NOT NULL,
[AMTPDYTD] [numeric] (19, 5) NOT NULL,
[AMTPDLIF] [numeric] (19, 5) NOT NULL,
[AMTPDLYR] [numeric] (19, 5) NOT NULL,
[TEN99AYTD] [numeric] (19, 5) NOT NULL,
[TEN99ALIF] [numeric] (19, 5) NOT NULL,
[TEN99ALYR] [numeric] (19, 5) NOT NULL,
[DISAVYTD] [numeric] (19, 5) NOT NULL,
[DISAVLIF] [numeric] (19, 5) NOT NULL,
[DISAVLYR] [numeric] (19, 5) NOT NULL,
[DISTKYTD] [numeric] (19, 5) NOT NULL,
[DISTKNLF] [numeric] (19, 5) NOT NULL,
[DISTKLYR] [numeric] (19, 5) NOT NULL,
[DISLSYTD] [numeric] (19, 5) NOT NULL,
[DISLSTLF] [numeric] (19, 5) NOT NULL,
[DISLSLYR] [numeric] (19, 5) NOT NULL,
[FINCHLIF] [numeric] (19, 5) NOT NULL,
[FINCHLYR] [numeric] (19, 5) NOT NULL,
[FINCHYTD] [numeric] (19, 5) NOT NULL,
[WROFSYTD] [numeric] (19, 5) NOT NULL,
[WROFSLIF] [numeric] (19, 5) NOT NULL,
[WROFSLYR] [numeric] (19, 5) NOT NULL,
[RTRNSYTD] [numeric] (19, 5) NOT NULL,
[RTRNSLIF] [numeric] (19, 5) NOT NULL,
[RTRNSLYR] [numeric] (19, 5) NOT NULL,
[TRDTKLIF] [numeric] (19, 5) NOT NULL,
[TRDTLYR] [numeric] (19, 5) NOT NULL,
[TRDTYTD] [numeric] (19, 5) NOT NULL,
[NFNCHLIF] [int] NOT NULL,
[NFNCHLYR] [int] NOT NULL,
[NFNCHYTD] [int] NOT NULL,
[RTNGOWED] [numeric] (19, 5) NOT NULL,
[LSTCHNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LSTCHKDT] [datetime] NOT NULL,
[LSTCHAMT] [numeric] (19, 5) NOT NULL,
[LSTINNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LSTINVAM] [numeric] (19, 5) NOT NULL,
[LSTPURDT] [datetime] NOT NULL,
[FSTPURDT] [datetime] NOT NULL,
[CURUNPBN] [numeric] (19, 5) NOT NULL,
[UNPDFNCH] [numeric] (19, 5) NOT NULL,
[DYCHTCLR] [smallint] NOT NULL,
[AVGDTPYR] [smallint] NOT NULL,
[AVDTPLIF] [smallint] NOT NULL,
[ACCRDINV] [numeric] (19, 5) NOT NULL,
[ONORDAMT] [numeric] (19, 5) NOT NULL,
[WITHYTD] [numeric] (19, 5) NOT NULL,
[WITHLYR] [numeric] (19, 5) NOT NULL,
[Withholding_LIFE] [numeric] (19, 5) NOT NULL,
[PrepaymentAmount] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PM00201] ADD CONSTRAINT [CK__PM00201__FSTPURD__17AD7836] CHECK ((datepart(hour,[FSTPURDT])=(0) AND datepart(minute,[FSTPURDT])=(0) AND datepart(second,[FSTPURDT])=(0) AND datepart(millisecond,[FSTPURDT])=(0)))
GO
ALTER TABLE [dbo].[PM00201] ADD CONSTRAINT [CK__PM00201__LSTCHKD__18A19C6F] CHECK ((datepart(hour,[LSTCHKDT])=(0) AND datepart(minute,[LSTCHKDT])=(0) AND datepart(second,[LSTCHKDT])=(0) AND datepart(millisecond,[LSTCHKDT])=(0)))
GO
ALTER TABLE [dbo].[PM00201] ADD CONSTRAINT [CK__PM00201__LSTPURD__1995C0A8] CHECK ((datepart(hour,[LSTPURDT])=(0) AND datepart(minute,[LSTPURDT])=(0) AND datepart(second,[LSTPURDT])=(0) AND datepart(millisecond,[LSTPURDT])=(0)))
GO
ALTER TABLE [dbo].[PM00201] ADD CONSTRAINT [PKPM00201] PRIMARY KEY NONCLUSTERED  ([VENDORID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00201].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM00201].[HIESTBAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM00201].[CURRBLNC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00201].[NOINVYTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00201].[NOINVLIF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00201].[NOINVLYR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00201].[NOPINYTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00201].[NOPILIFE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM00201].[AMBLDTYD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM00201].[AMBLDLIF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM00201].[AMBLDLYR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM00201].[AMTPDYTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM00201].[AMTPDLIF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM00201].[AMTPDLYR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM00201].[TEN99AYTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM00201].[TEN99ALIF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM00201].[TEN99ALYR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM00201].[DISAVYTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM00201].[DISAVLIF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM00201].[DISAVLYR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM00201].[DISTKYTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM00201].[DISTKNLF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM00201].[DISTKLYR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM00201].[DISLSYTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM00201].[DISLSTLF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM00201].[DISLSLYR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM00201].[FINCHLIF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM00201].[FINCHLYR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM00201].[FINCHYTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM00201].[WROFSYTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM00201].[WROFSLIF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM00201].[WROFSLYR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM00201].[RTRNSYTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM00201].[RTRNSLIF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM00201].[RTRNSLYR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM00201].[TRDTKLIF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM00201].[TRDTLYR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM00201].[TRDTYTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00201].[NFNCHLIF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00201].[NFNCHLYR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00201].[NFNCHYTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM00201].[RTNGOWED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00201].[LSTCHNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM00201].[LSTCHKDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM00201].[LSTCHAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00201].[LSTINNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM00201].[LSTINVAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM00201].[LSTPURDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM00201].[FSTPURDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM00201].[CURUNPBN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM00201].[UNPDFNCH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00201].[DYCHTCLR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00201].[AVGDTPYR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00201].[AVDTPLIF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM00201].[ACCRDINV]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM00201].[ONORDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM00201].[WITHYTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM00201].[WITHLYR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM00201].[Withholding_LIFE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM00201].[PrepaymentAmount]'
GO
GRANT SELECT ON  [dbo].[PM00201] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PM00201] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PM00201] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PM00201] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[PM00201] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[PM00201] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[PM00201] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[PM00201] TO [RAPIDGRP]
GO
