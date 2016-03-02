CREATE TABLE [dbo].[PM70500]
(
[RPTGRIND] [smallint] NOT NULL,
[RTPACHIN] [smallint] NOT NULL,
[RTGRSBIN] [numeric] (19, 5) NOT NULL,
[ASKECHTM] [tinyint] NOT NULL,
[EXPTTYPE] [smallint] NOT NULL,
[FILEXPNM] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IFFILXST] [smallint] NOT NULL,
[FINRPTNM] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRNTOFIL] [tinyint] NOT NULL,
[PRTOPRTR] [tinyint] NOT NULL,
[PRTOSCRN] [tinyint] NOT NULL,
[SORTBY] [smallint] NOT NULL,
[SORTBY2] [smallint] NOT NULL,
[HISTTYPE] [smallint] NOT NULL,
[PYMNTDAT] [datetime] NOT NULL,
[VOIDONLY] [tinyint] NOT NULL,
[EXCLVOID] [tinyint] NOT NULL,
[Include_Canceled] [tinyint] NOT NULL,
[DATEOVERDUE] [datetime] NOT NULL,
[Days_Overdue] [tinyint] NOT NULL,
[POP_Date_Selection] [smallint] NOT NULL,
[Include_Closed] [tinyint] NOT NULL,
[Include_Released] [tinyint] NOT NULL,
[AGEBY] [smallint] NOT NULL,
[COMPTYPE] [smallint] NOT NULL,
[STVNDRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STVNDNAM] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STVNDCLS] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTSTATE] [char] (29) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTZPCD] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTPHON] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTUDEF] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTCNTCT] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Start_PO_Date] [datetime] NOT NULL,
[STTSHNAM] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTLOCID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Start_Promised_Date] [datetime] NOT NULL,
[Start_Required_Date] [datetime] NOT NULL,
[STVNSTUS] [smallint] NOT NULL,
[STT1099T] [smallint] NOT NULL,
[STPERIOD] [smallint] NOT NULL,
[STRTYEAR] [smallint] NOT NULL,
[STTABYTD] [numeric] (19, 5) NOT NULL,
[STRTPRTY] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTDUEDT] [datetime] NOT NULL,
[STDISCDT] [datetime] NOT NULL,
[ALORANGE] [smallint] NOT NULL,
[STTACNCD] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STDOCNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTDOCDT] [datetime] NOT NULL,
[STDOCTYP] [smallint] NOT NULL,
[STVCHNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTITNUM] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STCHKNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTCHKDT] [datetime] NOT NULL,
[STCHBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STBCHSRC] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STBCHNUM] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STPSTDDT] [datetime] NOT NULL,
[STCLSDSC] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDVNDID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDVNDNM] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDVNCLS] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDSTATE] [char] (29) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDZIPCD] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENPHONBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[End_PO_Date] [datetime] NOT NULL,
[ENUSRDEF] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDLOCID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENITMNBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[End_Required_Date] [datetime] NOT NULL,
[End_Promised_Date] [datetime] NOT NULL,
[ENDVNDCT] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDSHNAM] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENVNSTTS] [smallint] NOT NULL,
[E1099TYP] [smallint] NOT NULL,
[ENDPEROD] [smallint] NOT NULL,
[ENDYEAR] [smallint] NOT NULL,
[ENAMBYTD] [numeric] (19, 5) NOT NULL,
[ENPRYRTY] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDDUEDT] [datetime] NOT NULL,
[ENDISCDT] [datetime] NOT NULL,
[ALORNGE2] [smallint] NOT NULL,
[ENAUCNCD] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDOCNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDDOCDT] [datetime] NOT NULL,
[ENDOCTYP] [smallint] NOT NULL,
[ENVCHNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENCHKNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDCHKDT] [datetime] NOT NULL,
[ENCHBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENBCHSRC] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDBNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENPSTDDT] [datetime] NOT NULL,
[ENCLDSCR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AGNGDATE] [datetime] NOT NULL,
[PBSDCDTK] [smallint] NOT NULL,
[PBSDUDTK] [smallint] NOT NULL,
[PBSDSDTK] [smallint] NOT NULL,
[PBSCHDTK] [smallint] NOT NULL,
[PBSPTDTK] [smallint] NOT NULL,
[PBEDCDTK] [smallint] NOT NULL,
[PBEDUDTK] [smallint] NOT NULL,
[PBEDSDTK] [smallint] NOT NULL,
[PBECHDTK] [smallint] NOT NULL,
[PBEPDTKN] [smallint] NOT NULL,
[PBCDTTKN] [smallint] NOT NULL,
[DETLDRPT] [tinyint] NOT NULL,
[SINGACT] [tinyint] NOT NULL,
[STTACNUM_1] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTACNUM_2] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTACNUM_3] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTACNUM_4] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EACCNBR_1] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EACCNBR_2] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EACCNBR_3] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EACCNBR_4] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRPONUM] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDPONUM] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EndPOPRcptNum] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[StartPOPRcptNum] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRCREAT] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRCTDT] [datetime] NOT NULL,
[ENRCTDT] [datetime] NOT NULL,
[STRCTNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENRCTNBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDCREATE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRPOSTA] [smallint] NOT NULL,
[ENDPOSTA] [smallint] NOT NULL,
[INCRCPTS] [tinyint] NOT NULL,
[DISSRLOT] [tinyint] NOT NULL,
[STRXSRC] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENTRXSRC] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CRBLNCCB] [tinyint] NOT NULL,
[FLLYPDCB] [tinyint] NOT NULL,
[ZROBALCB] [tinyint] NOT NULL,
[EXCLZBAL] [tinyint] NOT NULL,
[NOACTVCB] [tinyint] NOT NULL,
[Unposted_Applied_CR_Docs] [tinyint] NOT NULL,
[Multicurrency_Information] [tinyint] NOT NULL,
[Include_Distribution_Typ] [binary] (4) NOT NULL,
[RPTXRATE] [numeric] (19, 7) NOT NULL,
[RPRTCLMD] [smallint] NOT NULL,
[PRTCURIN] [smallint] NOT NULL,
[INCLFUNC] [tinyint] NOT NULL,
[STARTLINEORIGIN] [smallint] NOT NULL,
[ENDLINEORIGIN] [smallint] NOT NULL,
[STARTBUYERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDBUYERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INCLUDEHOLDPO] [tinyint] NOT NULL,
[INCLUDEHOLDPOONLY] [tinyint] NOT NULL,
[STARTRELEASEBYDATE] [datetime] NOT NULL,
[ENDRELEASEBYDATE] [datetime] NOT NULL,
[Include_New] [tinyint] NOT NULL,
[Include_Change_Order] [tinyint] NOT NULL,
[Include_Received] [tinyint] NOT NULL,
[SummaryYear] [smallint] NOT NULL,
[DateSensitivitySumSelect] [smallint] NOT NULL,
[StartProjNum] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EndProjNum] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[StartCostCatID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EndCostCatID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IncludeApprovedPOsOnly] [tinyint] NOT NULL,
[MISC] [tinyint] NOT NULL,
[INTEREST] [tinyint] NOT NULL,
[DIVIDEND] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PM70500] ADD CONSTRAINT [CK__PM70500__AGNGDAT__7ACBE4CF] CHECK ((datepart(hour,[AGNGDATE])=(0) AND datepart(minute,[AGNGDATE])=(0) AND datepart(second,[AGNGDATE])=(0) AND datepart(millisecond,[AGNGDATE])=(0)))
GO
ALTER TABLE [dbo].[PM70500] ADD CONSTRAINT [CK__PM70500__DATEOVE__6A957D06] CHECK ((datepart(hour,[DATEOVERDUE])=(0) AND datepart(minute,[DATEOVERDUE])=(0) AND datepart(second,[DATEOVERDUE])=(0) AND datepart(millisecond,[DATEOVERDUE])=(0)))
GO
ALTER TABLE [dbo].[PM70500] ADD CONSTRAINT [CK__PM70500__End_PO___732AC307] CHECK ((datepart(hour,[End_PO_Date])=(0) AND datepart(minute,[End_PO_Date])=(0) AND datepart(second,[End_PO_Date])=(0) AND datepart(millisecond,[End_PO_Date])=(0)))
GO
ALTER TABLE [dbo].[PM70500] ADD CONSTRAINT [CK__PM70500__End_Pro__75130B79] CHECK ((datepart(hour,[End_Promised_Date])=(0) AND datepart(minute,[End_Promised_Date])=(0) AND datepart(second,[End_Promised_Date])=(0) AND datepart(millisecond,[End_Promised_Date])=(0)))
GO
ALTER TABLE [dbo].[PM70500] ADD CONSTRAINT [CK__PM70500__End_Req__741EE740] CHECK ((datepart(hour,[End_Required_Date])=(0) AND datepart(minute,[End_Required_Date])=(0) AND datepart(second,[End_Required_Date])=(0) AND datepart(millisecond,[End_Required_Date])=(0)))
GO
ALTER TABLE [dbo].[PM70500] ADD CONSTRAINT [CK__PM70500__ENDCHKD__78E39C5D] CHECK ((datepart(hour,[ENDCHKDT])=(0) AND datepart(minute,[ENDCHKDT])=(0) AND datepart(second,[ENDCHKDT])=(0) AND datepart(millisecond,[ENDCHKDT])=(0)))
GO
ALTER TABLE [dbo].[PM70500] ADD CONSTRAINT [CK__PM70500__ENDDOCD__77EF7824] CHECK ((datepart(hour,[ENDDOCDT])=(0) AND datepart(minute,[ENDDOCDT])=(0) AND datepart(second,[ENDDOCDT])=(0) AND datepart(millisecond,[ENDDOCDT])=(0)))
GO
ALTER TABLE [dbo].[PM70500] ADD CONSTRAINT [CK__PM70500__ENDDUED__76072FB2] CHECK ((datepart(hour,[ENDDUEDT])=(0) AND datepart(minute,[ENDDUEDT])=(0) AND datepart(second,[ENDDUEDT])=(0) AND datepart(millisecond,[ENDDUEDT])=(0)))
GO
ALTER TABLE [dbo].[PM70500] ADD CONSTRAINT [CK__PM70500__ENDISCD__76FB53EB] CHECK ((datepart(hour,[ENDISCDT])=(0) AND datepart(minute,[ENDISCDT])=(0) AND datepart(second,[ENDISCDT])=(0) AND datepart(millisecond,[ENDISCDT])=(0)))
GO
ALTER TABLE [dbo].[PM70500] ADD CONSTRAINT [CK__PM70500__ENDRELE__7E9C75B3] CHECK ((datepart(hour,[ENDRELEASEBYDATE])=(0) AND datepart(minute,[ENDRELEASEBYDATE])=(0) AND datepart(second,[ENDRELEASEBYDATE])=(0) AND datepart(millisecond,[ENDRELEASEBYDATE])=(0)))
GO
ALTER TABLE [dbo].[PM70500] ADD CONSTRAINT [CK__PM70500__ENPSTDD__79D7C096] CHECK ((datepart(hour,[ENPSTDDT])=(0) AND datepart(minute,[ENPSTDDT])=(0) AND datepart(second,[ENPSTDDT])=(0) AND datepart(millisecond,[ENPSTDDT])=(0)))
GO
ALTER TABLE [dbo].[PM70500] ADD CONSTRAINT [CK__PM70500__ENRCTDT__7CB42D41] CHECK ((datepart(hour,[ENRCTDT])=(0) AND datepart(minute,[ENRCTDT])=(0) AND datepart(second,[ENRCTDT])=(0) AND datepart(millisecond,[ENRCTDT])=(0)))
GO
ALTER TABLE [dbo].[PM70500] ADD CONSTRAINT [CK__PM70500__PYMNTDA__69A158CD] CHECK ((datepart(hour,[PYMNTDAT])=(0) AND datepart(minute,[PYMNTDAT])=(0) AND datepart(second,[PYMNTDAT])=(0) AND datepart(millisecond,[PYMNTDAT])=(0)))
GO
ALTER TABLE [dbo].[PM70500] ADD CONSTRAINT [CK__PM70500__Start_P__6B89A13F] CHECK ((datepart(hour,[Start_PO_Date])=(0) AND datepart(minute,[Start_PO_Date])=(0) AND datepart(second,[Start_PO_Date])=(0) AND datepart(millisecond,[Start_PO_Date])=(0)))
GO
ALTER TABLE [dbo].[PM70500] ADD CONSTRAINT [CK__PM70500__Start_P__6C7DC578] CHECK ((datepart(hour,[Start_Promised_Date])=(0) AND datepart(minute,[Start_Promised_Date])=(0) AND datepart(second,[Start_Promised_Date])=(0) AND datepart(millisecond,[Start_Promised_Date])=(0)))
GO
ALTER TABLE [dbo].[PM70500] ADD CONSTRAINT [CK__PM70500__Start_R__6D71E9B1] CHECK ((datepart(hour,[Start_Required_Date])=(0) AND datepart(minute,[Start_Required_Date])=(0) AND datepart(second,[Start_Required_Date])=(0) AND datepart(millisecond,[Start_Required_Date])=(0)))
GO
ALTER TABLE [dbo].[PM70500] ADD CONSTRAINT [CK__PM70500__STARTRE__7DA8517A] CHECK ((datepart(hour,[STARTRELEASEBYDATE])=(0) AND datepart(minute,[STARTRELEASEBYDATE])=(0) AND datepart(second,[STARTRELEASEBYDATE])=(0) AND datepart(millisecond,[STARTRELEASEBYDATE])=(0)))
GO
ALTER TABLE [dbo].[PM70500] ADD CONSTRAINT [CK__PM70500__STDISCD__6F5A3223] CHECK ((datepart(hour,[STDISCDT])=(0) AND datepart(minute,[STDISCDT])=(0) AND datepart(second,[STDISCDT])=(0) AND datepart(millisecond,[STDISCDT])=(0)))
GO
ALTER TABLE [dbo].[PM70500] ADD CONSTRAINT [CK__PM70500__STPSTDD__72369ECE] CHECK ((datepart(hour,[STPSTDDT])=(0) AND datepart(minute,[STPSTDDT])=(0) AND datepart(second,[STPSTDDT])=(0) AND datepart(millisecond,[STPSTDDT])=(0)))
GO
ALTER TABLE [dbo].[PM70500] ADD CONSTRAINT [CK__PM70500__STRCTDT__7BC00908] CHECK ((datepart(hour,[STRCTDT])=(0) AND datepart(minute,[STRCTDT])=(0) AND datepart(second,[STRCTDT])=(0) AND datepart(millisecond,[STRCTDT])=(0)))
GO
ALTER TABLE [dbo].[PM70500] ADD CONSTRAINT [CK__PM70500__STTCHKD__71427A95] CHECK ((datepart(hour,[STTCHKDT])=(0) AND datepart(minute,[STTCHKDT])=(0) AND datepart(second,[STTCHKDT])=(0) AND datepart(millisecond,[STTCHKDT])=(0)))
GO
ALTER TABLE [dbo].[PM70500] ADD CONSTRAINT [CK__PM70500__STTDOCD__704E565C] CHECK ((datepart(hour,[STTDOCDT])=(0) AND datepart(minute,[STTDOCDT])=(0) AND datepart(second,[STTDOCDT])=(0) AND datepart(millisecond,[STTDOCDT])=(0)))
GO
ALTER TABLE [dbo].[PM70500] ADD CONSTRAINT [CK__PM70500__STTDUED__6E660DEA] CHECK ((datepart(hour,[STTDUEDT])=(0) AND datepart(minute,[STTDUEDT])=(0) AND datepart(second,[STTDUEDT])=(0) AND datepart(millisecond,[STTDUEDT])=(0)))
GO
ALTER TABLE [dbo].[PM70500] ADD CONSTRAINT [PKPM70500] PRIMARY KEY NONCLUSTERED  ([RPTGRIND], [RTPACHIN], [RTGRSBIN]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[RPTGRIND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[RTPACHIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM70500].[RTGRSBIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[ASKECHTM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[EXPTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM70500].[FILEXPNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[IFFILXST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM70500].[FINRPTNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[PRNTOFIL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[PRTOPRTR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[PRTOSCRN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[SORTBY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[SORTBY2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[HISTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM70500].[PYMNTDAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[VOIDONLY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[EXCLVOID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[Include_Canceled]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM70500].[DATEOVERDUE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[Days_Overdue]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[POP_Date_Selection]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[Include_Closed]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[Include_Released]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[AGEBY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[COMPTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM70500].[STVNDRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM70500].[STVNDNAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM70500].[STVNDCLS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM70500].[STTSTATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM70500].[STRTZPCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM70500].[STRTPHON]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM70500].[STRTUDEF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM70500].[STTCNTCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM70500].[Start_PO_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM70500].[STTSHNAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM70500].[STTLOCID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM70500].[Start_Promised_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM70500].[Start_Required_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[STVNSTUS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[STT1099T]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[STPERIOD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[STRTYEAR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM70500].[STTABYTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM70500].[STRTPRTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM70500].[STTDUEDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM70500].[STDISCDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[ALORANGE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM70500].[STTACNCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM70500].[STDOCNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM70500].[STTDOCDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[STDOCTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM70500].[STVCHNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM70500].[STTITNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM70500].[STCHKNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM70500].[STTCHKDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM70500].[STCHBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM70500].[STBCHSRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM70500].[STBCHNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM70500].[STPSTDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM70500].[STCLSDSC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM70500].[ENDVNDID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM70500].[ENDVNDNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM70500].[ENDVNCLS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM70500].[ENDSTATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM70500].[ENDZIPCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM70500].[ENPHONBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM70500].[End_PO_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM70500].[ENUSRDEF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM70500].[ENDLOCID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM70500].[ENITMNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM70500].[End_Required_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM70500].[End_Promised_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM70500].[ENDVNDCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM70500].[ENDSHNAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[ENVNSTTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[E1099TYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[ENDPEROD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[ENDYEAR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM70500].[ENAMBYTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM70500].[ENPRYRTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM70500].[ENDDUEDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM70500].[ENDISCDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[ALORNGE2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM70500].[ENAUCNCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM70500].[ENDOCNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM70500].[ENDDOCDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[ENDOCTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM70500].[ENVCHNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM70500].[ENCHKNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM70500].[ENDCHKDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM70500].[ENCHBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM70500].[ENBCHSRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM70500].[ENDBNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM70500].[ENPSTDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM70500].[ENCLDSCR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM70500].[AGNGDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[PBSDCDTK]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[PBSDUDTK]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[PBSDSDTK]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[PBSCHDTK]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[PBSPTDTK]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[PBEDCDTK]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[PBEDUDTK]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[PBEDSDTK]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[PBECHDTK]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[PBEPDTKN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[PBCDTTKN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[DETLDRPT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[SINGACT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM70500].[STTACNUM_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM70500].[STTACNUM_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM70500].[STTACNUM_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM70500].[STTACNUM_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM70500].[EACCNBR_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM70500].[EACCNBR_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM70500].[EACCNBR_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM70500].[EACCNBR_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM70500].[STRPONUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM70500].[ENDPONUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM70500].[EndPOPRcptNum]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM70500].[StartPOPRcptNum]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM70500].[STRCREAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM70500].[STRCTDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM70500].[ENRCTDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM70500].[STRCTNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM70500].[ENRCTNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM70500].[ENDCREATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[STRPOSTA]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[ENDPOSTA]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[INCRCPTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[DISSRLOT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM70500].[STRXSRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM70500].[ENTRXSRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[CRBLNCCB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[FLLYPDCB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[ZROBALCB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[EXCLZBAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[NOACTVCB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[Unposted_Applied_CR_Docs]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[Multicurrency_Information]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[Include_Distribution_Typ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM70500].[RPTXRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[RPRTCLMD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[PRTCURIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[INCLFUNC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[STARTLINEORIGIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[ENDLINEORIGIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM70500].[STARTBUYERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM70500].[ENDBUYERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[INCLUDEHOLDPO]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[INCLUDEHOLDPOONLY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM70500].[STARTRELEASEBYDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM70500].[ENDRELEASEBYDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[Include_New]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[Include_Change_Order]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[Include_Received]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[SummaryYear]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[DateSensitivitySumSelect]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM70500].[StartProjNum]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM70500].[EndProjNum]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM70500].[StartCostCatID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM70500].[EndCostCatID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[IncludeApprovedPOsOnly]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[MISC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[INTEREST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM70500].[DIVIDEND]'
GO
GRANT REFERENCES ON  [dbo].[PM70500] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[PM70500] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PM70500] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PM70500] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PM70500] TO [DYNGRP]
GO
