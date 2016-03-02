CREATE TABLE [dbo].[RM00700]
(
[AGNGDTKN] [smallint] NOT NULL,
[RANGEBY] [smallint] NOT NULL,
[PRTDBRCD] [tinyint] NOT NULL,
[PRPSTJCB] [tinyint] NOT NULL,
[PRSBDRCB] [tinyint] NOT NULL,
[ENDDOCDT] [datetime] NOT NULL,
[FILEXPNM] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FINRPTNM] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ASKECHTM] [tinyint] NOT NULL,
[INCLGNDS] [tinyint] NOT NULL,
[IFFILXST] [smallint] NOT NULL,
[EXPTTYPE] [smallint] NOT NULL,
[PRNTNOTS] [tinyint] NOT NULL,
[CSTSRTBY] [smallint] NOT NULL,
[PRNTOFIL] [tinyint] NOT NULL,
[PRTOPRTR] [tinyint] NOT NULL,
[PRTOSCRN] [tinyint] NOT NULL,
[PRNTTYPE] [smallint] NOT NULL,
[RPTGRIND] [smallint] NOT NULL,
[RTGRSBIN] [numeric] (19, 5) NOT NULL,
[RTPACHIN] [smallint] NOT NULL,
[SORTBY] [smallint] NOT NULL,
[ENFULNAM] [char] (41) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDADDCT] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDCLSID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENCUSTID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENCSTNAM] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDPHON1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENSLSTER] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENSPSNID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDSHNAM] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDSTATE] [char] (29) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENUSRDF1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDZIPCD] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDINGDT] [datetime] NOT NULL,
[ENCLDSCR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENLSTNAM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDVENDR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDEMPLY] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDCITY] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDOCNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDOCTYP] [smallint] NOT NULL,
[ENDPEROD] [smallint] NOT NULL,
[ENDPSTDT] [datetime] NOT NULL,
[ENDBNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENBCHSRC] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENTRXSRC] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENRMTKDT] [smallint] NOT NULL,
[ENSLSAMT] [numeric] (19, 5) NOT NULL,
[ENPRMRGN] [numeric] (19, 5) NOT NULL,
[STRTFLNM] [char] (41) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRMTKDT] [smallint] NOT NULL,
[STADDCTT] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTCLSID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STCUSTID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STCUSTNM] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[STRTNGDT] [datetime] NOT NULL,
[STTPHON1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STSLSTER] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STSPRSID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTSHNAM] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTSTATE] [char] (29) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTUDEF1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTZPCD] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STCLSDSC] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTLSTNM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTVNDR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTEMPL] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTCITY] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STMTCYCL] [smallint] NOT NULL,
[ENSTCYCL] [smallint] NOT NULL,
[STDOCNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTDOCTP] [smallint] NOT NULL,
[STTDOCDT] [datetime] NOT NULL,
[STPERIOD] [smallint] NOT NULL,
[STTPSTDT] [datetime] NOT NULL,
[STBCHNUM] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STBCHSRC] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRXSRC] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STPRMRGN] [numeric] (19, 5) NOT NULL,
[STSLSAMT] [numeric] (19, 5) NOT NULL,
[INACTIVE] [tinyint] NOT NULL,
[BALNCTYP] [smallint] NOT NULL,
[ACTIVE] [tinyint] NOT NULL,
[HISTTYPE] [smallint] NOT NULL,
[TRANTOPR] [tinyint] NOT NULL,
[PRNTDTLD] [tinyint] NOT NULL,
[CUTOFDAT] [datetime] NOT NULL,
[CRBLNCCB] [tinyint] NOT NULL,
[FLLYPDCB] [tinyint] NOT NULL,
[NOACTVCB] [tinyint] NOT NULL,
[ZROBALCB] [tinyint] NOT NULL,
[PASTDUCB] [tinyint] NOT NULL,
[WHICHRPT] [smallint] NOT NULL,
[PERTYPGB] [smallint] NOT NULL,
[YEAR1] [smallint] NOT NULL,
[STTACNUM_1] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTACNUM_2] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTACNUM_3] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTACNUM_4] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EACCNBR_1] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EACCNBR_2] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EACCNBR_3] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EACCNBR_4] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEGMNTRG] [smallint] NOT NULL,
[ENITMNBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDSERLT] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTITNUM] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTSRLT] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRXTYPE] [smallint] NOT NULL,
[INCLTXDT] [tinyint] NOT NULL,
[INCLPYMT] [tinyint] NOT NULL,
[STQUOEXD] [datetime] NOT NULL,
[EDQUOEXD] [datetime] NOT NULL,
[STREQDAT] [datetime] NOT NULL,
[ENDREQDT] [datetime] NOT NULL,
[STTLOCCD] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENLOCNCD] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STMSTNMB] [int] NOT NULL,
[EDMASNMB] [int] NOT NULL,
[STPRHDID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENPRHDID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTDOCID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDDOCID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STSOPTYP] [smallint] NOT NULL,
[EDSOPTYP] [smallint] NOT NULL,
[DISCOMP] [tinyint] NOT NULL,
[DISPRCHD] [tinyint] NOT NULL,
[DISSRLOT] [tinyint] NOT NULL,
[DISUSRDF] [tinyint] NOT NULL,
[EXCCOMP] [tinyint] NOT NULL,
[EXCFULFIL] [tinyint] NOT NULL,
[INCMCINF] [tinyint] NOT NULL,
[RPTXRATE] [numeric] (19, 7) NOT NULL,
[RPRTCLMD] [smallint] NOT NULL,
[PRTCURIN] [smallint] NOT NULL,
[CONNAACT] [tinyint] NOT NULL,
[DateSensitivitySumSelect] [smallint] NOT NULL,
[SummaryYear] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RM00700] ADD CONSTRAINT [CK__RM00700__CUTOFDA__0DDEB943] CHECK ((datepart(hour,[CUTOFDAT])=(0) AND datepart(minute,[CUTOFDAT])=(0) AND datepart(second,[CUTOFDAT])=(0) AND datepart(millisecond,[CUTOFDAT])=(0)))
GO
ALTER TABLE [dbo].[RM00700] ADD CONSTRAINT [CK__RM00700__EDQUOEX__0FC701B5] CHECK ((datepart(hour,[EDQUOEXD])=(0) AND datepart(minute,[EDQUOEXD])=(0) AND datepart(second,[EDQUOEXD])=(0) AND datepart(millisecond,[EDQUOEXD])=(0)))
GO
ALTER TABLE [dbo].[RM00700] ADD CONSTRAINT [CK__RM00700__ENDDOCD__0731BBB4] CHECK ((datepart(hour,[ENDDOCDT])=(0) AND datepart(minute,[ENDDOCDT])=(0) AND datepart(second,[ENDDOCDT])=(0) AND datepart(millisecond,[ENDDOCDT])=(0)))
GO
ALTER TABLE [dbo].[RM00700] ADD CONSTRAINT [CK__RM00700__ENDINGD__0825DFED] CHECK ((datepart(hour,[ENDINGDT])=(0) AND datepart(minute,[ENDINGDT])=(0) AND datepart(second,[ENDINGDT])=(0) AND datepart(millisecond,[ENDINGDT])=(0)))
GO
ALTER TABLE [dbo].[RM00700] ADD CONSTRAINT [CK__RM00700__ENDPSTD__091A0426] CHECK ((datepart(hour,[ENDPSTDT])=(0) AND datepart(minute,[ENDPSTDT])=(0) AND datepart(second,[ENDPSTDT])=(0) AND datepart(millisecond,[ENDPSTDT])=(0)))
GO
ALTER TABLE [dbo].[RM00700] ADD CONSTRAINT [CK__RM00700__ENDREQD__11AF4A27] CHECK ((datepart(hour,[ENDREQDT])=(0) AND datepart(minute,[ENDREQDT])=(0) AND datepart(second,[ENDREQDT])=(0) AND datepart(millisecond,[ENDREQDT])=(0)))
GO
ALTER TABLE [dbo].[RM00700] ADD CONSTRAINT [CK__RM00700__STQUOEX__0ED2DD7C] CHECK ((datepart(hour,[STQUOEXD])=(0) AND datepart(minute,[STQUOEXD])=(0) AND datepart(second,[STQUOEXD])=(0) AND datepart(millisecond,[STQUOEXD])=(0)))
GO
ALTER TABLE [dbo].[RM00700] ADD CONSTRAINT [CK__RM00700__STREQDA__10BB25EE] CHECK ((datepart(hour,[STREQDAT])=(0) AND datepart(minute,[STREQDAT])=(0) AND datepart(second,[STREQDAT])=(0) AND datepart(millisecond,[STREQDAT])=(0)))
GO
ALTER TABLE [dbo].[RM00700] ADD CONSTRAINT [CK__RM00700__STRTDAT__0A0E285F] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[RM00700] ADD CONSTRAINT [CK__RM00700__STRTNGD__0B024C98] CHECK ((datepart(hour,[STRTNGDT])=(0) AND datepart(minute,[STRTNGDT])=(0) AND datepart(second,[STRTNGDT])=(0) AND datepart(millisecond,[STRTNGDT])=(0)))
GO
ALTER TABLE [dbo].[RM00700] ADD CONSTRAINT [CK__RM00700__STTDOCD__0BF670D1] CHECK ((datepart(hour,[STTDOCDT])=(0) AND datepart(minute,[STTDOCDT])=(0) AND datepart(second,[STTDOCDT])=(0) AND datepart(millisecond,[STTDOCDT])=(0)))
GO
ALTER TABLE [dbo].[RM00700] ADD CONSTRAINT [CK__RM00700__STTPSTD__0CEA950A] CHECK ((datepart(hour,[STTPSTDT])=(0) AND datepart(minute,[STTPSTDT])=(0) AND datepart(second,[STTPSTDT])=(0) AND datepart(millisecond,[STTPSTDT])=(0)))
GO
ALTER TABLE [dbo].[RM00700] ADD CONSTRAINT [PKRM00700] PRIMARY KEY NONCLUSTERED  ([RPTGRIND], [RTPACHIN], [RTGRSBIN]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00700].[AGNGDTKN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00700].[RANGEBY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00700].[PRTDBRCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00700].[PRPSTJCB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00700].[PRSBDRCB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM00700].[ENDDOCDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00700].[FILEXPNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00700].[FINRPTNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00700].[ASKECHTM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00700].[INCLGNDS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00700].[IFFILXST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00700].[EXPTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00700].[PRNTNOTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00700].[CSTSRTBY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00700].[PRNTOFIL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00700].[PRTOPRTR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00700].[PRTOSCRN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00700].[PRNTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00700].[RPTGRIND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00700].[RTGRSBIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00700].[RTPACHIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00700].[SORTBY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00700].[ENFULNAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00700].[ENDADDCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00700].[ENDCLSID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00700].[ENCUSTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00700].[ENCSTNAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00700].[ENDPHON1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00700].[ENSLSTER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00700].[ENSPSNID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00700].[ENDSHNAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00700].[ENDSTATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00700].[ENUSRDF1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00700].[ENDZIPCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM00700].[ENDINGDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00700].[ENCLDSCR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00700].[ENLSTNAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00700].[ENDVENDR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00700].[ENDEMPLY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00700].[ENDCITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00700].[ENDOCNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00700].[ENDOCTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00700].[ENDPEROD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM00700].[ENDPSTDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00700].[ENDBNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00700].[ENBCHSRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00700].[ENTRXSRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00700].[ENRMTKDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00700].[ENSLSAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00700].[ENPRMRGN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00700].[STRTFLNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00700].[STRMTKDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00700].[STADDCTT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00700].[STTCLSID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00700].[STCUSTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00700].[STCUSTNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM00700].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM00700].[STRTNGDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00700].[STTPHON1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00700].[STSLSTER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00700].[STSPRSID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00700].[STTSHNAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00700].[STTSTATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00700].[STTUDEF1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00700].[STRTZPCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00700].[STCLSDSC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00700].[STTLSTNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00700].[STRTVNDR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00700].[STRTEMPL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00700].[STRTCITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00700].[STMTCYCL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00700].[ENSTCYCL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00700].[STDOCNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00700].[STTDOCTP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM00700].[STTDOCDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00700].[STPERIOD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM00700].[STTPSTDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00700].[STBCHNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00700].[STBCHSRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00700].[STRXSRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00700].[STPRMRGN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00700].[STSLSAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00700].[INACTIVE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00700].[BALNCTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00700].[ACTIVE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00700].[HISTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00700].[TRANTOPR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00700].[PRNTDTLD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM00700].[CUTOFDAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00700].[CRBLNCCB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00700].[FLLYPDCB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00700].[NOACTVCB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00700].[ZROBALCB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00700].[PASTDUCB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00700].[WHICHRPT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00700].[PERTYPGB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00700].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00700].[STTACNUM_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00700].[STTACNUM_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00700].[STTACNUM_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00700].[STTACNUM_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00700].[EACCNBR_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00700].[EACCNBR_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00700].[EACCNBR_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00700].[EACCNBR_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00700].[SEGMNTRG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00700].[ENITMNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00700].[ENDSERLT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00700].[STTITNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00700].[STRTSRLT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00700].[TRXTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00700].[INCLTXDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00700].[INCLPYMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM00700].[STQUOEXD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM00700].[EDQUOEXD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM00700].[STREQDAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM00700].[ENDREQDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00700].[STTLOCCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00700].[ENLOCNCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00700].[STMSTNMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00700].[EDMASNMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00700].[STPRHDID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00700].[ENPRHDID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00700].[STTDOCID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00700].[ENDDOCID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00700].[STSOPTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00700].[EDSOPTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00700].[DISCOMP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00700].[DISPRCHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00700].[DISSRLOT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00700].[DISUSRDF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00700].[EXCCOMP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00700].[EXCFULFIL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00700].[INCMCINF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00700].[RPTXRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00700].[RPRTCLMD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00700].[PRTCURIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00700].[CONNAACT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00700].[DateSensitivitySumSelect]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00700].[SummaryYear]'
GO
GRANT REFERENCES ON  [dbo].[RM00700] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[RM00700] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[RM00700] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[RM00700] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[RM00700] TO [DYNGRP]
GO
