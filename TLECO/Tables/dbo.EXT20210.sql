CREATE TABLE [dbo].[EXT20210]
(
[Extender_Form_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[Extender_SmartList_Num] [smallint] NOT NULL,
[Extender_SmartList_Name] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRODID] [smallint] NOT NULL,
[Series_Number] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EXT20210] ADD CONSTRAINT [PKEXT20210] PRIMARY KEY NONCLUSTERED  ([Extender_Form_ID], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2EXT20210] ON [dbo].[EXT20210] ([Extender_SmartList_Num]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20210].[Extender_Form_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20210].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20210].[Extender_SmartList_Num]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20210].[Extender_SmartList_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20210].[PRODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20210].[Series_Number]'
GO
GRANT SELECT ON  [dbo].[EXT20210] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[EXT20210] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[EXT20210] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[EXT20210] TO [DYNGRP]
GO
