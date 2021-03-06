CREATE TABLE [dbo].[ME123502]
(
[PP_Number] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHEKBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ME123502] ADD CONSTRAINT [PKME123502] PRIMARY KEY CLUSTERED  ([PP_Number], [CHEKBKID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2ME123502] ON [dbo].[ME123502] ([CHEKBKID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME123502].[PP_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME123502].[CHEKBKID]'
GO
GRANT SELECT ON  [dbo].[ME123502] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ME123502] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ME123502] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ME123502] TO [DYNGRP]
GO
