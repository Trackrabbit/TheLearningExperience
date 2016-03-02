CREATE TABLE [dbo].[GL00103]
(
[ACTINDX] [int] NOT NULL,
[PRCNTAGE] [numeric] (19, 5) NOT NULL,
[DSTINDX] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GL00103] ADD CONSTRAINT [PKGL00103] PRIMARY KEY NONCLUSTERED  ([ACTINDX], [DSTINDX]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2GL00103] ON [dbo].[GL00103] ([DSTINDX], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL00103].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL00103].[PRCNTAGE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL00103].[DSTINDX]'
GO
GRANT SELECT ON  [dbo].[GL00103] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[GL00103] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[GL00103] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[GL00103] TO [DYNGRP]
GO
