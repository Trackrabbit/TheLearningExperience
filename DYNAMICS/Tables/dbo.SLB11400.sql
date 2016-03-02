CREATE TABLE [dbo].[SLB11400]
(
[SmartList_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[GoTo_Number] [smallint] NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[Table_Number] [smallint] NOT NULL,
[Field_Number] [smallint] NOT NULL,
[SmartList_Display_Name] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SLB11400] ADD CONSTRAINT [PKSLB11400] PRIMARY KEY NONCLUSTERED  ([SmartList_ID], [GoTo_Number], [LNITMSEQ]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SLB11400].[SmartList_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB11400].[GoTo_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB11400].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB11400].[Table_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB11400].[Field_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SLB11400].[SmartList_Display_Name]'
GO
GRANT SELECT ON  [dbo].[SLB11400] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SLB11400] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SLB11400] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SLB11400] TO [DYNGRP]
GO
