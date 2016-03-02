CREATE TABLE [dbo].[B7100300]
(
[BSSI_Offering_Type_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Description] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Rev_Def_Acct_Index] [int] NOT NULL,
[BSSI_On_Hold_RevDefIndex] [int] NOT NULL,
[BSSI_Exp_Deferral_Index] [int] NOT NULL,
[BSSI_On_Hold_ExpDefIndex] [int] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B7100300] ADD CONSTRAINT [PKB7100300] PRIMARY KEY NONCLUSTERED  ([BSSI_Offering_Type_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100300].[BSSI_Offering_Type_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100300].[BSSI_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100300].[BSSI_Rev_Def_Acct_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100300].[BSSI_On_Hold_RevDefIndex]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100300].[BSSI_Exp_Deferral_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100300].[BSSI_On_Hold_ExpDefIndex]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7100300].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[B7100300] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B7100300] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B7100300] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B7100300] TO [DYNGRP]
GO
