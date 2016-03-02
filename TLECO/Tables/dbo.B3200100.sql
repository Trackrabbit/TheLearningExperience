CREATE TABLE [dbo].[B3200100]
(
[SETUPKEY] [smallint] NOT NULL,
[BS25_Use_Legacy_CreditMA] [tinyint] NOT NULL,
[BSSI_Auto_Consolidate] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B3200100] ADD CONSTRAINT [PKB3200100] PRIMARY KEY NONCLUSTERED  ([SETUPKEY]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B3200100].[SETUPKEY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B3200100].[BS25_Use_Legacy_CreditMA]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B3200100].[BSSI_Auto_Consolidate]'
GO
GRANT SELECT ON  [dbo].[B3200100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B3200100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B3200100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B3200100] TO [DYNGRP]
GO
