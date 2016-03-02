CREATE TABLE [dbo].[MS273520]
(
[MSO_Import_Setup_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_Import_Seq_Num] [int] NOT NULL,
[MSO_Fieldname1] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_Field_Format] [smallint] NOT NULL,
[MSO_Field_Type] [smallint] NOT NULL,
[MSO_Field_Width] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MS273520] ADD CONSTRAINT [PKMS273520] PRIMARY KEY CLUSTERED  ([MSO_Import_Setup_ID], [MSO_Import_Seq_Num]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273520].[MSO_Import_Setup_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273520].[MSO_Import_Seq_Num]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273520].[MSO_Fieldname1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273520].[MSO_Field_Format]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273520].[MSO_Field_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273520].[MSO_Field_Width]'
GO
GRANT SELECT ON  [dbo].[MS273520] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[MS273520] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[MS273520] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[MS273520] TO [DYNGRP]
GO
