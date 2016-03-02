CREATE TABLE [dbo].[B4602205]
(
[BSSI_Tenant_Lease_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Option_To_Self_Insu] [smallint] NOT NULL,
[BSSI_Is_Self_Insurance] [smallint] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[BSSI_Is_Self_Ins_Note] [numeric] (19, 5) NOT NULL,
[BSSI_Option_Self_InsuNot] [numeric] (19, 5) NOT NULL,
[BSSI_Is_Leasor_Named] [smallint] NOT NULL,
[BSSI_Is_Leasor_Named_Not] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4602205] ADD CONSTRAINT [PKB4602205] PRIMARY KEY NONCLUSTERED  ([BSSI_Tenant_Lease_Number]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602205].[BSSI_Tenant_Lease_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602205].[BSSI_Option_To_Self_Insu]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602205].[BSSI_Is_Self_Insurance]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602205].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602205].[BSSI_Is_Self_Ins_Note]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602205].[BSSI_Option_Self_InsuNot]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602205].[BSSI_Is_Leasor_Named]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602205].[BSSI_Is_Leasor_Named_Not]'
GO
GRANT SELECT ON  [dbo].[B4602205] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4602205] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4602205] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4602205] TO [DYNGRP]
GO
