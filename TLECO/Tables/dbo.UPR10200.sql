CREATE TABLE [dbo].[UPR10200]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AUCTRLCD] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BLDCHDID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BLDCHKDT] [datetime] NOT NULL,
[BLDCHTIM] [datetime] NOT NULL,
[PYRNTYPE] [smallint] NOT NULL,
[COMPPYRN] [smallint] NOT NULL,
[EMPCLRNG] [smallint] NOT NULL,
[STTEMPCL] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENEMPCLS] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EMPIDRNG] [smallint] NOT NULL,
[STTEMPID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDEMPL] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PYRNSTDT] [datetime] NOT NULL,
[PYRNENDT] [datetime] NOT NULL,
[PYRNIWLY] [tinyint] NOT NULL,
[PYRNIBWK] [tinyint] NOT NULL,
[PRNISMLY] [tinyint] NOT NULL,
[PYRNIMLY] [tinyint] NOT NULL,
[PYRNIQLY] [tinyint] NOT NULL,
[PYRNISAN] [tinyint] NOT NULL,
[PYRNIANN] [tinyint] NOT NULL,
[PYRNIDMS] [tinyint] NOT NULL,
[PYRNISRY] [tinyint] NOT NULL,
[PYRNIPSN] [tinyint] NOT NULL,
[PYRNIEIC] [tinyint] NOT NULL,
[PYRNIPTP] [smallint] NOT NULL,
[PYRNIDED] [smallint] NOT NULL,
[PYRNIBFT] [smallint] NOT NULL,
[DAYSWRDK] [int] NOT NULL,
[WKSWRKD] [int] NOT NULL,
[BLCHWREX] [tinyint] NOT NULL,
[BDCHEREX] [tinyint] NOT NULL,
[PRCHKPTD] [tinyint] NOT NULL,
[PYRLCHPS] [tinyint] NOT NULL,
[CHEKDATE] [datetime] NOT NULL,
[POSTEDDT] [datetime] NOT NULL,
[NUMOFTRX] [int] NOT NULL,
[NUMOFEMP] [smallint] NOT NULL,
[CNTRLTRX] [int] NOT NULL,
[CTRLEMPCT] [smallint] NOT NULL,
[APPROVL] [tinyint] NOT NULL,
[APPRVLDT] [datetime] NOT NULL,
[APRVLUSERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR10200] ADD CONSTRAINT [CK__UPR10200__BLDCHT__0C46B282] CHECK ((datepart(day,[BLDCHTIM])=(1) AND datepart(month,[BLDCHTIM])=(1) AND datepart(year,[BLDCHTIM])=(1900)))
GO
ALTER TABLE [dbo].[UPR10200] ADD CONSTRAINT [CK__UPR10200__APPRVL__0A5E6A10] CHECK ((datepart(hour,[APPRVLDT])=(0) AND datepart(minute,[APPRVLDT])=(0) AND datepart(second,[APPRVLDT])=(0) AND datepart(millisecond,[APPRVLDT])=(0)))
GO
ALTER TABLE [dbo].[UPR10200] ADD CONSTRAINT [CK__UPR10200__BLDCHK__0B528E49] CHECK ((datepart(hour,[BLDCHKDT])=(0) AND datepart(minute,[BLDCHKDT])=(0) AND datepart(second,[BLDCHKDT])=(0) AND datepart(millisecond,[BLDCHKDT])=(0)))
GO
ALTER TABLE [dbo].[UPR10200] ADD CONSTRAINT [CK__UPR10200__CHEKDA__0D3AD6BB] CHECK ((datepart(hour,[CHEKDATE])=(0) AND datepart(minute,[CHEKDATE])=(0) AND datepart(second,[CHEKDATE])=(0) AND datepart(millisecond,[CHEKDATE])=(0)))
GO
ALTER TABLE [dbo].[UPR10200] ADD CONSTRAINT [CK__UPR10200__POSTED__0E2EFAF4] CHECK ((datepart(hour,[POSTEDDT])=(0) AND datepart(minute,[POSTEDDT])=(0) AND datepart(second,[POSTEDDT])=(0) AND datepart(millisecond,[POSTEDDT])=(0)))
GO
ALTER TABLE [dbo].[UPR10200] ADD CONSTRAINT [CK__UPR10200__PYRNEN__0F231F2D] CHECK ((datepart(hour,[PYRNENDT])=(0) AND datepart(minute,[PYRNENDT])=(0) AND datepart(second,[PYRNENDT])=(0) AND datepart(millisecond,[PYRNENDT])=(0)))
GO
ALTER TABLE [dbo].[UPR10200] ADD CONSTRAINT [CK__UPR10200__PYRNST__10174366] CHECK ((datepart(hour,[PYRNSTDT])=(0) AND datepart(minute,[PYRNSTDT])=(0) AND datepart(second,[PYRNSTDT])=(0) AND datepart(millisecond,[PYRNSTDT])=(0)))
GO
ALTER TABLE [dbo].[UPR10200] ADD CONSTRAINT [PKUPR10200] PRIMARY KEY NONCLUSTERED  ([USERID], [PYRNTYPE]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2UPR10200] ON [dbo].[UPR10200] ([PRCHKPTD], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3UPR10200] ON [dbo].[UPR10200] ([USERID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10200].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10200].[AUCTRLCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10200].[BLDCHDID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR10200].[BLDCHKDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR10200].[BLDCHTIM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10200].[PYRNTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10200].[COMPPYRN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10200].[EMPCLRNG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10200].[STTEMPCL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10200].[ENEMPCLS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10200].[EMPIDRNG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10200].[STTEMPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10200].[ENDEMPL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR10200].[PYRNSTDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR10200].[PYRNENDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10200].[PYRNIWLY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10200].[PYRNIBWK]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10200].[PRNISMLY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10200].[PYRNIMLY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10200].[PYRNIQLY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10200].[PYRNISAN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10200].[PYRNIANN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10200].[PYRNIDMS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10200].[PYRNISRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10200].[PYRNIPSN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10200].[PYRNIEIC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10200].[PYRNIPTP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10200].[PYRNIDED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10200].[PYRNIBFT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10200].[DAYSWRDK]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10200].[WKSWRKD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10200].[BLCHWREX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10200].[BDCHEREX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10200].[PRCHKPTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10200].[PYRLCHPS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR10200].[CHEKDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR10200].[POSTEDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10200].[NUMOFTRX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10200].[NUMOFEMP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10200].[CNTRLTRX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10200].[CTRLEMPCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10200].[APPROVL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR10200].[APPRVLDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10200].[APRVLUSERID]'
GO
GRANT SELECT ON  [dbo].[UPR10200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR10200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR10200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR10200] TO [DYNGRP]
GO
