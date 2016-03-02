CREATE TABLE [dbo].[BS466002]
(
[VCHRNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCTYPE] [smallint] NOT NULL,
[DOCDATE] [datetime] NOT NULL,
[BSSI_Allocated_Amt] [numeric] (19, 5) NOT NULL,
[BSSI_Exp_Adj_Amt] [numeric] (19, 5) NOT NULL,
[BSSI_Tenant_Lease_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Charge_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[YEAR1] [smallint] NOT NULL,
[DATE1] [datetime] NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[ENDDATE] [datetime] NOT NULL,
[BSSI_Reconcile] [tinyint] NOT NULL,
[BSSI_Is_Reconciled] [tinyint] NOT NULL,
[From_Date] [datetime] NOT NULL,
[TODATE] [datetime] NOT NULL,
[BSSI_Doc_Status] [smallint] NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DUMYRCRD] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BS466002] ADD CONSTRAINT [CK__BS466002__DATE1__3BFDB70A] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[BS466002] ADD CONSTRAINT [CK__BS466002__DOCDAT__3B0992D1] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[BS466002] ADD CONSTRAINT [CK__BS466002__ENDDAT__3DE5FF7C] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[BS466002] ADD CONSTRAINT [CK__BS466002__From_D__3EDA23B5] CHECK ((datepart(hour,[From_Date])=(0) AND datepart(minute,[From_Date])=(0) AND datepart(second,[From_Date])=(0) AND datepart(millisecond,[From_Date])=(0)))
GO
ALTER TABLE [dbo].[BS466002] ADD CONSTRAINT [CK__BS466002__STRTDA__3CF1DB43] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[BS466002] ADD CONSTRAINT [CK__BS466002__TODATE__3FCE47EE] CHECK ((datepart(hour,[TODATE])=(0) AND datepart(minute,[TODATE])=(0) AND datepart(second,[TODATE])=(0) AND datepart(millisecond,[TODATE])=(0)))
GO
ALTER TABLE [dbo].[BS466002] ADD CONSTRAINT [PKBS466002] PRIMARY KEY NONCLUSTERED  ([VCHRNMBR], [BSSI_Tenant_Lease_Number], [LOCNCODE], [BSSI_Charge_ID], [STRTDATE], [ENDDATE]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4BS466002] ON [dbo].[BS466002] ([BSSI_Tenant_Lease_Number], [BSSI_Charge_ID], [DATE1], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6BS466002] ON [dbo].[BS466002] ([BSSI_Tenant_Lease_Number], [LOCNCODE], [BSSI_Charge_ID], [LNSEQNBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3BS466002] ON [dbo].[BS466002] ([VCHRNMBR], [BSSI_Tenant_Lease_Number], [BSSI_Charge_ID], [DATE1], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5BS466002] ON [dbo].[BS466002] ([VCHRNMBR], [BSSI_Tenant_Lease_Number], [LOCNCODE], [BSSI_Charge_ID], [LNSEQNBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2BS466002] ON [dbo].[BS466002] ([VCHRNMBR], [DATE1], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BS466002].[VCHRNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BS466002].[DOCTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BS466002].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BS466002].[BSSI_Allocated_Amt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BS466002].[BSSI_Exp_Adj_Amt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BS466002].[BSSI_Tenant_Lease_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BS466002].[BSSI_Charge_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BS466002].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BS466002].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BS466002].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BS466002].[ENDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BS466002].[BSSI_Reconcile]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BS466002].[BSSI_Is_Reconciled]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BS466002].[From_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BS466002].[TODATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BS466002].[BSSI_Doc_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BS466002].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BS466002].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BS466002].[DUMYRCRD]'
GO
GRANT SELECT ON  [dbo].[BS466002] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[BS466002] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[BS466002] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[BS466002] TO [DYNGRP]
GO
