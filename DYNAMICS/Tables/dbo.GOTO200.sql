CREATE TABLE [dbo].[GOTO200]
(
[SmartList_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[GoTo_Number] [smallint] NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[Table_Number] [smallint] NOT NULL,
[Field_Number] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GOTO200] ADD CONSTRAINT [PKGOTO200] PRIMARY KEY NONCLUSTERED  ([SmartList_ID], [GoTo_Number], [LNITMSEQ]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GOTO200].[SmartList_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GOTO200].[GoTo_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GOTO200].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GOTO200].[Table_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GOTO200].[Field_Number]'
GO
GRANT SELECT ON  [dbo].[GOTO200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[GOTO200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[GOTO200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[GOTO200] TO [DYNGRP]
GO
