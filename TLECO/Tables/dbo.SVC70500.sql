CREATE TABLE [dbo].[SVC70500]
(
[PRTBYSIT] [smallint] NOT NULL,
[PRNTOPTN] [smallint] NOT NULL,
[STTGNDSC] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENGENDSC] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENUSRCAT_1] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENUSRCAT_2] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENUSRCAT_3] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENUSRCAT_4] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENUSRCAT_5] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENUSRCAT_6] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTUCAT_1] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTUCAT_2] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTUCAT_3] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTUCAT_4] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTUCAT_5] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTUCAT_6] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CALLNBST] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CALLNMEN] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CONTNBRS] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CONTNBRE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SRLNBRST] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SRLNBREN] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PMDTLIDS] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PMDTLIDE] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STCUSTID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENCUSTID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTECHID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENTECHID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STOFFID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENOFFID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVCOPT1] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDSVCO1] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STSVCOP1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENSVCOP2] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STSVCOPT3] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENSVCOP3] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STSVCOP4] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENSVCOP4] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STSVCOP5] [tinyint] NOT NULL,
[ENSVCOP5] [tinyint] NOT NULL,
[STSVCOP6] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENSVCOP6] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STSVCOP7] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENSVCOP7] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STSVCOP8] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENSVCOP8] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STSVCOP9] [smallint] NOT NULL,
[ENSVCOP9] [smallint] NOT NULL,
[STSVCO10] [smallint] NOT NULL,
[ENSVCO10] [smallint] NOT NULL,
[STTITNUM] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENITMNBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SRVRECTYPE] [smallint] NOT NULL,
[CONSTS] [smallint] NOT NULL,
[PRVDRINF] [smallint] NOT NULL,
[PRTDSCNT] [tinyint] NOT NULL,
[PRTSVCHS] [tinyint] NOT NULL,
[SVCRPTNM] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRNTNOTS] [tinyint] NOT NULL,
[PRNTTYPE] [smallint] NOT NULL,
[ASKECHTM] [tinyint] NOT NULL,
[INCLGNDS] [tinyint] NOT NULL,
[PRNTOFIL] [tinyint] NOT NULL,
[PRTOPRTR] [tinyint] NOT NULL,
[PRTOSCRN] [tinyint] NOT NULL,
[IFFILXST] [smallint] NOT NULL,
[FILEXPNM] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EXPTTYPE] [smallint] NOT NULL,
[RPTGRIND] [smallint] NOT NULL,
[STTCLASS] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDCLASS] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTDSCR] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDDESCR] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTSCHED] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENSCHDUL] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTLOCCD] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENLOCNCD] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTLOTTY] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENLOTTYP] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTNGDT] [datetime] NOT NULL,
[ENDINGDT] [datetime] NOT NULL,
[ENDTKNDT] [smallint] NOT NULL,
[STTOKNDT] [smallint] NOT NULL,
[STRCTNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENRCTNBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RTPACHIN] [smallint] NOT NULL,
[RTGRSBIN] [numeric] (19, 5) NOT NULL,
[SORTBY] [smallint] NOT NULL,
[PRTSRLOT] [tinyint] NOT NULL,
[INZROQTY] [tinyint] NOT NULL,
[PRTITQTY] [tinyint] NOT NULL,
[STTBINUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENBINNBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STDOCNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDOCNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STDOCTYP] [smallint] NOT NULL,
[ENDOCTYP] [smallint] NOT NULL,
[STTMODUL] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDMODUL] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRXSRC] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENTRXSRC] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STBCHSRC] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENBCHSRC] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STBCHNUM] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDBNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STVNDRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDVNDID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INQTYREQ] [tinyint] NOT NULL,
[INZRORLV] [tinyint] NOT NULL,
[CALSGQTY] [smallint] NOT NULL,
[RCPTOPTS] [smallint] NOT NULL,
[VENDROPT] [smallint] NOT NULL,
[SEGSRTBY] [smallint] NOT NULL,
[SEGMNTRG] [smallint] NOT NULL,
[Start_PriceLevel] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[End_PriceLevel] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Start_RMA_Number] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[End_RMA_Number] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Start_Required_Date] [datetime] NOT NULL,
[End_Required_Date] [datetime] NOT NULL,
[SVC_Print_Open] [tinyint] NOT NULL,
[INCMCINF] [tinyint] NOT NULL,
[PRTCURIN] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC70500] ADD CONSTRAINT [CK__SVC70500__End_Re__67CA2641] CHECK ((datepart(hour,[End_Required_Date])=(0) AND datepart(minute,[End_Required_Date])=(0) AND datepart(second,[End_Required_Date])=(0) AND datepart(millisecond,[End_Required_Date])=(0)))
GO
ALTER TABLE [dbo].[SVC70500] ADD CONSTRAINT [CK__SVC70500__ENDING__66D60208] CHECK ((datepart(hour,[ENDINGDT])=(0) AND datepart(minute,[ENDINGDT])=(0) AND datepart(second,[ENDINGDT])=(0) AND datepart(millisecond,[ENDINGDT])=(0)))
GO
ALTER TABLE [dbo].[SVC70500] ADD CONSTRAINT [CK__SVC70500__Start___69B26EB3] CHECK ((datepart(hour,[Start_Required_Date])=(0) AND datepart(minute,[Start_Required_Date])=(0) AND datepart(second,[Start_Required_Date])=(0) AND datepart(millisecond,[Start_Required_Date])=(0)))
GO
ALTER TABLE [dbo].[SVC70500] ADD CONSTRAINT [CK__SVC70500__STRTNG__68BE4A7A] CHECK ((datepart(hour,[STRTNGDT])=(0) AND datepart(minute,[STRTNGDT])=(0) AND datepart(second,[STRTNGDT])=(0) AND datepart(millisecond,[STRTNGDT])=(0)))
GO
ALTER TABLE [dbo].[SVC70500] ADD CONSTRAINT [PKSVC70500] PRIMARY KEY NONCLUSTERED  ([RPTGRIND], [RTPACHIN], [RTGRSBIN]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC70500].[PRTBYSIT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC70500].[PRNTOPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[STTGNDSC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[ENGENDSC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[ENUSRCAT_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[ENUSRCAT_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[ENUSRCAT_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[ENUSRCAT_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[ENUSRCAT_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[ENUSRCAT_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[STRTUCAT_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[STRTUCAT_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[STRTUCAT_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[STRTUCAT_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[STRTUCAT_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[STRTUCAT_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[CALLNBST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[CALLNMEN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[CONTNBRS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[CONTNBRE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[SRLNBRST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[SRLNBREN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[PMDTLIDS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[PMDTLIDE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[STCUSTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[ENCUSTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[STTECHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[ENTECHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[STOFFID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[ENOFFID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[SVCOPT1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[ENDSVCO1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[STSVCOP1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[ENSVCOP2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[STSVCOPT3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[ENSVCOP3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[STSVCOP4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[ENSVCOP4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC70500].[STSVCOP5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC70500].[ENSVCOP5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[STSVCOP6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[ENSVCOP6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[STSVCOP7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[ENSVCOP7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[STSVCOP8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[ENSVCOP8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC70500].[STSVCOP9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC70500].[ENSVCOP9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC70500].[STSVCO10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC70500].[ENSVCO10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[STTITNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[ENITMNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC70500].[SRVRECTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC70500].[CONSTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC70500].[PRVDRINF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC70500].[PRTDSCNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC70500].[PRTSVCHS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[SVCRPTNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC70500].[PRNTNOTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC70500].[PRNTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC70500].[ASKECHTM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC70500].[INCLGNDS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC70500].[PRNTOFIL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC70500].[PRTOPRTR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC70500].[PRTOSCRN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC70500].[IFFILXST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[FILEXPNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC70500].[EXPTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC70500].[RPTGRIND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[STTCLASS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[ENDCLASS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[STRTDSCR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[ENDDESCR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[STTSCHED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[ENSCHDUL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[STTLOCCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[ENLOCNCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[STTLOTTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[ENLOTTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC70500].[STRTNGDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC70500].[ENDINGDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC70500].[ENDTKNDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC70500].[STTOKNDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[STRCTNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[ENRCTNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC70500].[RTPACHIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC70500].[RTGRSBIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC70500].[SORTBY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC70500].[PRTSRLOT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC70500].[INZROQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC70500].[PRTITQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[STTBINUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[ENBINNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[STDOCNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[ENDOCNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC70500].[STDOCTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC70500].[ENDOCTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[STTMODUL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[ENDMODUL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[STRXSRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[ENTRXSRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[STBCHSRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[ENBCHSRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[STBCHNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[ENDBNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[STVNDRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[ENDVNDID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC70500].[INQTYREQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC70500].[INZRORLV]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC70500].[CALSGQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC70500].[RCPTOPTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC70500].[VENDROPT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC70500].[SEGSRTBY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC70500].[SEGMNTRG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[Start_PriceLevel]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[End_PriceLevel]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[Start_RMA_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC70500].[End_RMA_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC70500].[Start_Required_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC70500].[End_Required_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC70500].[SVC_Print_Open]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC70500].[INCMCINF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC70500].[PRTCURIN]'
GO
GRANT SELECT ON  [dbo].[SVC70500] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC70500] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC70500] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC70500] TO [DYNGRP]
GO
