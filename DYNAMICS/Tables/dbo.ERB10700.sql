CREATE TABLE [dbo].[ERB10700]
(
[Excel_Report_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Table_Number] [smallint] NOT NULL,
[Field_Number] [smallint] NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[STRGA255] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ERB10700] ADD CONSTRAINT [PKERB10700] PRIMARY KEY NONCLUSTERED  ([Excel_Report_ID], [Table_Number], [Field_Number], [LNITMSEQ]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ERB10700].[Excel_Report_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB10700].[Table_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB10700].[Field_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB10700].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ERB10700].[STRGA255]'
GO
GRANT SELECT ON  [dbo].[ERB10700] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ERB10700] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ERB10700] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ERB10700] TO [DYNGRP]
GO
