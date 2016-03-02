CREATE TABLE [dbo].[SC9002]
(
[PRODID] [smallint] NOT NULL,
[Resource_Type] [smallint] NOT NULL,
[Series_Number] [smallint] NOT NULL,
[Series_Name] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SC9002] ADD CONSTRAINT [PKSC9002] PRIMARY KEY NONCLUSTERED  ([PRODID], [Resource_Type], [Series_Number]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SC9002].[PRODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SC9002].[Resource_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SC9002].[Series_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SC9002].[Series_Name]'
GO
GRANT SELECT ON  [dbo].[SC9002] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SC9002] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SC9002] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SC9002] TO [DYNGRP]
GO
