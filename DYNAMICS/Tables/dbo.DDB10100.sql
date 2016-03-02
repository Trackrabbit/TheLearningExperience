CREATE TABLE [dbo].[DDB10100]
(
[Drill_Down_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Drill_Down_Parameter_Num] [smallint] NOT NULL,
[Parameter_Name] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FIELDTYPE] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DDB10100] ADD CONSTRAINT [PKDDB10100] PRIMARY KEY NONCLUSTERED  ([Drill_Down_ID], [Drill_Down_Parameter_Num]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DDB10100].[Drill_Down_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DDB10100].[Drill_Down_Parameter_Num]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DDB10100].[Parameter_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DDB10100].[FIELDTYPE]'
GO
GRANT SELECT ON  [dbo].[DDB10100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[DDB10100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[DDB10100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[DDB10100] TO [DYNGRP]
GO
