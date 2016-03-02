CREATE TABLE [dbo].[GL40402]
(
[Reconciliation_Number] [int] NOT NULL,
[SQNCLINE] [numeric] (19, 5) NOT NULL,
[MODULE1] [smallint] NOT NULL,
[ACTINDX] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GL40402] ADD CONSTRAINT [PKGL40402] PRIMARY KEY NONCLUSTERED  ([Reconciliation_Number], [SQNCLINE]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2GL40402] ON [dbo].[GL40402] ([ACTINDX], [Reconciliation_Number], [SQNCLINE]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3GL40402] ON [dbo].[GL40402] ([MODULE1], [Reconciliation_Number], [SQNCLINE]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL40402].[Reconciliation_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL40402].[SQNCLINE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL40402].[MODULE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL40402].[ACTINDX]'
GO
GRANT SELECT ON  [dbo].[GL40402] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[GL40402] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[GL40402] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[GL40402] TO [DYNGRP]
GO
