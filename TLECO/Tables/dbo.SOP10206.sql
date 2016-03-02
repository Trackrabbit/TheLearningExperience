CREATE TABLE [dbo].[SOP10206]
(
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[Bulk_Print_Date] [datetime] NOT NULL,
[TIMESPRT] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SOP10206] ADD CONSTRAINT [CK__SOP10206__Bulk_P__194BA7E5] CHECK ((datepart(hour,[Bulk_Print_Date])=(0) AND datepart(minute,[Bulk_Print_Date])=(0) AND datepart(second,[Bulk_Print_Date])=(0) AND datepart(millisecond,[Bulk_Print_Date])=(0)))
GO
ALTER TABLE [dbo].[SOP10206] ADD CONSTRAINT [PKSOP10206] PRIMARY KEY NONCLUSTERED  ([BACHNUMB], [LOCNCODE], [SEQNUMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10206].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10206].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10206].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP10206].[Bulk_Print_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10206].[TIMESPRT]'
GO
GRANT SELECT ON  [dbo].[SOP10206] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SOP10206] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SOP10206] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SOP10206] TO [DYNGRP]
GO
