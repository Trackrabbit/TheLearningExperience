CREATE TABLE [dbo].[NLB10600]
(
[Navigation_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Navigation_Field_Name] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NLB10600] ADD CONSTRAINT [PKNLB10600] PRIMARY KEY NONCLUSTERED  ([Navigation_ID], [Navigation_Field_Name]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NLB10600].[Navigation_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NLB10600].[Navigation_Field_Name]'
GO
GRANT SELECT ON  [dbo].[NLB10600] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[NLB10600] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[NLB10600] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[NLB10600] TO [DYNGRP]
GO
