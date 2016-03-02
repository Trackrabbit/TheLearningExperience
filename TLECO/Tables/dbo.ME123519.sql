CREATE TABLE [dbo].[ME123519]
(
[Output_Format] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_Transaction_Type] [smallint] NOT NULL,
[ME_Trx_Matching_Code] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_Void_Trx_Amounts_Zero] [tinyint] NOT NULL,
[ME_Omit_Checks_w_Alphas] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ME123519] ADD CONSTRAINT [PKME123519] PRIMARY KEY CLUSTERED  ([Output_Format], [ME_Transaction_Type]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME123519].[Output_Format]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME123519].[ME_Transaction_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME123519].[ME_Trx_Matching_Code]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME123519].[ME_Void_Trx_Amounts_Zero]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME123519].[ME_Omit_Checks_w_Alphas]'
GO
GRANT SELECT ON  [dbo].[ME123519] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ME123519] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ME123519] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ME123519] TO [DYNGRP]
GO
