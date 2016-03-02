CREATE TABLE [dbo].[B0510151]
(
[IMS_Type_of_Distribution] [smallint] NOT NULL,
[MJW_Distribution_Type] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Distribution_Type_De] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_AP_Account_Index] [int] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B0510151] ADD CONSTRAINT [PKB0510151] PRIMARY KEY CLUSTERED  ([IMS_Type_of_Distribution], [MJW_Distribution_Type]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B0510151] ON [dbo].[B0510151] ([MJW_Distribution_Type_De], [MJW_Distribution_Type], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510151].[IMS_Type_of_Distribution]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510151].[MJW_Distribution_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510151].[MJW_Distribution_Type_De]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510151].[BSSI_AP_Account_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0510151].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[B0510151] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B0510151] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B0510151] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B0510151] TO [DYNGRP]
GO
