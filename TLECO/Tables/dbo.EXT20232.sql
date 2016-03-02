CREATE TABLE [dbo].[EXT20232]
(
[Extender_Navigation_List] [int] NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[Navigation_Detail_Type] [smallint] NOT NULL,
[Window_Number] [smallint] NOT NULL,
[Extender_Form_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EXT20232] ADD CONSTRAINT [PKEXT20232] PRIMARY KEY NONCLUSTERED  ([Extender_Navigation_List], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2EXT20232] ON [dbo].[EXT20232] ([Extender_Navigation_List], [Window_Number], [Extender_Form_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20232].[Extender_Navigation_List]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20232].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20232].[Navigation_Detail_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20232].[Window_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20232].[Extender_Form_ID]'
GO
GRANT SELECT ON  [dbo].[EXT20232] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[EXT20232] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[EXT20232] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[EXT20232] TO [DYNGRP]
GO
