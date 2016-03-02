CREATE TABLE [dbo].[SY70500]
(
[STDPSSRS] [smallint] NOT NULL,
[ENDPSERS] [smallint] NOT NULL,
[STSERVID] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDSRVID] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FINRPTNM] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRNTNOTS] [tinyint] NOT NULL,
[PRNTTYPE] [smallint] NOT NULL,
[STRTCMNM] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTZPCD] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STWSTNTY] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTCATEG] [smallint] NOT NULL,
[ENDCATEG] [smallint] NOT NULL,
[ENDCMPNM] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDZIPCD] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDWSTYP] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ASKECHTM] [tinyint] NOT NULL,
[INCLGNDS] [tinyint] NOT NULL,
[PRNTOFIL] [tinyint] NOT NULL,
[PRTOPRTR] [tinyint] NOT NULL,
[PRTOSCRN] [tinyint] NOT NULL,
[IFFILXST] [smallint] NOT NULL,
[FILEXPNM] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EXPTTYPE] [smallint] NOT NULL,
[RPTGRIND] [smallint] NOT NULL,
[RTPACHIN] [smallint] NOT NULL,
[RTGRSBIN] [numeric] (19, 5) NOT NULL,
[SORTBY] [smallint] NOT NULL,
[RPTYPSEC] [smallint] NOT NULL,
[ENDUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDUSRNM] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDUSRCL] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDINGDT] [datetime] NOT NULL,
[ENDTKNDT] [smallint] NOT NULL,
[ENDFRSRS] [smallint] NOT NULL,
[STTUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTUSRNM] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTUSRCL] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTNGDT] [datetime] NOT NULL,
[STTOKNDT] [smallint] NOT NULL,
[STTFMSRS] [smallint] NOT NULL,
[STCURRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDCURID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STCURRDESC] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDCURRDESC] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STEXTABID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDEXTABID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STEXTABDESC] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDEXTABDESC] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STICID] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDICID] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STSECMODALTID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STSECROLEID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STSECTASKCAT] [smallint] NOT NULL,
[STSECTASKID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDSECMODALTID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDSECROLEID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDSECTASKCAT] [smallint] NOT NULL,
[ENDSECTASKID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IncludeInactiveUsers] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY70500] ADD CONSTRAINT [CK__SY70500__ENDINGD__1BBE003C] CHECK ((datepart(hour,[ENDINGDT])=(0) AND datepart(minute,[ENDINGDT])=(0) AND datepart(second,[ENDINGDT])=(0) AND datepart(millisecond,[ENDINGDT])=(0)))
GO
ALTER TABLE [dbo].[SY70500] ADD CONSTRAINT [CK__SY70500__STRTNGD__1CB22475] CHECK ((datepart(hour,[STRTNGDT])=(0) AND datepart(minute,[STRTNGDT])=(0) AND datepart(second,[STRTNGDT])=(0) AND datepart(millisecond,[STRTNGDT])=(0)))
GO
ALTER TABLE [dbo].[SY70500] ADD CONSTRAINT [PKSY70500] PRIMARY KEY NONCLUSTERED  ([RPTGRIND], [RTPACHIN], [RTGRSBIN]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70500].[STDPSSRS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70500].[ENDPSERS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70500].[STSERVID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70500].[ENDSRVID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70500].[FINRPTNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70500].[PRNTNOTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70500].[PRNTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70500].[STRTCMNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70500].[STRTZPCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70500].[STWSTNTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70500].[STTCATEG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70500].[ENDCATEG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70500].[ENDCMPNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70500].[ENDZIPCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70500].[ENDWSTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70500].[ASKECHTM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70500].[INCLGNDS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70500].[PRNTOFIL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70500].[PRTOPRTR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70500].[PRTOSCRN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70500].[IFFILXST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70500].[FILEXPNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70500].[EXPTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70500].[RPTGRIND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70500].[RTPACHIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SY70500].[RTGRSBIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70500].[SORTBY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70500].[RPTYPSEC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70500].[ENDUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70500].[ENDUSRNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70500].[ENDUSRCL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY70500].[ENDINGDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70500].[ENDTKNDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70500].[ENDFRSRS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70500].[STTUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70500].[STTUSRNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70500].[STTUSRCL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY70500].[STRTNGDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70500].[STTOKNDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70500].[STTFMSRS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70500].[STCURRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70500].[ENDCURID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70500].[STCURRDESC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70500].[ENDCURRDESC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70500].[STEXTABID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70500].[ENDEXTABID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70500].[STEXTABDESC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70500].[ENDEXTABDESC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70500].[STICID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70500].[ENDICID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70500].[STSECMODALTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70500].[STSECROLEID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70500].[STSECTASKCAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70500].[STSECTASKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70500].[ENDSECMODALTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70500].[ENDSECROLEID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70500].[ENDSECTASKCAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70500].[ENDSECTASKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70500].[IncludeInactiveUsers]'
GO
GRANT SELECT ON  [dbo].[SY70500] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY70500] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY70500] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY70500] TO [DYNGRP]
GO
