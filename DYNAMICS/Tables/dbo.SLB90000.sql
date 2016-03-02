CREATE TABLE [dbo].[SLB90000]
(
[GoTo_Type] [smallint] NOT NULL,
[PRODID] [smallint] NOT NULL,
[GoTo_Number] [smallint] NOT NULL,
[GoTo_Description] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SLB90000] ADD CONSTRAINT [PKSLB90000] PRIMARY KEY NONCLUSTERED  ([GoTo_Type]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SLB90000] ON [dbo].[SLB90000] ([PRODID], [GoTo_Description], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SLB90000] ON [dbo].[SLB90000] ([PRODID], [GoTo_Number]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB90000].[GoTo_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB90000].[PRODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB90000].[GoTo_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SLB90000].[GoTo_Description]'
GO
GRANT SELECT ON  [dbo].[SLB90000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SLB90000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SLB90000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SLB90000] TO [DYNGRP]
GO
