CREATE TABLE [dbo].[EXT40801]
(
[Extender_Menu_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[Menu_Item_Type] [smallint] NOT NULL,
[Extender_Type] [smallint] NOT NULL,
[Extender_Form_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRODID] [smallint] NOT NULL,
[FORMNAME] [char] (79) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EXT40801] ADD CONSTRAINT [PKEXT40801] PRIMARY KEY NONCLUSTERED  ([Extender_Menu_ID], [LNITMSEQ]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT40801].[Extender_Menu_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT40801].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT40801].[Menu_Item_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT40801].[Extender_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT40801].[Extender_Form_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT40801].[PRODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT40801].[FORMNAME]'
GO
GRANT SELECT ON  [dbo].[EXT40801] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[EXT40801] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[EXT40801] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[EXT40801] TO [DYNGRP]
GO
