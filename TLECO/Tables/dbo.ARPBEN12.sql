CREATE TABLE [dbo].[ARPBEN12]
(
[EMPID_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BENEFIT] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COPAYCODE_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COPAYAMOUNT_I] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ARPBEN12] ADD CONSTRAINT [PKARPBEN12] PRIMARY KEY CLUSTERED  ([EMPID_I], [BENEFIT], [COPAYCODE_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ARPBEN12].[EMPID_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ARPBEN12].[BENEFIT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ARPBEN12].[COPAYCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ARPBEN12].[COPAYAMOUNT_I]'
GO
GRANT SELECT ON  [dbo].[ARPBEN12] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ARPBEN12] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ARPBEN12] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ARPBEN12] TO [DYNGRP]
GO
