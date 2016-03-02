CREATE TABLE [dbo].[NLB10210]
(
[Navigation_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COLNUMBR] [smallint] NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[Table_Number] [smallint] NOT NULL,
[Field_Number] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NLB10210] ADD CONSTRAINT [PKNLB10210] PRIMARY KEY NONCLUSTERED  ([Navigation_ID], [COLNUMBR], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2NLB10210] ON [dbo].[NLB10210] ([Navigation_ID], [Table_Number], [Field_Number]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NLB10210].[Navigation_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB10210].[COLNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB10210].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB10210].[Table_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB10210].[Field_Number]'
GO
GRANT SELECT ON  [dbo].[NLB10210] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[NLB10210] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[NLB10210] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[NLB10210] TO [DYNGRP]
GO
