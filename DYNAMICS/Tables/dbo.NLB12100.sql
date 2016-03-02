CREATE TABLE [dbo].[NLB12100]
(
[Navigation_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Fact_Box_Number] [smallint] NOT NULL,
[Fact_Box_Path] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Fact_Box_Name] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NLB12100] ADD CONSTRAINT [PKNLB12100] PRIMARY KEY NONCLUSTERED  ([Navigation_ID], [Fact_Box_Number]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NLB12100].[Navigation_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB12100].[Fact_Box_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NLB12100].[Fact_Box_Path]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NLB12100].[Fact_Box_Name]'
GO
GRANT SELECT ON  [dbo].[NLB12100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[NLB12100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[NLB12100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[NLB12100] TO [DYNGRP]
GO
