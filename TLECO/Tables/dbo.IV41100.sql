CREATE TABLE [dbo].[IV41100]
(
[Landed_Cost_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Long_Description] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[RATETPID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DECPLCUR] [smallint] NOT NULL,
[ODECPLCU] [smallint] NOT NULL,
[ACPURIDX] [int] NOT NULL,
[PURPVIDX] [int] NOT NULL,
[Invoice_Match] [tinyint] NOT NULL,
[CALCMTHD] [smallint] NOT NULL,
[Orig_Landed_Cost_Amount] [numeric] (19, 5) NOT NULL,
[Calculation_Percentage] [int] NOT NULL,
[Revalue_Inventory] [tinyint] NOT NULL,
[Tolerance_Percentage] [int] NOT NULL,
[Vendor_Note_Index] [numeric] (19, 5) NOT NULL,
[Currency_Note_Index] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IV41100] ADD CONSTRAINT [PKIV41100] PRIMARY KEY NONCLUSTERED  ([Landed_Cost_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2IV41100] ON [dbo].[IV41100] ([VENDORID], [Landed_Cost_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV41100].[Landed_Cost_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV41100].[Long_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV41100].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV41100].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV41100].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV41100].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV41100].[RATETPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV41100].[DECPLCUR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV41100].[ODECPLCU]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV41100].[ACPURIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV41100].[PURPVIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV41100].[Invoice_Match]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV41100].[CALCMTHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV41100].[Orig_Landed_Cost_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV41100].[Calculation_Percentage]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV41100].[Revalue_Inventory]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV41100].[Tolerance_Percentage]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV41100].[Vendor_Note_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV41100].[Currency_Note_Index]'
GO
GRANT SELECT ON  [dbo].[IV41100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[IV41100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[IV41100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[IV41100] TO [DYNGRP]
GO
