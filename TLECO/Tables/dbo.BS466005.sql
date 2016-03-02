CREATE TABLE [dbo].[BS466005]
(
[VCHRNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCTYPE] [smallint] NOT NULL,
[BSSI_Description] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Charge_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BS466005] ADD CONSTRAINT [PKBS466005] PRIMARY KEY NONCLUSTERED  ([VCHRNMBR], [DOCTYPE]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BS466005].[VCHRNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BS466005].[DOCTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BS466005].[BSSI_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BS466005].[BSSI_Charge_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BS466005].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[BS466005] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[BS466005] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[BS466005] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[BS466005] TO [DYNGRP]
GO
