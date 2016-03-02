CREATE TABLE [dbo].[MSO_CreditCard_MSTR]
(
[MSO_TableName] [char] (49) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_StringKey1] [char] (73) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_StringKey2] [char] (73) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_IntKey1] [int] NOT NULL,
[MSO_IntKey2] [int] NOT NULL,
[MSO_CardNumberPABP] [char] (165) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MSO_CreditCard_MSTR] ADD CONSTRAINT [PKMSO_CreditCard_MSTR] PRIMARY KEY CLUSTERED  ([MSO_TableName], [MSO_StringKey1], [MSO_StringKey2], [MSO_IntKey1], [MSO_IntKey2]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MSO_CreditCard_MSTR].[MSO_TableName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MSO_CreditCard_MSTR].[MSO_StringKey1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MSO_CreditCard_MSTR].[MSO_StringKey2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MSO_CreditCard_MSTR].[MSO_IntKey1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MSO_CreditCard_MSTR].[MSO_IntKey2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MSO_CreditCard_MSTR].[MSO_CardNumberPABP]'
GO
GRANT SELECT ON  [dbo].[MSO_CreditCard_MSTR] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[MSO_CreditCard_MSTR] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[MSO_CreditCard_MSTR] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[MSO_CreditCard_MSTR] TO [DYNGRP]
GO
