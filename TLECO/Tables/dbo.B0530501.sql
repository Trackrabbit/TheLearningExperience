CREATE TABLE [dbo].[B0530501]
(
[BSSI_Capital_Call_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[BSSI_Fee_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Fee_Amount] [numeric] (19, 5) NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B0530501] ADD CONSTRAINT [PKB0530501] PRIMARY KEY CLUSTERED  ([BSSI_Capital_Call_ID], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B0530501] ON [dbo].[B0530501] ([BSSI_Capital_Call_ID], [BSSI_Fee_ID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0530501].[BSSI_Capital_Call_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0530501].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0530501].[BSSI_Fee_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0530501].[BSSI_Fee_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0530501].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0530501].[CURRNIDX]'
GO
GRANT SELECT ON  [dbo].[B0530501] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B0530501] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B0530501] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B0530501] TO [DYNGRP]
GO
