CREATE TABLE [dbo].[SVC00609]
(
[CONSTS] [smallint] NOT NULL,
[CONTNBR] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[SVC_Distribution_Type] [smallint] NOT NULL,
[DistRef] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTINDX] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC00609] ADD CONSTRAINT [PKSVC00609] PRIMARY KEY NONCLUSTERED  ([CONSTS], [CONTNBR], [LNSEQNBR], [SEQNUMBR], [SVC_Distribution_Type]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00609].[CONSTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00609].[CONTNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00609].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00609].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00609].[SVC_Distribution_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00609].[DistRef]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00609].[ACTINDX]'
GO
GRANT SELECT ON  [dbo].[SVC00609] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00609] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00609] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00609] TO [DYNGRP]
GO
