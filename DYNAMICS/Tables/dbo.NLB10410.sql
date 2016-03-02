CREATE TABLE [dbo].[NLB10410]
(
[Navigation_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Ribbon_Command_Group] [smallint] NOT NULL,
[Command_Number] [smallint] NOT NULL,
[Parameter_Name] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Table_Number] [smallint] NOT NULL,
[Field_Number] [smallint] NOT NULL,
[STRGA255] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NLB10410] ADD CONSTRAINT [PKNLB10410] PRIMARY KEY NONCLUSTERED  ([Navigation_ID], [Ribbon_Command_Group], [Command_Number], [Parameter_Name]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NLB10410].[Navigation_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB10410].[Ribbon_Command_Group]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB10410].[Command_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NLB10410].[Parameter_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB10410].[Table_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB10410].[Field_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NLB10410].[STRGA255]'
GO
GRANT SELECT ON  [dbo].[NLB10410] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[NLB10410] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[NLB10410] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[NLB10410] TO [DYNGRP]
GO
