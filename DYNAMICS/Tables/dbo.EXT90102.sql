CREATE TABLE [dbo].[EXT90102]
(
[PRODID] [smallint] NOT NULL,
[Resource_Type] [smallint] NOT NULL,
[Series_Number] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EXT90102] ADD CONSTRAINT [PKEXT90102] PRIMARY KEY NONCLUSTERED  ([PRODID], [Resource_Type], [Series_Number]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT90102].[PRODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT90102].[Resource_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT90102].[Series_Number]'
GO
GRANT SELECT ON  [dbo].[EXT90102] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[EXT90102] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[EXT90102] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[EXT90102] TO [DYNGRP]
GO
