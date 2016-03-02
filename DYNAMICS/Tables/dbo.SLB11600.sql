CREATE TABLE [dbo].[SLB11600]
(
[SmartList_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[GoTo_Number] [smallint] NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[SmartList_Field_Number] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SLB11600] ADD CONSTRAINT [PKSLB11600] PRIMARY KEY NONCLUSTERED  ([SmartList_ID], [GoTo_Number], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SLB11600] ON [dbo].[SLB11600] ([SmartList_ID], [GoTo_Number], [SmartList_Field_Number]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SLB11600].[SmartList_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB11600].[GoTo_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB11600].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB11600].[SmartList_Field_Number]'
GO
GRANT SELECT ON  [dbo].[SLB11600] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SLB11600] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SLB11600] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SLB11600] TO [DYNGRP]
GO
