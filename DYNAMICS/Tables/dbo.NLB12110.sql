CREATE TABLE [dbo].[NLB12110]
(
[Navigation_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Fact_Box_Number] [smallint] NOT NULL,
[Fact_Box_Parameter_Num] [smallint] NOT NULL,
[Table_Number] [smallint] NOT NULL,
[Field_Number] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NLB12110] ADD CONSTRAINT [PKNLB12110] PRIMARY KEY NONCLUSTERED  ([Navigation_ID], [Fact_Box_Number], [Fact_Box_Parameter_Num]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NLB12110].[Navigation_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB12110].[Fact_Box_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB12110].[Fact_Box_Parameter_Num]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB12110].[Table_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB12110].[Field_Number]'
GO
GRANT SELECT ON  [dbo].[NLB12110] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[NLB12110] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[NLB12110] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[NLB12110] TO [DYNGRP]
GO
