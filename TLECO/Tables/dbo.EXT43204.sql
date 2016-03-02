CREATE TABLE [dbo].[EXT43204]
(
[Extender_Type] [smallint] NOT NULL,
[Extender_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Window_Number] [smallint] NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[Note_Type_Description] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EXT43204] ADD CONSTRAINT [PKEXT43204] PRIMARY KEY NONCLUSTERED  ([Extender_Type], [Extender_ID], [Window_Number], [LNITMSEQ]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT43204].[Extender_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT43204].[Extender_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT43204].[Window_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT43204].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT43204].[Note_Type_Description]'
GO
GRANT SELECT ON  [dbo].[EXT43204] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[EXT43204] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[EXT43204] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[EXT43204] TO [DYNGRP]
GO
