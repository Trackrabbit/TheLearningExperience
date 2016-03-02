CREATE TABLE [dbo].[PC70100]
(
[RPTGRIND] [smallint] NOT NULL,
[RTPACHIN] [smallint] NOT NULL,
[RTGRSBIN] [numeric] (19, 5) NOT NULL,
[RPRTNAME] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
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
[SORTBY] [smallint] NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[ENDDATE] [datetime] NOT NULL,
[POSSTATUS] [smallint] NOT NULL,
[HRSTATUS] [smallint] NOT NULL,
[EMPLTYPE] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EEOCLASS_I] [smallint] NOT NULL,
[FLSASTATUS] [smallint] NOT NULL,
[SHOWINACTIVE] [tinyint] NOT NULL,
[STRTCHANGEDT] [datetime] NOT NULL,
[STTUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTDEPT] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRDIVISIONCODE] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTEMPCL] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTEMPID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTLOCID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STARTPLAN] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTJBTIT] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTRPTPOS] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTSPRVSRCD] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDCHANGEDT] [datetime] NOT NULL,
[ENDUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDDEPT] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDDIVISIONCODE] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENEMPCLS] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDEMPL] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDLOCID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDPLAN] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENJBTITL] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDRPTPOS] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDSPRVSRCD] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RANGEBY] [smallint] NOT NULL,
[ASSIGNMENTSTATUS] [smallint] NOT NULL,
[INHERITSTATUS] [smallint] NOT NULL,
[SEATTYPE] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PC70100] ADD CONSTRAINT [CK__PC70100__ENDCHAN__6E028618] CHECK ((datepart(hour,[ENDCHANGEDT])=(0) AND datepart(minute,[ENDCHANGEDT])=(0) AND datepart(second,[ENDCHANGEDT])=(0) AND datepart(millisecond,[ENDCHANGEDT])=(0)))
GO
ALTER TABLE [dbo].[PC70100] ADD CONSTRAINT [CK__PC70100__ENDDATE__6EF6AA51] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[PC70100] ADD CONSTRAINT [CK__PC70100__STRTCHA__6FEACE8A] CHECK ((datepart(hour,[STRTCHANGEDT])=(0) AND datepart(minute,[STRTCHANGEDT])=(0) AND datepart(second,[STRTCHANGEDT])=(0) AND datepart(millisecond,[STRTCHANGEDT])=(0)))
GO
ALTER TABLE [dbo].[PC70100] ADD CONSTRAINT [CK__PC70100__STRTDAT__70DEF2C3] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[PC70100] ADD CONSTRAINT [PKPC70100] PRIMARY KEY NONCLUSTERED  ([RPTGRIND], [RTPACHIN], [RTGRSBIN]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC70100].[RPTGRIND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC70100].[RTPACHIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PC70100].[RTGRSBIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC70100].[RPRTNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC70100].[PRNTNOTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC70100].[PRNTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC70100].[ASKECHTM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC70100].[INCLGNDS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC70100].[PRNTOFIL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC70100].[PRTOPRTR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC70100].[PRTOSCRN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC70100].[IFFILXST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC70100].[FILEXPNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC70100].[EXPTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC70100].[SORTBY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PC70100].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PC70100].[ENDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC70100].[POSSTATUS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC70100].[HRSTATUS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC70100].[EMPLTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC70100].[EEOCLASS_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC70100].[FLSASTATUS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC70100].[SHOWINACTIVE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PC70100].[STRTCHANGEDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC70100].[STTUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC70100].[STRTDEPT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC70100].[STRDIVISIONCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC70100].[STTEMPCL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC70100].[STTEMPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC70100].[STTLOCID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC70100].[STARTPLAN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC70100].[STTJBTIT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC70100].[STRTRPTPOS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC70100].[STRTSPRVSRCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PC70100].[ENDCHANGEDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC70100].[ENDUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC70100].[ENDDEPT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC70100].[ENDDIVISIONCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC70100].[ENEMPCLS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC70100].[ENDEMPL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC70100].[ENDLOCID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC70100].[ENDPLAN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC70100].[ENJBTITL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC70100].[ENDRPTPOS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC70100].[ENDSPRVSRCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC70100].[RANGEBY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC70100].[ASSIGNMENTSTATUS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC70100].[INHERITSTATUS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC70100].[SEATTYPE]'
GO
GRANT SELECT ON  [dbo].[PC70100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PC70100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PC70100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PC70100] TO [DYNGRP]
GO
