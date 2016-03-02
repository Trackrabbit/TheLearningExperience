CREATE TABLE [dbo].[SY70501]
(
[ORIGINGB] [smallint] NOT NULL,
[STRTYEAR] [smallint] NOT NULL,
[ENDYEAR] [smallint] NOT NULL,
[STICID] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDICID] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FINRPTNM] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SJRNTPRT] [tinyint] NOT NULL,
[PRNTNOTS] [tinyint] NOT NULL,
[PRNTTYPE] [smallint] NOT NULL,
[ASKECHTM] [tinyint] NOT NULL,
[PRNTOFIL] [tinyint] NOT NULL,
[PRTOPRTR] [tinyint] NOT NULL,
[PRTOSCRN] [tinyint] NOT NULL,
[INCLGNDS] [tinyint] NOT NULL,
[IFFILXST] [smallint] NOT NULL,
[FILEXPNM] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EXPTTYPE] [smallint] NOT NULL,
[RPTGRIND] [smallint] NOT NULL,
[RTPACHIN] [smallint] NOT NULL,
[RTGRSBIN] [numeric] (19, 5) NOT NULL,
[SORTBY] [smallint] NOT NULL,
[STTLOCID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTLOCNM] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STADDCTT] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SSRCEDOC] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SSDOCDSC] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTSTATE] [char] (29) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTZPCD] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTFLSRS] [smallint] NOT NULL,
[STARTSRS] [smallint] NOT NULL,
[STTRXSRC] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTNOTNM] [char] (45) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SRPTGRNM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTPALNM] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STENDTYP] [smallint] NOT NULL,
[STTCRDNM] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTPYTID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTSHMTH] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SRTCOMSR] [smallint] NOT NULL,
[SRTCOMID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDLOCID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDLOCNM] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDADDCT] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDSRCDC] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDSDDSC] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDSTATE] [char] (29) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDZIPCD] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDFLSRS] [smallint] NOT NULL,
[ENDSERIS] [smallint] NOT NULL,
[ENDTRXSR] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDNOTNM] [char] (45) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDRPGNM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDPALNM] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDENDTY] [smallint] NOT NULL,
[ENDCRDNM] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDPYTID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDSHMTH] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDCOMID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDCOMSR] [smallint] NOT NULL,
[ENDNAME] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STARTID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTNAME] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTCITY] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDCITY] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDCNTRY] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTCNTRY] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LBLFRMAT] [smallint] NOT NULL,
[NUMOCPIS] [smallint] NOT NULL,
[NUMACROS] [smallint] NOT NULL,
[INCADADR] [tinyint] NOT NULL,
[INCCNTCT] [tinyint] NOT NULL,
[FRCEUPCS] [tinyint] NOT NULL,
[YEAR1] [smallint] NOT NULL,
[PRNTDTLD] [tinyint] NOT NULL,
[ENTXDDSC] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETXDTLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETXSCHDS] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETXSCHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTXDDSC] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTXDTID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STXSCDSC] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STXSCHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDPEROD] [smallint] NOT NULL,
[STPERIOD] [smallint] NOT NULL,
[STDTLTYP] [smallint] NOT NULL,
[ENDETTYP] [smallint] NOT NULL,
[STXIDNUM] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETXIDNBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[HISTTYPE] [smallint] NOT NULL,
[STBCHNUM] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[STDOCNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDBNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDOCNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDDATE] [datetime] NOT NULL,
[PRNSHPTO] [tinyint] NOT NULL,
[PRTBLLTO] [tinyint] NOT NULL,
[ARVLDEPART] [smallint] NOT NULL,
[STCUSTID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENCUSTID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STSOPTYP] [smallint] NOT NULL,
[EDSOPTYP] [smallint] NOT NULL,
[UPSIDNBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTDOCDT] [datetime] NOT NULL,
[ENDDOCDT] [datetime] NOT NULL,
[STDOCTYP] [smallint] NOT NULL,
[ENDOCTYP] [smallint] NOT NULL,
[STVNDRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDVNDID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRMTKDT] [smallint] NOT NULL,
[ENRMTKDT] [smallint] NOT NULL,
[STTXUSR1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENTXUSR1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTOKNDT] [smallint] NOT NULL,
[ENDTKNDT] [smallint] NOT NULL,
[STTXPYDT] [datetime] NOT NULL,
[ENTXPYDT] [datetime] NOT NULL,
[STTPSTDT] [datetime] NOT NULL,
[ENDPSTDT] [datetime] NOT NULL,
[STGENINT1] [smallint] NOT NULL,
[STDECLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDDECLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STINTRSTTRTRNID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDINTRSTTRTRNID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTCC] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDTCC] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTXRGNNUM] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDTXRGNNUM] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTAMNT] [numeric] (19, 5) NOT NULL,
[ENDAMNT] [numeric] (19, 5) NOT NULL,
[GROUPBOX] [smallint] NOT NULL,
[GROUPBX2] [smallint] NOT NULL,
[EXCLVOID] [tinyint] NOT NULL,
[PRNTCSV] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY70501] ADD CONSTRAINT [CK__SY70501__ENDDATE__1F8E9120] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[SY70501] ADD CONSTRAINT [CK__SY70501__ENDDOCD__2082B559] CHECK ((datepart(hour,[ENDDOCDT])=(0) AND datepart(minute,[ENDDOCDT])=(0) AND datepart(second,[ENDDOCDT])=(0) AND datepart(millisecond,[ENDDOCDT])=(0)))
GO
ALTER TABLE [dbo].[SY70501] ADD CONSTRAINT [CK__SY70501__ENDPSTD__2176D992] CHECK ((datepart(hour,[ENDPSTDT])=(0) AND datepart(minute,[ENDPSTDT])=(0) AND datepart(second,[ENDPSTDT])=(0) AND datepart(millisecond,[ENDPSTDT])=(0)))
GO
ALTER TABLE [dbo].[SY70501] ADD CONSTRAINT [CK__SY70501__ENTXPYD__226AFDCB] CHECK ((datepart(hour,[ENTXPYDT])=(0) AND datepart(minute,[ENTXPYDT])=(0) AND datepart(second,[ENTXPYDT])=(0) AND datepart(millisecond,[ENTXPYDT])=(0)))
GO
ALTER TABLE [dbo].[SY70501] ADD CONSTRAINT [CK__SY70501__STRTDAT__235F2204] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[SY70501] ADD CONSTRAINT [CK__SY70501__STTDOCD__2453463D] CHECK ((datepart(hour,[STTDOCDT])=(0) AND datepart(minute,[STTDOCDT])=(0) AND datepart(second,[STTDOCDT])=(0) AND datepart(millisecond,[STTDOCDT])=(0)))
GO
ALTER TABLE [dbo].[SY70501] ADD CONSTRAINT [CK__SY70501__STTPSTD__25476A76] CHECK ((datepart(hour,[STTPSTDT])=(0) AND datepart(minute,[STTPSTDT])=(0) AND datepart(second,[STTPSTDT])=(0) AND datepart(millisecond,[STTPSTDT])=(0)))
GO
ALTER TABLE [dbo].[SY70501] ADD CONSTRAINT [CK__SY70501__STTXPYD__263B8EAF] CHECK ((datepart(hour,[STTXPYDT])=(0) AND datepart(minute,[STTXPYDT])=(0) AND datepart(second,[STTXPYDT])=(0) AND datepart(millisecond,[STTXPYDT])=(0)))
GO
ALTER TABLE [dbo].[SY70501] ADD CONSTRAINT [PKSY70501] PRIMARY KEY NONCLUSTERED  ([RPTGRIND], [RTPACHIN], [RTGRSBIN]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70501].[ORIGINGB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70501].[STRTYEAR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70501].[ENDYEAR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[STICID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[ENDICID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[FINRPTNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70501].[SJRNTPRT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70501].[PRNTNOTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70501].[PRNTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70501].[ASKECHTM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70501].[PRNTOFIL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70501].[PRTOPRTR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70501].[PRTOSCRN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70501].[INCLGNDS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70501].[IFFILXST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[FILEXPNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70501].[EXPTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70501].[RPTGRIND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70501].[RTPACHIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SY70501].[RTGRSBIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70501].[SORTBY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[STTLOCID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[STTLOCNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[STADDCTT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[SSRCEDOC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[SSDOCDSC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[STTSTATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[STRTZPCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70501].[STTFLSRS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70501].[STARTSRS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[STTRXSRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[STTNOTNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[SRPTGRNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[STTPALNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[STTUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70501].[STENDTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[STTCRDNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[STTPYTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[STTSHMTH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70501].[SRTCOMSR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[SRTCOMID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[ENDLOCID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[ENDLOCNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[ENDADDCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[ENDSRCDC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[ENDSDDSC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[ENDSTATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[ENDZIPCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70501].[ENDFLSRS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70501].[ENDSERIS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[ENDTRXSR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[ENDNOTNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[ENDRPGNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[ENDPALNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[ENDUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70501].[ENDENDTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[ENDCRDNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[ENDPYTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[ENDSHMTH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[ENDCOMID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70501].[ENDCOMSR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[ENDNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[ENDID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[STARTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[STRTNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[STRTCITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[ENDCITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[ENDCNTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[STTCNTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70501].[LBLFRMAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70501].[NUMOCPIS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70501].[NUMACROS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70501].[INCADADR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70501].[INCCNTCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70501].[FRCEUPCS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70501].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70501].[PRNTDTLD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[ENTXDDSC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[ETXDTLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[ETXSCHDS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[ETXSCHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[STTXDDSC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[STTXDTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[STXSCDSC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[STXSCHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70501].[ENDPEROD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70501].[STPERIOD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70501].[STDTLTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70501].[ENDETTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[STXIDNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[ETXIDNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70501].[HISTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[STBCHNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY70501].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[STDOCNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[ENDBNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[ENDOCNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY70501].[ENDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70501].[PRNSHPTO]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70501].[PRTBLLTO]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70501].[ARVLDEPART]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[STCUSTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[ENCUSTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70501].[STSOPTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70501].[EDSOPTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[UPSIDNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY70501].[STTDOCDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY70501].[ENDDOCDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70501].[STDOCTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70501].[ENDOCTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[STVNDRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[ENDVNDID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70501].[STRMTKDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70501].[ENRMTKDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[STTXUSR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[ENTXUSR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70501].[STTOKNDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70501].[ENDTKNDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY70501].[STTXPYDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY70501].[ENTXPYDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY70501].[STTPSTDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY70501].[ENDPSTDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70501].[STGENINT1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[STDECLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[ENDDECLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[STINTRSTTRTRNID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[ENDINTRSTTRTRNID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[STTCC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[ENDTCC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[STTXRGNNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70501].[ENDTXRGNNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SY70501].[STRTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SY70501].[ENDAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70501].[GROUPBOX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70501].[GROUPBX2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70501].[EXCLVOID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70501].[PRNTCSV]'
GO
GRANT SELECT ON  [dbo].[SY70501] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY70501] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY70501] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY70501] TO [DYNGRP]
GO
