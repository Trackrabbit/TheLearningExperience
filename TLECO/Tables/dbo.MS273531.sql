CREATE TABLE [dbo].[MS273531]
(
[MSO_Last_Settled_Time] [datetime] NOT NULL,
[MSO_Last_Settled_Date] [datetime] NOT NULL,
[MSO_EngineGUID] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_Total_Transactions] [int] NOT NULL,
[MSO_Total_Amount] [numeric] (19, 5) NOT NULL,
[MSO_Total_Credit_Transac] [int] NOT NULL,
[MSO_Total_Credit_Amount] [numeric] (19, 5) NOT NULL,
[MSO_Total_Sale_Transacti] [int] NOT NULL,
[MSO_Total_Sale_Amount] [numeric] (19, 5) NOT NULL,
[USERDATE] [datetime] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MS273531] ADD CONSTRAINT [CK__MS273531__MSO_La__20FB15CB] CHECK ((datepart(day,[MSO_Last_Settled_Time])=(1) AND datepart(month,[MSO_Last_Settled_Time])=(1) AND datepart(year,[MSO_Last_Settled_Time])=(1900)))
GO
ALTER TABLE [dbo].[MS273531] ADD CONSTRAINT [CK__MS273531__MSO_La__21EF3A04] CHECK ((datepart(hour,[MSO_Last_Settled_Date])=(0) AND datepart(minute,[MSO_Last_Settled_Date])=(0) AND datepart(second,[MSO_Last_Settled_Date])=(0) AND datepart(millisecond,[MSO_Last_Settled_Date])=(0)))
GO
ALTER TABLE [dbo].[MS273531] ADD CONSTRAINT [CK__MS273531__USERDA__22E35E3D] CHECK ((datepart(hour,[USERDATE])=(0) AND datepart(minute,[USERDATE])=(0) AND datepart(second,[USERDATE])=(0) AND datepart(millisecond,[USERDATE])=(0)))
GO
ALTER TABLE [dbo].[MS273531] ADD CONSTRAINT [PKMS273531] PRIMARY KEY NONCLUSTERED  ([MSO_Last_Settled_Time], [MSO_Last_Settled_Date], [MSO_EngineGUID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2MS273531] ON [dbo].[MS273531] ([MSO_EngineGUID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[MS273531].[MSO_Last_Settled_Time]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[MS273531].[MSO_Last_Settled_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273531].[MSO_EngineGUID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273531].[MSO_Total_Transactions]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MS273531].[MSO_Total_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273531].[MSO_Total_Credit_Transac]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MS273531].[MSO_Total_Credit_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273531].[MSO_Total_Sale_Transacti]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MS273531].[MSO_Total_Sale_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[MS273531].[USERDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273531].[USERID]'
GO
GRANT SELECT ON  [dbo].[MS273531] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[MS273531] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[MS273531] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[MS273531] TO [DYNGRP]
GO
