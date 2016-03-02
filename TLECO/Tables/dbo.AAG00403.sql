CREATE TABLE [dbo].[AAG00403]
(
[aaTrxDimID] [int] NOT NULL,
[aaTrxDimCodeBoolID] [int] NOT NULL,
[aaTrxDimCodeBool] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AAG00403] ADD CONSTRAINT [PKAAG00403] PRIMARY KEY CLUSTERED  ([aaTrxDimID], [aaTrxDimCodeBoolID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2AAG00403] ON [dbo].[AAG00403] ([aaTrxDimID], [aaTrxDimCodeBool]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00403].[aaTrxDimID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00403].[aaTrxDimCodeBoolID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00403].[aaTrxDimCodeBool]'
GO
GRANT SELECT ON  [dbo].[AAG00403] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG00403] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG00403] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG00403] TO [DYNGRP]
GO
