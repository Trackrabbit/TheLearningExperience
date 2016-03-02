CREATE TABLE [dbo].[ERB10000]
(
[Excel_Report_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Excel_Report_Name] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[View_Name] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Create_Summary_Page] [tinyint] NOT NULL,
[Consolidate_Report] [tinyint] NOT NULL,
[PRODID] [smallint] NOT NULL,
[Series_Number] [smallint] NOT NULL,
[Publish_Option] [smallint] NOT NULL,
[Target_URL] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Data_Connection_Filename] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Data_Connection_Location] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Excel_Report_Filename] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Excel_Report_Location] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[CRUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[MDFUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Consolidate_Worksheet] [tinyint] NOT NULL,
[Display_Total_Line] [tinyint] NOT NULL,
[Pivot_Table_Column_Total] [tinyint] NOT NULL,
[Pivot_Table_Row_Totals] [tinyint] NOT NULL,
[Pivot_Table_Expansion] [tinyint] NOT NULL,
[Excel_Report_Type] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ERB10000] ADD CONSTRAINT [CK__ERB10000__CREATD__2E06CDA9] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[ERB10000] ADD CONSTRAINT [CK__ERB10000__MODIFD__2EFAF1E2] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[ERB10000] ADD CONSTRAINT [PKERB10000] PRIMARY KEY NONCLUSTERED  ([Excel_Report_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2ERB10000] ON [dbo].[ERB10000] ([Excel_Report_Name], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ERB10000].[Excel_Report_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ERB10000].[Excel_Report_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ERB10000].[View_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB10000].[Create_Summary_Page]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB10000].[Consolidate_Report]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB10000].[PRODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB10000].[Series_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB10000].[Publish_Option]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ERB10000].[Target_URL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ERB10000].[Data_Connection_Filename]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ERB10000].[Data_Connection_Location]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ERB10000].[Excel_Report_Filename]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ERB10000].[Excel_Report_Location]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ERB10000].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ERB10000].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ERB10000].[CRUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ERB10000].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ERB10000].[MDFUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB10000].[Consolidate_Worksheet]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB10000].[Display_Total_Line]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB10000].[Pivot_Table_Column_Total]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB10000].[Pivot_Table_Row_Totals]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB10000].[Pivot_Table_Expansion]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB10000].[Excel_Report_Type]'
GO
GRANT SELECT ON  [dbo].[ERB10000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ERB10000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ERB10000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ERB10000] TO [DYNGRP]
GO
