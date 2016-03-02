CREATE TABLE [dbo].[EXT40820]
(
[Extender_Page_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COLNUMBR] [smallint] NOT NULL,
[Page_Section_Number] [smallint] NOT NULL,
[Page_Section_Name] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Expand_Section] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EXT40820] ADD CONSTRAINT [PKEXT40820] PRIMARY KEY NONCLUSTERED  ([Extender_Page_ID], [COLNUMBR], [Page_Section_Number]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT40820].[Extender_Page_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT40820].[COLNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT40820].[Page_Section_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT40820].[Page_Section_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT40820].[Expand_Section]'
GO
GRANT SELECT ON  [dbo].[EXT40820] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[EXT40820] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[EXT40820] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[EXT40820] TO [DYNGRP]
GO
