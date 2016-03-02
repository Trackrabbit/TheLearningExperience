CREATE TABLE [dbo].[B4640003]
(
[BSSI_Ground_Lease_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
[BSSI_Charge_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_EscalationApplyDate] [datetime] NOT NULL,
[BSSI_Charge_Amount] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4640003] ADD CONSTRAINT [CK__B4640003__BSSI_E__00A7E712] CHECK ((datepart(hour,[BSSI_EscalationApplyDate])=(0) AND datepart(minute,[BSSI_EscalationApplyDate])=(0) AND datepart(second,[BSSI_EscalationApplyDate])=(0) AND datepart(millisecond,[BSSI_EscalationApplyDate])=(0)))
GO
ALTER TABLE [dbo].[B4640003] ADD CONSTRAINT [PKB4640003] PRIMARY KEY NONCLUSTERED  ([BSSI_Ground_Lease_Number], [LNITMSEQ], [LNSEQNBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B4640003] ON [dbo].[B4640003] ([BSSI_Ground_Lease_Number], [LNITMSEQ], [BSSI_EscalationApplyDate], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640003].[BSSI_Ground_Lease_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640003].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640003].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640003].[BSSI_Charge_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640003].[BSSI_EscalationApplyDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640003].[BSSI_Charge_Amount]'
GO
GRANT SELECT ON  [dbo].[B4640003] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4640003] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4640003] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4640003] TO [DYNGRP]
GO
