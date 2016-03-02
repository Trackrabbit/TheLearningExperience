CREATE TABLE [dbo].[EXT40830]
(
[Extender_Page_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COLNUMBR] [smallint] NOT NULL,
[Page_Section_Number] [smallint] NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[Page_Item_Type] [smallint] NOT NULL,
[Extender_Type] [smallint] NOT NULL,
[Extender_Form_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRODID] [smallint] NOT NULL,
[FORMNAME] [char] (79) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EXT40830] ADD CONSTRAINT [PKEXT40830] PRIMARY KEY NONCLUSTERED  ([Extender_Page_ID], [COLNUMBR], [Page_Section_Number], [LNITMSEQ]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT40830].[Extender_Page_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT40830].[COLNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT40830].[Page_Section_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT40830].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT40830].[Page_Item_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT40830].[Extender_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT40830].[Extender_Form_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT40830].[PRODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT40830].[FORMNAME]'
GO
GRANT SELECT ON  [dbo].[EXT40830] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[EXT40830] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[EXT40830] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[EXT40830] TO [DYNGRP]
GO
