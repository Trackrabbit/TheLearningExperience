CREATE TABLE [dbo].[BEA40200]
(
[EMPID_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IC_Instance_Number_I] [smallint] NOT NULL,
[SEQ_I] [int] NOT NULL,
[IDATE_I] [datetime] NOT NULL,
[IC_Auto_Post_CB_I] [tinyint] NOT NULL,
[IC_Amount_Due_I] [numeric] (19, 5) NOT NULL,
[IC_Amount_Paid_I] [numeric] (19, 5) NOT NULL,
[IC_Amount_Due_Total_I] [numeric] (19, 5) NOT NULL,
[IC_Amount_Paid_Total_I] [numeric] (19, 5) NOT NULL,
[IC_Balance_I] [numeric] (19, 5) NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BEA40200] ADD CONSTRAINT [CK__BEA40200__IDATE___4C4C8C92] CHECK ((datepart(hour,[IDATE_I])=(0) AND datepart(minute,[IDATE_I])=(0) AND datepart(second,[IDATE_I])=(0) AND datepart(millisecond,[IDATE_I])=(0)))
GO
ALTER TABLE [dbo].[BEA40200] ADD CONSTRAINT [PKBEA40200] PRIMARY KEY CLUSTERED  ([EMPID_I], [IC_Instance_Number_I], [SEQ_I]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3BEA40200] ON [dbo].[BEA40200] ([EMPID_I], [IC_Instance_Number_I], [IC_Auto_Post_CB_I], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2BEA40200] ON [dbo].[BEA40200] ([EMPID_I], [IC_Instance_Number_I], [IDATE_I], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BEA40200].[EMPID_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BEA40200].[IC_Instance_Number_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BEA40200].[SEQ_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BEA40200].[IDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BEA40200].[IC_Auto_Post_CB_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BEA40200].[IC_Amount_Due_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BEA40200].[IC_Amount_Paid_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BEA40200].[IC_Amount_Due_Total_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BEA40200].[IC_Amount_Paid_Total_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BEA40200].[IC_Balance_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BEA40200].[DSCRIPTN]'
GO
GRANT SELECT ON  [dbo].[BEA40200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[BEA40200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[BEA40200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[BEA40200] TO [DYNGRP]
GO
