CREATE TABLE [dbo].[B4640007]
(
[BSSI_Tenant_Lease_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
[Line_SEQ_Offset] [int] NOT NULL,
[YEAR1] [smallint] NOT NULL,
[PERIODID] [smallint] NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[ENDDATE] [datetime] NOT NULL,
[BSSI_CorrectedAmount] [numeric] (19, 5) NOT NULL,
[DATE1] [datetime] NOT NULL,
[BSSI_SalesNumberStatus] [smallint] NOT NULL,
[BSSI_Sales_Amount] [numeric] (19, 5) NOT NULL,
[SOPNUMBE] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_ChargeLineSeq] [numeric] (19, 5) NOT NULL,
[BSSI_YearEndChargeLineSe] [numeric] (19, 5) NOT NULL,
[BSSI_ReversingChargeLine] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4640007] ADD CONSTRAINT [CK__B4640007__DATE1__683C2BFB] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[B4640007] ADD CONSTRAINT [CK__B4640007__ENDDAT__674807C2] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[B4640007] ADD CONSTRAINT [CK__B4640007__STRTDA__6653E389] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[B4640007] ADD CONSTRAINT [PKB4640007] PRIMARY KEY NONCLUSTERED  ([BSSI_Tenant_Lease_Number], [LOCNCODE], [LNSEQNBR], [Line_SEQ_Offset]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640007].[BSSI_Tenant_Lease_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640007].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640007].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640007].[Line_SEQ_Offset]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640007].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640007].[PERIODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640007].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640007].[ENDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640007].[BSSI_CorrectedAmount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640007].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640007].[BSSI_SalesNumberStatus]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640007].[BSSI_Sales_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640007].[SOPNUMBE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640007].[BSSI_ChargeLineSeq]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640007].[BSSI_YearEndChargeLineSe]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640007].[BSSI_ReversingChargeLine]'
GO
GRANT SELECT ON  [dbo].[B4640007] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4640007] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4640007] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4640007] TO [DYNGRP]
GO
