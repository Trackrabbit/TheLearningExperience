CREATE TABLE [dbo].[SLB11500]
(
[SmartList_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Table_Number] [smallint] NOT NULL,
[Field_Number] [smallint] NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SLB11500] ADD CONSTRAINT [PKSLB11500] PRIMARY KEY NONCLUSTERED  ([SmartList_ID], [Table_Number], [Field_Number], [LNITMSEQ]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SLB11500].[SmartList_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB11500].[Table_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB11500].[Field_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB11500].[LNITMSEQ]'
GO
GRANT SELECT ON  [dbo].[SLB11500] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SLB11500] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SLB11500] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SLB11500] TO [DYNGRP]
GO
