CREATE TABLE [dbo].[ASILOC90]
(
[SETUPKEY] [smallint] NOT NULL,
[ASI_Show_Inactive] [tinyint] NOT NULL,
[ASI_QL_Key_Label_1] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ASI_QL_Key_Label_2] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ASI_QL_Key_Label_3] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ASI_QL_Key_Label_4] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ASI_QL_Key_Field_ID_1] [smallint] NOT NULL,
[ASI_QL_Key_Field_ID_2] [smallint] NOT NULL,
[ASI_QL_Key_Field_ID_3] [smallint] NOT NULL,
[ASI_QL_Key_Field_ID_4] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ASILOC90] ADD CONSTRAINT [PKASILOC90] PRIMARY KEY NONCLUSTERED  ([SETUPKEY]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ASILOC90].[SETUPKEY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ASILOC90].[ASI_Show_Inactive]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ASILOC90].[ASI_QL_Key_Label_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ASILOC90].[ASI_QL_Key_Label_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ASILOC90].[ASI_QL_Key_Label_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ASILOC90].[ASI_QL_Key_Label_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ASILOC90].[ASI_QL_Key_Field_ID_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ASILOC90].[ASI_QL_Key_Field_ID_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ASILOC90].[ASI_QL_Key_Field_ID_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ASILOC90].[ASI_QL_Key_Field_ID_4]'
GO
GRANT SELECT ON  [dbo].[ASILOC90] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ASILOC90] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ASILOC90] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ASILOC90] TO [DYNGRP]
GO
