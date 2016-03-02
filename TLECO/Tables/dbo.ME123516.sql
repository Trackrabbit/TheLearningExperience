CREATE TABLE [dbo].[ME123516]
(
[Output_Format] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_Line_Position] [smallint] NOT NULL,
[ME_Field_Position] [smallint] NOT NULL,
[ME_Field_Name] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_Field_Type] [smallint] NOT NULL,
[ME_Standard_Fields] [smallint] NOT NULL,
[Field_Length] [smallint] NOT NULL,
[ME_Constant_Values] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_Field_Format] [smallint] NOT NULL,
[ME_Filler] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_Justification] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ME123516] ADD CONSTRAINT [PKME123516] PRIMARY KEY CLUSTERED  ([Output_Format], [ME_Line_Position], [ME_Field_Position]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME123516].[Output_Format]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME123516].[ME_Line_Position]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME123516].[ME_Field_Position]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME123516].[ME_Field_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME123516].[ME_Field_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME123516].[ME_Standard_Fields]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME123516].[Field_Length]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME123516].[ME_Constant_Values]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME123516].[ME_Field_Format]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME123516].[ME_Filler]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME123516].[ME_Justification]'
GO
GRANT SELECT ON  [dbo].[ME123516] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ME123516] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ME123516] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ME123516] TO [DYNGRP]
GO
