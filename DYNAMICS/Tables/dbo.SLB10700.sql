CREATE TABLE [dbo].[SLB10700]
(
[SmartList_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Table_Number] [smallint] NOT NULL,
[Field_Number] [smallint] NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[STRGA255] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SLB10700] ADD CONSTRAINT [PKSLB10700] PRIMARY KEY NONCLUSTERED  ([SmartList_ID], [Table_Number], [Field_Number], [LNITMSEQ]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SLB10700].[SmartList_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10700].[Table_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10700].[Field_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10700].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SLB10700].[STRGA255]'
GO
GRANT SELECT ON  [dbo].[SLB10700] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SLB10700] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SLB10700] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SLB10700] TO [DYNGRP]
GO
