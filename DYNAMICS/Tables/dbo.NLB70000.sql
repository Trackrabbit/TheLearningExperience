CREATE TABLE [dbo].[NLB70000]
(
[Action_Type] [smallint] NOT NULL,
[PRODID] [smallint] NOT NULL,
[Series_Number] [smallint] NOT NULL,
[Action_Description] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Selection_Type] [smallint] NOT NULL,
[Drop_Dialog] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NLB70000] ADD CONSTRAINT [PKNLB70000] PRIMARY KEY NONCLUSTERED  ([Action_Type]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2NLB70000] ON [dbo].[NLB70000] ([PRODID], [Series_Number], [Action_Type]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB70000].[Action_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB70000].[PRODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB70000].[Series_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NLB70000].[Action_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB70000].[Selection_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB70000].[Drop_Dialog]'
GO
GRANT SELECT ON  [dbo].[NLB70000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[NLB70000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[NLB70000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[NLB70000] TO [DYNGRP]
GO
