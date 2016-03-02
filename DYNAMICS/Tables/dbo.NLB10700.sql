CREATE TABLE [dbo].[NLB10700]
(
[Navigation_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Table_Number] [smallint] NOT NULL,
[Field_Number] [smallint] NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[STRGA255] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NLB10700] ADD CONSTRAINT [PKNLB10700] PRIMARY KEY NONCLUSTERED  ([Navigation_ID], [Table_Number], [Field_Number], [LNITMSEQ]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NLB10700].[Navigation_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB10700].[Table_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB10700].[Field_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB10700].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NLB10700].[STRGA255]'
GO
GRANT SELECT ON  [dbo].[NLB10700] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[NLB10700] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[NLB10700] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[NLB10700] TO [DYNGRP]
GO
