CREATE TABLE [dbo].[SOP40100]
(
[COMMNTID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SETUPKEY] [smallint] NOT NULL,
[DPYITMCS] [tinyint] NOT NULL,
[DQTYSWAR] [tinyint] NOT NULL,
[TRKVDTRX] [tinyint] NOT NULL,
[CALCKITC] [tinyint] NOT NULL,
[NEWRATES] [tinyint] NOT NULL,
[TRMSTNUM] [tinyint] NOT NULL,
[NXTMSTNO] [int] NOT NULL,
[QUOTE] [tinyint] NOT NULL,
[PRDER] [tinyint] NOT NULL,
[INVORETU] [tinyint] NOT NULL,
[ACDSTRBN] [tinyint] NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHEKBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DFQTYSOP] [smallint] NOT NULL,
[QUODOCID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORDDOCID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BACDOCID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INVDOCID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RETDOCID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DECPLQTY] [smallint] NOT NULL,
[DECPLCUR] [smallint] NOT NULL,
[USEACFRM] [smallint] NOT NULL,
[USEADVTX] [smallint] NOT NULL,
[TAXSCHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NONIVTXB] [smallint] NOT NULL,
[NONIVSCH] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FRGTTXBL] [smallint] NOT NULL,
[FRTSCHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MISCTXBL] [smallint] NOT NULL,
[MSCSCHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MPACKSLP] [smallint] NOT NULL,
[MPICKTIC] [smallint] NOT NULL,
[PriceLevelWarning] [smallint] NOT NULL,
[SOPALLOW_1] [tinyint] NOT NULL,
[SOPALLOW_2] [tinyint] NOT NULL,
[SOPALLOW_3] [tinyint] NOT NULL,
[SOPALLOW_4] [tinyint] NOT NULL,
[SOPALLOW_5] [tinyint] NOT NULL,
[SOPALLOW_6] [tinyint] NOT NULL,
[SOPALLOW_7] [tinyint] NOT NULL,
[SOPALLOW_8] [tinyint] NOT NULL,
[SOPALLOW_9] [tinyint] NOT NULL,
[SOPALLOW_10] [tinyint] NOT NULL,
[SOPPSSWD_1] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SOPPSSWD_2] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SOPPSSWD_3] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SOPPSSWD_4] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SOPPSSWD_5] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SOPPSSWD_6] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SOPPSSWD_7] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SOPPSSWD_8] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SOPPSSWD_9] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SOPPSSWD_10] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IVCDSTCK] [binary] (4) NOT NULL,
[NUMOFTRX] [int] NOT NULL,
[USRDFPR1] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDRPR2] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDRPR3] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDRPR4] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDRPR5] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDRPR6] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDRPR7] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDRPR8] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDRPR9] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDRP10] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDRP11] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDRP12] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDFPR13] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDFPR14] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDFPR15] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDFPR16] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDFPR17] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[REQSHIP] [smallint] NOT NULL,
[REQDAYS] [smallint] NOT NULL,
[SITEPREF] [smallint] NOT NULL,
[PREFSITE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[REQDATEPO] [smallint] NOT NULL,
[Required_Days] [smallint] NOT NULL,
[UMDEFAULT] [smallint] NOT NULL,
[COMBONPO] [tinyint] NOT NULL,
[TXBASECS] [tinyint] NOT NULL,
[USEORGUC] [tinyint] NOT NULL,
[Prices_Not_Required_In_Pr] [tinyint] NOT NULL,
[PasswordUpper] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Convert_Functional_Price] [tinyint] NOT NULL,
[INDVPICKTICKETSORT] [smallint] NOT NULL,
[PRINTAVAILABLEBINS] [smallint] NOT NULL,
[FODOCID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CombineDropshipSOLines] [tinyint] NOT NULL,
[CombineDropshipSODocs] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SOP40100] ADD CONSTRAINT [CK__SOP40100__CREATD__480696CE] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[SOP40100] ADD CONSTRAINT [CK__SOP40100__MODIFD__48FABB07] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[SOP40100] ADD CONSTRAINT [PKSOP40100] PRIMARY KEY NONCLUSTERED  ([SETUPKEY]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40100].[COMMNTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40100].[SETUPKEY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40100].[DPYITMCS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40100].[DQTYSWAR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40100].[TRKVDTRX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40100].[CALCKITC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40100].[NEWRATES]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40100].[TRMSTNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40100].[NXTMSTNO]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40100].[QUOTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40100].[PRDER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40100].[INVORETU]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40100].[ACDSTRBN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40100].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40100].[CHEKBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40100].[DFQTYSOP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40100].[QUODOCID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40100].[ORDDOCID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40100].[BACDOCID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40100].[INVDOCID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40100].[RETDOCID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40100].[DECPLQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40100].[DECPLCUR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40100].[USEACFRM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40100].[USEADVTX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40100].[TAXSCHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40100].[NONIVTXB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40100].[NONIVSCH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40100].[FRGTTXBL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40100].[FRTSCHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40100].[MISCTXBL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40100].[MSCSCHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40100].[MPACKSLP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40100].[MPICKTIC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40100].[PriceLevelWarning]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40100].[SOPALLOW_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40100].[SOPALLOW_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40100].[SOPALLOW_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40100].[SOPALLOW_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40100].[SOPALLOW_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40100].[SOPALLOW_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40100].[SOPALLOW_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40100].[SOPALLOW_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40100].[SOPALLOW_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40100].[SOPALLOW_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40100].[SOPPSSWD_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40100].[SOPPSSWD_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40100].[SOPPSSWD_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40100].[SOPPSSWD_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40100].[SOPPSSWD_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40100].[SOPPSSWD_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40100].[SOPPSSWD_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40100].[SOPPSSWD_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40100].[SOPPSSWD_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40100].[SOPPSSWD_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40100].[IVCDSTCK]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40100].[NUMOFTRX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40100].[USRDFPR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40100].[USRDRPR2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40100].[USRDRPR3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40100].[USRDRPR4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40100].[USRDRPR5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40100].[USRDRPR6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40100].[USRDRPR7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40100].[USRDRPR8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40100].[USRDRPR9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40100].[USRDRP10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40100].[USRDRP11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40100].[USRDRP12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40100].[USRDFPR13]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40100].[USRDFPR14]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40100].[USRDFPR15]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40100].[USRDFPR16]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40100].[USRDFPR17]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP40100].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP40100].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40100].[REQSHIP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40100].[REQDAYS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40100].[SITEPREF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40100].[PREFSITE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40100].[REQDATEPO]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40100].[Required_Days]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40100].[UMDEFAULT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40100].[COMBONPO]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40100].[TXBASECS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40100].[USEORGUC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40100].[Prices_Not_Required_In_Pr]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40100].[PasswordUpper]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40100].[Convert_Functional_Price]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40100].[INDVPICKTICKETSORT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40100].[PRINTAVAILABLEBINS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40100].[FODOCID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40100].[CombineDropshipSOLines]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40100].[CombineDropshipSODocs]'
GO
GRANT SELECT ON  [dbo].[SOP40100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SOP40100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SOP40100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SOP40100] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[SOP40100] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[SOP40100] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[SOP40100] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[SOP40100] TO [RAPIDGRP]
GO
