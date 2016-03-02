CREATE TABLE [dbo].[SY40500]
(
[BARULEID] [int] NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BUSALRTID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EMAILMSG] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LSTRWCHKD] [int] NOT NULL,
[INCLDRSLTS] [tinyint] NOT NULL,
[DBNAME] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CMPANYID] [smallint] NOT NULL,
[FREQTYPE] [smallint] NOT NULL,
[FREQINT] [smallint] NOT NULL,
[FRQSUBTYP] [smallint] NOT NULL,
[FRQSUBINT] [smallint] NOT NULL,
[FRQRELINT] [smallint] NOT NULL,
[FRQRCINT] [smallint] NOT NULL,
[STRTTIME] [datetime] NOT NULL,
[ENDTIME] [datetime] NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[ENDDATE] [datetime] NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[CRUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[MDFUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENABLED] [tinyint] NOT NULL,
[KEEPHIST] [tinyint] NOT NULL,
[NMBRTIME] [smallint] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[SCHEDTXT] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY40500] ADD CONSTRAINT [CK__SY40500__ENDTIME__24285DB4] CHECK ((datepart(day,[ENDTIME])=(1) AND datepart(month,[ENDTIME])=(1) AND datepart(year,[ENDTIME])=(1900)))
GO
ALTER TABLE [dbo].[SY40500] ADD CONSTRAINT [CK__SY40500__STRTTIM__2704CA5F] CHECK ((datepart(day,[STRTTIME])=(1) AND datepart(month,[STRTTIME])=(1) AND datepart(year,[STRTTIME])=(1900)))
GO
ALTER TABLE [dbo].[SY40500] ADD CONSTRAINT [CK__SY40500__CREATDD__22401542] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[SY40500] ADD CONSTRAINT [CK__SY40500__ENDDATE__2334397B] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[SY40500] ADD CONSTRAINT [CK__SY40500__MODIFDT__251C81ED] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[SY40500] ADD CONSTRAINT [CK__SY40500__STRTDAT__2610A626] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[SY40500] ADD CONSTRAINT [PKSY40500] PRIMARY KEY NONCLUSTERED  ([BARULEID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SY40500] ON [dbo].[SY40500] ([BUSALRTID], [DBNAME]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5SY40500] ON [dbo].[SY40500] ([BUSALRTID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4SY40500] ON [dbo].[SY40500] ([DBNAME], [BUSALRTID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SY40500] ON [dbo].[SY40500] ([DSCRIPTN], [BUSALRTID], [DBNAME]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40500].[BARULEID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY40500].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY40500].[BUSALRTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY40500].[EMAILMSG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40500].[LSTRWCHKD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40500].[INCLDRSLTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY40500].[DBNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40500].[CMPANYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40500].[FREQTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40500].[FREQINT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40500].[FRQSUBTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40500].[FRQSUBINT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40500].[FRQRELINT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40500].[FRQRCINT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY40500].[STRTTIME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY40500].[ENDTIME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY40500].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY40500].[ENDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY40500].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY40500].[CRUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY40500].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY40500].[MDFUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40500].[ENABLED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40500].[KEEPHIST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40500].[NMBRTIME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SY40500].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY40500].[SCHEDTXT]'
GO
GRANT SELECT ON  [dbo].[SY40500] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY40500] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY40500] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY40500] TO [DYNGRP]
GO
