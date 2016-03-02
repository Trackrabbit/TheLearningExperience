CREATE TABLE [dbo].[B4640008]
(
[BSSI_Tenant_Lease_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
[YEAR1] [smallint] NOT NULL,
[PERIODID] [smallint] NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[ENDDATE] [datetime] NOT NULL,
[DATE1] [datetime] NOT NULL,
[BSSI_MeterNumber] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_PreviousReading] [numeric] (19, 5) NOT NULL,
[BSSI_CurrentReading] [numeric] (19, 5) NOT NULL,
[BSSI_Consumption] [numeric] (19, 5) NOT NULL,
[BSSI_ChargeLineSeq] [numeric] (19, 5) NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_UserID_Modified] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_IsProcessed] [tinyint] NOT NULL,
[BSSI_Imported] [tinyint] NOT NULL,
[BSSI_Description] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Dummy] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4640008] ADD CONSTRAINT [CK__B4640008__DATE1__0616A7A5] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[B4640008] ADD CONSTRAINT [CK__B4640008__ENDDAT__0522836C] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[B4640008] ADD CONSTRAINT [CK__B4640008__STRTDA__042E5F33] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[B4640008] ADD CONSTRAINT [PKB4640008] PRIMARY KEY NONCLUSTERED  ([BSSI_Tenant_Lease_Number], [LOCNCODE], [LNSEQNBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK10B4640008] ON [dbo].[B4640008] ([BSSI_Description], [LOCNCODE], [BSSI_MeterNumber], [STRTDATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK9B4640008] ON [dbo].[B4640008] ([BSSI_Tenant_Lease_Number], [LOCNCODE], [BSSI_MeterNumber], [ENDDATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5B4640008] ON [dbo].[B4640008] ([BSSI_Tenant_Lease_Number], [LOCNCODE], [BSSI_MeterNumber], [LNSEQNBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6B4640008] ON [dbo].[B4640008] ([BSSI_Tenant_Lease_Number], [LOCNCODE], [BSSI_MeterNumber], [STRTDATE], [ENDDATE]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B4640008] ON [dbo].[B4640008] ([BSSI_Tenant_Lease_Number], [LOCNCODE], [DATE1], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4B4640008] ON [dbo].[B4640008] ([BSSI_Tenant_Lease_Number], [LOCNCODE], [STRTDATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK8B4640008] ON [dbo].[B4640008] ([BSSI_Tenant_Lease_Number], [LOCNCODE], [STRTDATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3B4640008] ON [dbo].[B4640008] ([ENDDATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK7B4640008] ON [dbo].[B4640008] ([LOCNCODE], [BSSI_MeterNumber], [BSSI_CurrentReading], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK11B4640008] ON [dbo].[B4640008] ([STRTDATE], [BSSI_Tenant_Lease_Number], [LOCNCODE], [BSSI_MeterNumber], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640008].[BSSI_Tenant_Lease_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640008].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640008].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640008].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640008].[PERIODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640008].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640008].[ENDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640008].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640008].[BSSI_MeterNumber]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640008].[BSSI_PreviousReading]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640008].[BSSI_CurrentReading]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640008].[BSSI_Consumption]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640008].[BSSI_ChargeLineSeq]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640008].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640008].[BSSI_UserID_Modified]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640008].[BSSI_IsProcessed]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640008].[BSSI_Imported]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640008].[BSSI_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640008].[BSSI_Dummy]'
GO
GRANT SELECT ON  [dbo].[B4640008] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4640008] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4640008] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4640008] TO [DYNGRP]
GO
