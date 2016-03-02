CREATE TABLE [dbo].[ME240453]
(
[CHEKBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_Signature_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_Signature_Threshhold1] [numeric] (19, 5) NOT NULL,
[ME_Signature_Threshhold2] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ME240453] ADD CONSTRAINT [PKME240453] PRIMARY KEY NONCLUSTERED  ([CHEKBKID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240453].[CHEKBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240453].[ME_Signature_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME240453].[ME_Signature_Threshhold1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME240453].[ME_Signature_Threshhold2]'
GO
GRANT SELECT ON  [dbo].[ME240453] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ME240453] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ME240453] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ME240453] TO [DYNGRP]
GO
