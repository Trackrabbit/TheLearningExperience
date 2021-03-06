CREATE TABLE [dbo].[TAAC0230]
(
[ACCRUAL_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TIMECODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TAAC0230] ADD CONSTRAINT [PKTAAC0230] PRIMARY KEY CLUSTERED  ([ACCRUAL_I], [TIMECODE_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TAAC0230].[ACCRUAL_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TAAC0230].[TIMECODE_I]'
GO
GRANT SELECT ON  [dbo].[TAAC0230] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[TAAC0230] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[TAAC0230] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[TAAC0230] TO [DYNGRP]
GO
