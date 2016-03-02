CREATE TABLE [dbo].[NLB10300]
(
[Navigation_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Table_Number] [smallint] NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[From_Field] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[To_Field] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NLB10300] ADD CONSTRAINT [PKNLB10300] PRIMARY KEY NONCLUSTERED  ([Navigation_ID], [Table_Number], [LNITMSEQ]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NLB10300].[Navigation_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB10300].[Table_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB10300].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NLB10300].[From_Field]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NLB10300].[To_Field]'
GO
GRANT SELECT ON  [dbo].[NLB10300] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[NLB10300] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[NLB10300] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[NLB10300] TO [DYNGRP]
GO
