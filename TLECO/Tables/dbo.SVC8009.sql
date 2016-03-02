CREATE TABLE [dbo].[SVC8009]
(
[SCHEDID] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
[FREQOFPM] [smallint] NOT NULL,
[QUANTITY] [numeric] (19, 5) NOT NULL,
[UOFM] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Meter_Type] [smallint] NOT NULL,
[SVC_PM_Type] [smallint] NOT NULL,
[PMDTLID] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC8009] ADD CONSTRAINT [PKSVC8009] PRIMARY KEY NONCLUSTERED  ([SCHEDID], [LNSEQNBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC8009].[SCHEDID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC8009].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC8009].[FREQOFPM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC8009].[QUANTITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC8009].[UOFM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC8009].[SVC_Meter_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC8009].[SVC_PM_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC8009].[PMDTLID]'
GO
GRANT SELECT ON  [dbo].[SVC8009] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC8009] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC8009] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC8009] TO [DYNGRP]
GO
