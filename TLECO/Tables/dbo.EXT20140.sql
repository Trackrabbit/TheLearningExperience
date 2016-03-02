CREATE TABLE [dbo].[EXT20140]
(
[Extender_Window_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[Extender_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Extender_Enquiry_ID] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EXT20140] ADD CONSTRAINT [PKEXT20140] PRIMARY KEY NONCLUSTERED  ([Extender_Window_ID], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3EXT20140] ON [dbo].[EXT20140] ([Extender_ID], [Extender_Enquiry_ID], [Extender_Window_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2EXT20140] ON [dbo].[EXT20140] ([Extender_Window_ID], [Extender_ID], [Extender_Enquiry_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20140].[Extender_Window_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20140].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20140].[Extender_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20140].[Extender_Enquiry_ID]'
GO
GRANT SELECT ON  [dbo].[EXT20140] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[EXT20140] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[EXT20140] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[EXT20140] TO [DYNGRP]
GO
