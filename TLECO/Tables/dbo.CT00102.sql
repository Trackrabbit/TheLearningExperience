CREATE TABLE [dbo].[CT00102]
(
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITEMDESC] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[ITMSHNAM] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITEMTYPE] [smallint] NOT NULL,
[ITMGEDSC] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STNDCOST] [numeric] (19, 5) NOT NULL,
[CURRCOST] [numeric] (19, 5) NOT NULL,
[LISTPRCE] [numeric] (19, 5) NOT NULL,
[ITEMSHWT] [int] NOT NULL,
[DECPLQTY] [smallint] NOT NULL,
[DECPLCUR] [smallint] NOT NULL,
[ITMTSHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TAXOPTNS] [smallint] NOT NULL,
[COMMCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ICIVMFIXI] [int] NOT NULL,
[ICIVMVIXI] [int] NOT NULL,
[ICIVLVIXI] [int] NOT NULL,
[ICIVLABVAROHIX_I] [int] NOT NULL,
[ICIVLABVAROHVARIX_I] [int] NOT NULL,
[ICIVMEVIXI] [int] NOT NULL,
[ICIVMACHEFFVAROHIX_I] [int] NOT NULL,
[ICIVMACHEFFVAROHVARIX_I] [int] NOT NULL,
[ICIVMUIXI] [int] NOT NULL,
[ICIVMATUSAGEVAROHIX_I] [int] NOT NULL,
[ICIVMATUSAGEVAROHVARIX_I] [int] NOT NULL,
[ICIVOVIXI] [int] NOT NULL,
[ICIVPVIXI] [int] NOT NULL,
[ICIVSCIXI] [int] NOT NULL,
[ICIVROIXI] [int] NOT NULL,
[ICIVWMIXI] [int] NOT NULL,
[ICIVUPPV_I] [int] NOT NULL,
[ICIVWMATOHIXI] [int] NOT NULL,
[ICIVWIPMATOHVARIX_I] [int] NOT NULL,
[ICIVWLIXI] [int] NOT NULL,
[ICIVWLOHIXI] [int] NOT NULL,
[ICIVWIPLABOHVARIX_I] [int] NOT NULL,
[ICIVWCIXI] [int] NOT NULL,
[ICIVWMACHOHIXI] [int] NOT NULL,
[ICIVWIPMACHOHVARIX_I] [int] NOT NULL,
[ICIVWOIXI] [int] NOT NULL,
[ICIVCMIXI] [int] NOT NULL,
[ICIVCMATOHIXI] [int] NOT NULL,
[ICIVCOGSMATOHVARIX_I] [int] NOT NULL,
[ICIVCLIXI] [int] NOT NULL,
[ICIVCLABOHIXI] [int] NOT NULL,
[ICIVCOGSLABOHVARIX_I] [int] NOT NULL,
[ICIVCCIXI] [int] NOT NULL,
[ICIVCMACHOHIXI] [int] NOT NULL,
[ICIVCOGSMACHOHVARIX_I] [int] NOT NULL,
[ICIVCOIXI] [int] NOT NULL,
[ICIVILIXI] [int] NOT NULL,
[ICIVILABOHIXI] [int] NOT NULL,
[ICIVINVLABOHVARIX_I] [int] NOT NULL,
[ICIVIMXI] [int] NOT NULL,
[ICIVIMACHOHIXI] [int] NOT NULL,
[ICIVINVMACHOHVARIX_I] [int] NOT NULL,
[ICIVIMATOHIXI] [int] NOT NULL,
[ICIVINVMATOHVARIX_I] [int] NOT NULL,
[ITMCLSCD] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITMTRKOP] [smallint] NOT NULL,
[LOTTYPE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[KPERHIST] [tinyint] NOT NULL,
[KPTRXHST] [tinyint] NOT NULL,
[KPCALHST] [tinyint] NOT NULL,
[KPDSTHST] [tinyint] NOT NULL,
[ITMKTFLG] [tinyint] NOT NULL,
[ALWBKORD] [tinyint] NOT NULL,
[FSHGDFLG] [tinyint] NOT NULL,
[CMPTFLAG] [tinyint] NOT NULL,
[VCTNMTHD] [smallint] NOT NULL,
[UOMSCHDL] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ALTITEM1] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ALTITEM2] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USCATVLS_1] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USCATVLS_2] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USCATVLS_3] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USCATVLS_4] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USCATVLS_5] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USCATVLS_6] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSTRCDTY] [smallint] NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[MDFUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[WRNTYDYS] [smallint] NOT NULL,
[PRCLEVEL] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CT00102] ADD CONSTRAINT [CK__CT00102__CREATDD__13739E55] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[CT00102] ADD CONSTRAINT [CK__CT00102__MODIFDT__1467C28E] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[CT00102] ADD CONSTRAINT [PKCT00102] PRIMARY KEY CLUSTERED  ([ITEMNMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2CT00102] ON [dbo].[CT00102] ([ITEMDESC], [ITEMNMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3CT00102] ON [dbo].[CT00102] ([ITMCLSCD], [ITEMNMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5CT00102] ON [dbo].[CT00102] ([ITMGEDSC], [ITEMNMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4CT00102] ON [dbo].[CT00102] ([ITMSHNAM], [ITEMNMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CT00102].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CT00102].[ITEMDESC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CT00102].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CT00102].[ITMSHNAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CT00102].[ITEMTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CT00102].[ITMGEDSC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CT00102].[STNDCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CT00102].[CURRCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CT00102].[LISTPRCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CT00102].[ITEMSHWT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CT00102].[DECPLQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CT00102].[DECPLCUR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CT00102].[ITMTSHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CT00102].[TAXOPTNS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CT00102].[COMMCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CT00102].[ICIVMFIXI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CT00102].[ICIVMVIXI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CT00102].[ICIVLVIXI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CT00102].[ICIVLABVAROHIX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CT00102].[ICIVLABVAROHVARIX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CT00102].[ICIVMEVIXI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CT00102].[ICIVMACHEFFVAROHIX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CT00102].[ICIVMACHEFFVAROHVARIX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CT00102].[ICIVMUIXI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CT00102].[ICIVMATUSAGEVAROHIX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CT00102].[ICIVMATUSAGEVAROHVARIX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CT00102].[ICIVOVIXI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CT00102].[ICIVPVIXI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CT00102].[ICIVSCIXI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CT00102].[ICIVROIXI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CT00102].[ICIVWMIXI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CT00102].[ICIVUPPV_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CT00102].[ICIVWMATOHIXI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CT00102].[ICIVWIPMATOHVARIX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CT00102].[ICIVWLIXI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CT00102].[ICIVWLOHIXI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CT00102].[ICIVWIPLABOHVARIX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CT00102].[ICIVWCIXI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CT00102].[ICIVWMACHOHIXI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CT00102].[ICIVWIPMACHOHVARIX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CT00102].[ICIVWOIXI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CT00102].[ICIVCMIXI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CT00102].[ICIVCMATOHIXI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CT00102].[ICIVCOGSMATOHVARIX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CT00102].[ICIVCLIXI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CT00102].[ICIVCLABOHIXI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CT00102].[ICIVCOGSLABOHVARIX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CT00102].[ICIVCCIXI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CT00102].[ICIVCMACHOHIXI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CT00102].[ICIVCOGSMACHOHVARIX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CT00102].[ICIVCOIXI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CT00102].[ICIVILIXI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CT00102].[ICIVILABOHIXI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CT00102].[ICIVINVLABOHVARIX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CT00102].[ICIVIMXI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CT00102].[ICIVIMACHOHIXI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CT00102].[ICIVINVMACHOHVARIX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CT00102].[ICIVIMATOHIXI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CT00102].[ICIVINVMATOHVARIX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CT00102].[ITMCLSCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CT00102].[ITMTRKOP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CT00102].[LOTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CT00102].[KPERHIST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CT00102].[KPTRXHST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CT00102].[KPCALHST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CT00102].[KPDSTHST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CT00102].[ITMKTFLG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CT00102].[ALWBKORD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CT00102].[FSHGDFLG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CT00102].[CMPTFLAG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CT00102].[VCTNMTHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CT00102].[UOMSCHDL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CT00102].[ALTITEM1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CT00102].[ALTITEM2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CT00102].[USCATVLS_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CT00102].[USCATVLS_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CT00102].[USCATVLS_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CT00102].[USCATVLS_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CT00102].[USCATVLS_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CT00102].[USCATVLS_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CT00102].[MSTRCDTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CT00102].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CT00102].[MDFUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CT00102].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CT00102].[WRNTYDYS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CT00102].[PRCLEVEL]'
GO
GRANT SELECT ON  [dbo].[CT00102] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[CT00102] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[CT00102] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[CT00102] TO [DYNGRP]
GO
