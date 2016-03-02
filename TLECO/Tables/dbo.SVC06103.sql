CREATE TABLE [dbo].[SVC06103]
(
[WORECTYPE] [smallint] NOT NULL,
[WORKORDNUM] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STATIONID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Status] [smallint] NOT NULL,
[Route_Sequence] [numeric] (19, 5) NOT NULL,
[TECHID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[STRTTIME] [datetime] NOT NULL,
[ENDDATE] [datetime] NOT NULL,
[ENDTIME] [datetime] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC06103] ADD CONSTRAINT [CK__SVC06103__ENDTIM__731BDD5C] CHECK ((datepart(day,[ENDTIME])=(1) AND datepart(month,[ENDTIME])=(1) AND datepart(year,[ENDTIME])=(1900)))
GO
ALTER TABLE [dbo].[SVC06103] ADD CONSTRAINT [CK__SVC06103__STRTTI__750425CE] CHECK ((datepart(day,[STRTTIME])=(1) AND datepart(month,[STRTTIME])=(1) AND datepart(year,[STRTTIME])=(1900)))
GO
ALTER TABLE [dbo].[SVC06103] ADD CONSTRAINT [CK__SVC06103__ENDDAT__7227B923] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC06103] ADD CONSTRAINT [CK__SVC06103__STRTDA__74100195] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC06103] ADD CONSTRAINT [PKSVC06103] PRIMARY KEY NONCLUSTERED  ([DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC06103] ON [dbo].[SVC06103] ([STATIONID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SVC06103] ON [dbo].[SVC06103] ([TECHID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK1SVC06103] ON [dbo].[SVC06103] ([WORECTYPE], [WORKORDNUM], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC06103].[WORECTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06103].[WORKORDNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06103].[STATIONID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC06103].[Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC06103].[Route_Sequence]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06103].[TECHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC06103].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC06103].[STRTTIME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC06103].[ENDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC06103].[ENDTIME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC06103].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[SVC06103] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC06103] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC06103] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC06103] TO [DYNGRP]
GO
