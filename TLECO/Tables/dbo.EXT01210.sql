CREATE TABLE [dbo].[EXT01210]
(
[Extender_Record_ID] [int] NOT NULL,
[Window_Number] [smallint] NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EXT01210] ADD CONSTRAINT [PKEXT01210] PRIMARY KEY NONCLUSTERED  ([Extender_Record_ID], [Window_Number], [LNITMSEQ]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT01210].[Extender_Record_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT01210].[Window_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT01210].[LNITMSEQ]'
GO
GRANT SELECT ON  [dbo].[EXT01210] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[EXT01210] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[EXT01210] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[EXT01210] TO [DYNGRP]
GO
