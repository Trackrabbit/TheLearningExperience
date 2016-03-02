CREATE TABLE [dbo].[B0510135]
(
[MJW_Distribution_Number] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Distribution_Descrip] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Offering_ID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Series_ID_From] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Series_ID_To] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Amount_To_Distribute] [numeric] (19, 5) NOT NULL,
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Distribution_Type] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PERIODID] [smallint] NOT NULL,
[MJW_Period_From_Date] [datetime] NOT NULL,
[MJW_Period_To_Date] [datetime] NOT NULL,
[BSSI_Liquidation_Date] [datetime] NOT NULL,
[MJW_Interest_Paid_Days] [smallint] NOT NULL,
[IMS_Type_of_Distribution] [smallint] NOT NULL,
[IMS_Amount_Type] [smallint] NOT NULL,
[IMS_Percent_Distribute] [smallint] NOT NULL,
[MJW_Preferred_Returns] [numeric] (19, 5) NOT NULL,
[MJW_Investor_ID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Invesmentt_Num_From] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Investment_Number_To] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[BSSI_AR_Batch] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Capital_Call_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCDATE] [datetime] NOT NULL,
[BSSI_Facility_ID] [char] (67) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[DUMYRCRD] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B0510135] ADD CONSTRAINT [CK__B0510135__BSSI_L__628CA8EF] CHECK ((datepart(hour,[BSSI_Liquidation_Date])=(0) AND datepart(minute,[BSSI_Liquidation_Date])=(0) AND datepart(second,[BSSI_Liquidation_Date])=(0) AND datepart(millisecond,[BSSI_Liquidation_Date])=(0)))
GO
ALTER TABLE [dbo].[B0510135] ADD CONSTRAINT [CK__B0510135__DOCDAT__6380CD28] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[B0510135] ADD CONSTRAINT [CK__B0510135__MJW_Pe__60A4607D] CHECK ((datepart(hour,[MJW_Period_From_Date])=(0) AND datepart(minute,[MJW_Period_From_Date])=(0) AND datepart(second,[MJW_Period_From_Date])=(0) AND datepart(millisecond,[MJW_Period_From_Date])=(0)))
GO
ALTER TABLE [dbo].[B0510135] ADD CONSTRAINT [CK__B0510135__MJW_Pe__619884B6] CHECK ((datepart(hour,[MJW_Period_To_Date])=(0) AND datepart(minute,[MJW_Period_To_Date])=(0) AND datepart(second,[MJW_Period_To_Date])=(0) AND datepart(millisecond,[MJW_Period_To_Date])=(0)))
GO
ALTER TABLE [dbo].[B0510135] ADD CONSTRAINT [PKB0510135] PRIMARY KEY CLUSTERED  ([MJW_Distribution_Number]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3B0510135] ON [dbo].[B0510135] ([BSSI_Capital_Call_ID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6B0510135] ON [dbo].[B0510135] ([BSSI_Capital_Call_ID], [DOCDATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5B0510135] ON [dbo].[B0510135] ([MJW_Investor_ID], [IMS_Type_of_Distribution], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4B0510135] ON [dbo].[B0510135] ([MJW_Offering_ID], [IMS_Type_of_Distribution], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B0510135] ON [dbo].[B0510135] ([MJW_Period_From_Date], [MJW_Period_To_Date], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510135].[MJW_Distribution_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510135].[MJW_Distribution_Descrip]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510135].[MJW_Offering_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510135].[MJW_Series_ID_From]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510135].[MJW_Series_ID_To]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0510135].[MJW_Amount_To_Distribute]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510135].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510135].[MJW_Distribution_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510135].[PERIODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B0510135].[MJW_Period_From_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B0510135].[MJW_Period_To_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B0510135].[BSSI_Liquidation_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510135].[MJW_Interest_Paid_Days]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510135].[IMS_Type_of_Distribution]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510135].[IMS_Amount_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510135].[IMS_Percent_Distribute]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0510135].[MJW_Preferred_Returns]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510135].[MJW_Investor_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510135].[MJW_Invesmentt_Num_From]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510135].[MJW_Investment_Number_To]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0510135].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510135].[BSSI_AR_Batch]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510135].[BSSI_Capital_Call_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510135].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B0510135].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510135].[BSSI_Facility_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510135].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510135].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510135].[DUMYRCRD]'
GO
GRANT SELECT ON  [dbo].[B0510135] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B0510135] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B0510135] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B0510135] TO [DYNGRP]
GO
