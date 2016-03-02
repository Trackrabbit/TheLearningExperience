CREATE TABLE [dbo].[NLB11500]
(
[Navigation_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Table_Number] [smallint] NOT NULL,
[Field_Number] [smallint] NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NLB11500] ADD CONSTRAINT [PKNLB11500] PRIMARY KEY NONCLUSTERED  ([Navigation_ID], [Table_Number], [Field_Number], [LNITMSEQ]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NLB11500].[Navigation_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB11500].[Table_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB11500].[Field_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB11500].[LNITMSEQ]'
GO
GRANT SELECT ON  [dbo].[NLB11500] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[NLB11500] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[NLB11500] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[NLB11500] TO [DYNGRP]
GO
