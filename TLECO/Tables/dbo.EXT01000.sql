CREATE TABLE [dbo].[EXT01000]
(
[Extender_Type] [smallint] NOT NULL,
[Extender_Form_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UD_Field_ID] [char] (151) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UD_Form_Field_ID_2] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Extender_Record_ID] [int] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EXT01000] ADD CONSTRAINT [PKEXT01000] PRIMARY KEY NONCLUSTERED  ([Extender_Type], [Extender_Form_ID], [UD_Field_ID], [UD_Form_Field_ID_2]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3EXT01000] ON [dbo].[EXT01000] ([Extender_Type], [Extender_Record_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2EXT01000] ON [dbo].[EXT01000] ([USERID], [Extender_Type], [Extender_Form_ID], [UD_Field_ID], [UD_Form_Field_ID_2]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT01000].[Extender_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT01000].[Extender_Form_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT01000].[UD_Field_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT01000].[UD_Form_Field_ID_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT01000].[Extender_Record_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT01000].[USERID]'
GO
GRANT SELECT ON  [dbo].[EXT01000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[EXT01000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[EXT01000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[EXT01000] TO [DYNGRP]
GO
