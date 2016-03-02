CREATE TABLE [dbo].[SY70700]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[USECT] [smallint] NOT NULL,
[CMPANYID] [smallint] NOT NULL,
[RPRTTYPE] [smallint] NOT NULL,
[PRODID] [smallint] NOT NULL,
[Report_Series_DictID] [smallint] NOT NULL,
[ReportSeries_ID] [smallint] NOT NULL,
[Report_Category_ID] [smallint] NOT NULL,
[REPORTID] [smallint] NOT NULL,
[RptOptID] [numeric] (19, 5) NOT NULL,
[Report_Option_Name] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MyReportName] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VisibleTo] [smallint] NOT NULL,
[USRCLASS] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRGA255] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY70700] ADD CONSTRAINT [PKSY70700] PRIMARY KEY NONCLUSTERED  ([USERID], [SEQNUMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SY70700] ON [dbo].[SY70700] ([USERID], [USECT], [SEQNUMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70700].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70700].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70700].[USECT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70700].[CMPANYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70700].[RPRTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70700].[PRODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70700].[Report_Series_DictID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70700].[ReportSeries_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70700].[Report_Category_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70700].[REPORTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SY70700].[RptOptID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70700].[Report_Option_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70700].[MyReportName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY70700].[VisibleTo]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70700].[USRCLASS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY70700].[STRGA255]'
GO
GRANT SELECT ON  [dbo].[SY70700] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY70700] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY70700] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY70700] TO [DYNGRP]
GO
