CREATE TABLE [dbo].[DDB10200]
(
[Drill_Down_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Action_Number] [smallint] NOT NULL,
[Action_Type] [smallint] NOT NULL,
[FIELDNAM] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCRDTYPE] [smallint] NOT NULL,
[Window_Number] [smallint] NOT NULL,
[Field_Number] [smallint] NOT NULL,
[Drill_Down_Parameter_Num] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DDB10200] ADD CONSTRAINT [PKDDB10200] PRIMARY KEY NONCLUSTERED  ([Drill_Down_ID], [Action_Number]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DDB10200].[Drill_Down_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DDB10200].[Action_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DDB10200].[Action_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DDB10200].[FIELDNAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DDB10200].[RCRDTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DDB10200].[Window_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DDB10200].[Field_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DDB10200].[Drill_Down_Parameter_Num]'
GO
GRANT SELECT ON  [dbo].[DDB10200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[DDB10200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[DDB10200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[DDB10200] TO [DYNGRP]
GO
