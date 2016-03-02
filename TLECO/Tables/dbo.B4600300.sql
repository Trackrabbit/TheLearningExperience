CREATE TABLE [dbo].[B4600300]
(
[BSSI_Equipment_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Description] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MANUFACTURER] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSIModelNumber] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Serial_Number] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRCHDATE] [datetime] NOT NULL,
[BSSILastMaintenanceDate] [datetime] NOT NULL,
[BSSIWarrantyExpiryDate] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4600300] ADD CONSTRAINT [CK__B4600300__BSSILa__14E3E9E9] CHECK ((datepart(hour,[BSSILastMaintenanceDate])=(0) AND datepart(minute,[BSSILastMaintenanceDate])=(0) AND datepart(second,[BSSILastMaintenanceDate])=(0) AND datepart(millisecond,[BSSILastMaintenanceDate])=(0)))
GO
ALTER TABLE [dbo].[B4600300] ADD CONSTRAINT [CK__B4600300__BSSIWa__15D80E22] CHECK ((datepart(hour,[BSSIWarrantyExpiryDate])=(0) AND datepart(minute,[BSSIWarrantyExpiryDate])=(0) AND datepart(second,[BSSIWarrantyExpiryDate])=(0) AND datepart(millisecond,[BSSIWarrantyExpiryDate])=(0)))
GO
ALTER TABLE [dbo].[B4600300] ADD CONSTRAINT [CK__B4600300__PRCHDA__13EFC5B0] CHECK ((datepart(hour,[PRCHDATE])=(0) AND datepart(minute,[PRCHDATE])=(0) AND datepart(second,[PRCHDATE])=(0) AND datepart(millisecond,[PRCHDATE])=(0)))
GO
ALTER TABLE [dbo].[B4600300] ADD CONSTRAINT [PKB4600300] PRIMARY KEY NONCLUSTERED  ([BSSI_Equipment_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B4600300] ON [dbo].[B4600300] ([BSSI_Description], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600300].[BSSI_Equipment_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600300].[BSSI_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4600300].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600300].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600300].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600300].[MANUFACTURER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600300].[BSSIModelNumber]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600300].[BSSI_Serial_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4600300].[PRCHDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4600300].[BSSILastMaintenanceDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4600300].[BSSIWarrantyExpiryDate]'
GO
GRANT SELECT ON  [dbo].[B4600300] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4600300] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4600300] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4600300] TO [DYNGRP]
GO
