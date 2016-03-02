CREATE TABLE [dbo].[B2920406]
(
[COMPTRNM] [int] NOT NULL,
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EMPLOYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UPRTRXCD] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHRGAMNT] [numeric] (19, 5) NOT NULL,
[SCHEDULE_NUMBER] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Schedule_Payment_Number] [smallint] NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
[CMPNTSEQ] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B2920406] ADD CONSTRAINT [PKB2920406] PRIMARY KEY NONCLUSTERED  ([COMPTRNM]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2920406].[COMPTRNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2920406].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2920406].[EMPLOYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2920406].[UPRTRXCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2920406].[CHRGAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2920406].[SCHEDULE_NUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2920406].[Schedule_Payment_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2920406].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2920406].[CMPNTSEQ]'
GO
GRANT SELECT ON  [dbo].[B2920406] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B2920406] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B2920406] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B2920406] TO [DYNGRP]
GO
