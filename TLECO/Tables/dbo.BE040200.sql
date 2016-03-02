CREATE TABLE [dbo].[BE040200]
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
ALTER TABLE [dbo].[BE040200] ADD CONSTRAINT [CK__BE040200__IDATE___2AEB98C7] CHECK ((datepart(hour,[IDATE_I])=(0) AND datepart(minute,[IDATE_I])=(0) AND datepart(second,[IDATE_I])=(0) AND datepart(millisecond,[IDATE_I])=(0)))
GO
ALTER TABLE [dbo].[BE040200] ADD CONSTRAINT [PKBE040200] PRIMARY KEY CLUSTERED  ([EMPID_I], [IC_Instance_Number_I], [SEQ_I]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3BE040200] ON [dbo].[BE040200] ([EMPID_I], [IC_Instance_Number_I], [IC_Auto_Post_CB_I], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2BE040200] ON [dbo].[BE040200] ([EMPID_I], [IC_Instance_Number_I], [IDATE_I], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BE040200].[EMPID_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BE040200].[IC_Instance_Number_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BE040200].[SEQ_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BE040200].[IDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BE040200].[IC_Auto_Post_CB_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BE040200].[IC_Amount_Due_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BE040200].[IC_Amount_Paid_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BE040200].[IC_Amount_Due_Total_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BE040200].[IC_Amount_Paid_Total_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BE040200].[IC_Balance_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BE040200].[DSCRIPTN]'
GO
GRANT SELECT ON  [dbo].[BE040200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[BE040200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[BE040200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[BE040200] TO [DYNGRP]
GO
