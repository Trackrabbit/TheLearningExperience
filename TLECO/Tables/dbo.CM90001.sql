CREATE TABLE [dbo].[CM90001]
(
[CHEKBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFTGenerationTimestamp] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TotalDebitAmount] [numeric] (19, 5) NOT NULL,
[TotCrdAmt] [numeric] (19, 5) NOT NULL,
[TotalNumberofDebits] [int] NOT NULL,
[TotalNumberofCredits] [int] NOT NULL,
[FILENAME] [char] (45) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CM90001] ADD CONSTRAINT [PKCM90001] PRIMARY KEY NONCLUSTERED  ([CHEKBKID], [EFTGenerationTimestamp]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM90001].[CHEKBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM90001].[EFTGenerationTimestamp]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM90001].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM90001].[TotalDebitAmount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM90001].[TotCrdAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM90001].[TotalNumberofDebits]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM90001].[TotalNumberofCredits]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM90001].[FILENAME]'
GO
GRANT SELECT ON  [dbo].[CM90001] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[CM90001] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[CM90001] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[CM90001] TO [DYNGRP]
GO
