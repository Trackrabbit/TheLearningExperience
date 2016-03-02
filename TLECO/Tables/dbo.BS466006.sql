CREATE TABLE [dbo].[BS466006]
(
[VCHRNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Template_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Description2] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Allocation_Method] [smallint] NOT NULL,
[BSSI_Charge_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_MarkUp_MarkDown] [numeric] (19, 5) NOT NULL,
[BSSI_Default_] [numeric] (19, 5) NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BS466006] ADD CONSTRAINT [PKBS466006] PRIMARY KEY NONCLUSTERED  ([VCHRNMBR], [BSSI_Template_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2BS466006] ON [dbo].[BS466006] ([VCHRNMBR], [BSSI_Description2], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BS466006].[VCHRNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BS466006].[BSSI_Template_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BS466006].[BSSI_Description2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BS466006].[BSSI_Allocation_Method]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BS466006].[BSSI_Charge_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BS466006].[BSSI_MarkUp_MarkDown]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BS466006].[BSSI_Default_]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BS466006].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[BS466006] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[BS466006] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[BS466006] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[BS466006] TO [DYNGRP]
GO
