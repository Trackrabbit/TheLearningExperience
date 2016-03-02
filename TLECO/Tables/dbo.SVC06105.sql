CREATE TABLE [dbo].[SVC06105]
(
[WORECTYPE] [smallint] NOT NULL,
[WORKORDNUM] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Status] [smallint] NOT NULL,
[SEQUENCE1] [numeric] (19, 5) NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEPSTATGRP] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STATIONID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TECHID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETTR] [numeric] (19, 5) NOT NULL,
[ROUTEPROC] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SERVICEBOM] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[STRTTIME] [datetime] NOT NULL,
[ENDDATE] [datetime] NOT NULL,
[ENDTIME] [datetime] NOT NULL,
[ETADTE] [datetime] NOT NULL,
[ETATME] [datetime] NOT NULL,
[ECOMPDT] [datetime] NOT NULL,
[EComp_Time] [datetime] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC06105] ADD CONSTRAINT [CK__SVC06105__EComp___78D4B6B2] CHECK ((datepart(day,[EComp_Time])=(1) AND datepart(month,[EComp_Time])=(1) AND datepart(year,[EComp_Time])=(1900)))
GO
ALTER TABLE [dbo].[SVC06105] ADD CONSTRAINT [CK__SVC06105__ENDTIM__7ABCFF24] CHECK ((datepart(day,[ENDTIME])=(1) AND datepart(month,[ENDTIME])=(1) AND datepart(year,[ENDTIME])=(1900)))
GO
ALTER TABLE [dbo].[SVC06105] ADD CONSTRAINT [CK__SVC06105__ETATME__7CA54796] CHECK ((datepart(day,[ETATME])=(1) AND datepart(month,[ETATME])=(1) AND datepart(year,[ETATME])=(1900)))
GO
ALTER TABLE [dbo].[SVC06105] ADD CONSTRAINT [CK__SVC06105__STRTTI__7E8D9008] CHECK ((datepart(day,[STRTTIME])=(1) AND datepart(month,[STRTTIME])=(1) AND datepart(year,[STRTTIME])=(1900)))
GO
ALTER TABLE [dbo].[SVC06105] ADD CONSTRAINT [CK__SVC06105__ECOMPD__77E09279] CHECK ((datepart(hour,[ECOMPDT])=(0) AND datepart(minute,[ECOMPDT])=(0) AND datepart(second,[ECOMPDT])=(0) AND datepart(millisecond,[ECOMPDT])=(0)))
GO
ALTER TABLE [dbo].[SVC06105] ADD CONSTRAINT [CK__SVC06105__ENDDAT__79C8DAEB] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC06105] ADD CONSTRAINT [CK__SVC06105__ETADTE__7BB1235D] CHECK ((datepart(hour,[ETADTE])=(0) AND datepart(minute,[ETADTE])=(0) AND datepart(second,[ETADTE])=(0) AND datepart(millisecond,[ETADTE])=(0)))
GO
ALTER TABLE [dbo].[SVC06105] ADD CONSTRAINT [CK__SVC06105__STRTDA__7D996BCF] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC06105] ADD CONSTRAINT [PKSVC06105] PRIMARY KEY NONCLUSTERED  ([WORECTYPE], [WORKORDNUM], [SEQUENCE1]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC06105] ON [dbo].[SVC06105] ([WORECTYPE], [WORKORDNUM], [Status], [SEQUENCE1], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC06105].[WORECTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06105].[WORKORDNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC06105].[Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC06105].[SEQUENCE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06105].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06105].[DEPSTATGRP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06105].[STATIONID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06105].[TECHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC06105].[ETTR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06105].[ROUTEPROC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06105].[SERVICEBOM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC06105].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC06105].[STRTTIME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC06105].[ENDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC06105].[ENDTIME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC06105].[ETADTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC06105].[ETATME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC06105].[ECOMPDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC06105].[EComp_Time]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC06105].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[SVC06105] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC06105] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC06105] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC06105] TO [DYNGRP]
GO
