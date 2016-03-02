CREATE TABLE [dbo].[EXT20320]
(
[Extender_Template_ID] [int] NOT NULL,
[Window_Number] [smallint] NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EXT20320] ADD CONSTRAINT [PKEXT20320] PRIMARY KEY NONCLUSTERED  ([Extender_Template_ID], [Window_Number], [LNITMSEQ]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20320].[Extender_Template_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20320].[Window_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20320].[LNITMSEQ]'
GO
GRANT SELECT ON  [dbo].[EXT20320] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[EXT20320] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[EXT20320] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[EXT20320] TO [DYNGRP]
GO
