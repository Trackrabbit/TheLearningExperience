CREATE TABLE [dbo].[GL40400]
(
[MODULE1] [smallint] NOT NULL,
[SQNCLINE] [numeric] (19, 5) NOT NULL,
[ACTINDX] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GL40400] ADD CONSTRAINT [PKGL40400] PRIMARY KEY NONCLUSTERED  ([MODULE1], [SQNCLINE]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2GL40400] ON [dbo].[GL40400] ([MODULE1], [ACTINDX], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL40400].[MODULE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL40400].[SQNCLINE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL40400].[ACTINDX]'
GO
GRANT SELECT ON  [dbo].[GL40400] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[GL40400] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[GL40400] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[GL40400] TO [DYNGRP]
GO
