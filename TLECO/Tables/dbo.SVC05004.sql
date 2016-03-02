CREATE TABLE [dbo].[SVC05004]
(
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RTV_Type] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Dollar_Or_Percent_Reimbu_1] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Dollar_Or_Percent_Reimbu_2] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Dollar_Or_Percent_Reimbu_3] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Dollar_Or_Percent_Reimbu_4] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Reimbursement_Amount_1] [numeric] (19, 5) NOT NULL,
[Reimbursement_Amount_2] [numeric] (19, 5) NOT NULL,
[Reimbursement_Amount_3] [numeric] (19, 5) NOT NULL,
[Reimbursement_Amount_4] [numeric] (19, 5) NOT NULL,
[Reimbursement_NTE_1] [numeric] (19, 5) NOT NULL,
[Reimbursement_NTE_2] [numeric] (19, 5) NOT NULL,
[Reimbursement_NTE_3] [numeric] (19, 5) NOT NULL,
[Reimbursement_NTE_4] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC05004] ADD CONSTRAINT [PKSVC05004] PRIMARY KEY CLUSTERED  ([VENDORID], [ITEMNMBR], [RTV_Type]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05004].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05004].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05004].[RTV_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05004].[Dollar_Or_Percent_Reimbu_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05004].[Dollar_Or_Percent_Reimbu_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05004].[Dollar_Or_Percent_Reimbu_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05004].[Dollar_Or_Percent_Reimbu_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05004].[Reimbursement_Amount_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05004].[Reimbursement_Amount_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05004].[Reimbursement_Amount_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05004].[Reimbursement_Amount_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05004].[Reimbursement_NTE_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05004].[Reimbursement_NTE_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05004].[Reimbursement_NTE_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05004].[Reimbursement_NTE_4]'
GO
GRANT SELECT ON  [dbo].[SVC05004] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC05004] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC05004] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC05004] TO [DYNGRP]
GO
