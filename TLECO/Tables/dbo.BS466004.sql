CREATE TABLE [dbo].[BS466004]
(
[VCHRNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCTYPE] [smallint] NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[BSSI_Template_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Description] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Charge_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[BSSI_AllocatedAmt] [numeric] (19, 5) NOT NULL,
[BSSI_Allocation_Percent] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BS466004] ADD CONSTRAINT [PKBS466004] PRIMARY KEY NONCLUSTERED  ([VCHRNMBR], [DOCTYPE], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2BS466004] ON [dbo].[BS466004] ([VCHRNMBR], [DOCTYPE], [BSSI_Template_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BS466004].[VCHRNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BS466004].[DOCTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BS466004].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BS466004].[BSSI_Template_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BS466004].[BSSI_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BS466004].[BSSI_Charge_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BS466004].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BS466004].[BSSI_AllocatedAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BS466004].[BSSI_Allocation_Percent]'
GO
GRANT SELECT ON  [dbo].[BS466004] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[BS466004] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[BS466004] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[BS466004] TO [DYNGRP]
GO
