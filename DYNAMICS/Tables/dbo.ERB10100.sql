CREATE TABLE [dbo].[ERB10100]
(
[Excel_Report_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Table_Number] [smallint] NOT NULL,
[PRODID] [smallint] NOT NULL,
[TABLTECH] [char] (79) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Link_To_Table] [smallint] NOT NULL,
[Link_Method] [smallint] NOT NULL,
[External_Table] [tinyint] NOT NULL,
[DBNAME] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TBLPHYSNM] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SERVERID] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SQL_Database_Name] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DBO_Name] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Object_Type] [smallint] NOT NULL,
[Extender_Type] [smallint] NOT NULL,
[Extender_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ERB10100] ADD CONSTRAINT [PKERB10100] PRIMARY KEY NONCLUSTERED  ([Excel_Report_ID], [Table_Number]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ERB10100].[Excel_Report_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB10100].[Table_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB10100].[PRODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ERB10100].[TABLTECH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB10100].[Link_To_Table]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB10100].[Link_Method]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB10100].[External_Table]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ERB10100].[DBNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ERB10100].[TBLPHYSNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ERB10100].[SERVERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ERB10100].[SQL_Database_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ERB10100].[DBO_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB10100].[Object_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB10100].[Extender_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ERB10100].[Extender_ID]'
GO
GRANT SELECT ON  [dbo].[ERB10100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ERB10100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ERB10100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ERB10100] TO [DYNGRP]
GO
