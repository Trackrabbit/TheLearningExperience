CREATE TABLE [dbo].[SVC40500]
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
ALTER TABLE [dbo].[SVC40500] ADD CONSTRAINT [CK__SVC40500__ENDTIM__611D28B2] CHECK ((datepart(day,[ENDTIME])=(1) AND datepart(month,[ENDTIME])=(1) AND datepart(year,[ENDTIME])=(1900)))
GO
ALTER TABLE [dbo].[SVC40500] ADD CONSTRAINT [CK__SVC40500__STRTTI__63F9955D] CHECK ((datepart(day,[STRTTIME])=(1) AND datepart(month,[STRTTIME])=(1) AND datepart(year,[STRTTIME])=(1900)))
GO
ALTER TABLE [dbo].[SVC40500] ADD CONSTRAINT [CK__SVC40500__CREATD__5F34E040] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[SVC40500] ADD CONSTRAINT [CK__SVC40500__ENDDAT__60290479] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC40500] ADD CONSTRAINT [CK__SVC40500__MODIFD__62114CEB] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[SVC40500] ADD CONSTRAINT [CK__SVC40500__STRTDA__63057124] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC40500] ADD CONSTRAINT [PKSVC40500] PRIMARY KEY NONCLUSTERED  ([BARULEID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC40500] ON [dbo].[SVC40500] ([BUSALRTID], [DBNAME]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5SVC40500] ON [dbo].[SVC40500] ([BUSALRTID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4SVC40500] ON [dbo].[SVC40500] ([DBNAME], [BUSALRTID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SVC40500] ON [dbo].[SVC40500] ([DSCRIPTN], [BUSALRTID], [DBNAME]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC40500].[BARULEID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC40500].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC40500].[BUSALRTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC40500].[EMAILMSG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC40500].[LSTRWCHKD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC40500].[INCLDRSLTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC40500].[DBNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC40500].[CMPANYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC40500].[FREQTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC40500].[FREQINT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC40500].[FRQSUBTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC40500].[FRQSUBINT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC40500].[FRQRELINT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC40500].[FRQRCINT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC40500].[STRTTIME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC40500].[ENDTIME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC40500].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC40500].[ENDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC40500].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC40500].[CRUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC40500].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC40500].[MDFUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC40500].[ENABLED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC40500].[KEEPHIST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC40500].[NMBRTIME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC40500].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC40500].[SCHEDTXT]'
GO
GRANT SELECT ON  [dbo].[SVC40500] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC40500] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC40500] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC40500] TO [DYNGRP]
GO
