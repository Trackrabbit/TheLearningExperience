CREATE TABLE [dbo].[POP10700]
(
[POPRCTNM] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCPTLNNM] [int] NOT NULL,
[LCLINENUMBER] [int] NOT NULL,
[LCHDRNUMBER] [int] NOT NULL,
[Landed_Cost_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[Long_Description] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Landed_Cost_Type] [smallint] NOT NULL,
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Vendor_Note_Index] [numeric] (19, 5) NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Currency_Note_Index] [numeric] (19, 5) NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[RATETPID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EXGTBLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XCHGRATE] [numeric] (19, 7) NOT NULL,
[EXCHDATE] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[RATECALC] [smallint] NOT NULL,
[DENXRATE] [numeric] (19, 7) NOT NULL,
[MCTRXSTT] [smallint] NOT NULL,
[DECPLCUR] [smallint] NOT NULL,
[ODECPLCU] [smallint] NOT NULL,
[ACPURIDX] [int] NOT NULL,
[DistRef] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PURPVIDX] [int] NOT NULL,
[Invoice_Match] [tinyint] NOT NULL,
[CALCMTHD] [smallint] NOT NULL,
[Orig_Landed_Cost_Amount] [numeric] (19, 5) NOT NULL,
[Calculation_Percentage] [int] NOT NULL,
[Total_Landed_Cost_Amount] [numeric] (19, 5) NOT NULL,
[Orig_TotalLandedCostAmt] [numeric] (19, 5) NOT NULL,
[Landed_Cost_Warnings] [smallint] NOT NULL,
[Apportion_By] [smallint] NOT NULL,
[Orig_UnapportionedAmount] [numeric] (19, 5) NOT NULL,
[INVINDX] [int] NOT NULL,
[Applied] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[POP10700] ADD CONSTRAINT [CK__POP10700__TIME1__6FF48C97] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[POP10700] ADD CONSTRAINT [CK__POP10700__EXCHDA__6F00685E] CHECK ((datepart(hour,[EXCHDATE])=(0) AND datepart(minute,[EXCHDATE])=(0) AND datepart(second,[EXCHDATE])=(0) AND datepart(millisecond,[EXCHDATE])=(0)))
GO
ALTER TABLE [dbo].[POP10700] ADD CONSTRAINT [PKPOP10700] PRIMARY KEY NONCLUSTERED  ([POPRCTNM], [RCPTLNNM], [LCLINENUMBER]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3POP10700] ON [dbo].[POP10700] ([POPRCTNM], [CURNCYID], [VENDORID], [RCPTLNNM], [LCLINENUMBER]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2POP10700] ON [dbo].[POP10700] ([POPRCTNM], [Landed_Cost_ID], [VENDORID], [ACPURIDX], [RCPTLNNM], [LCLINENUMBER]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4POP10700] ON [dbo].[POP10700] ([POPRCTNM], [RCPTLNNM], [LCHDRNUMBER], [LCLINENUMBER]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10700].[POPRCTNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10700].[RCPTLNNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10700].[LCLINENUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10700].[LCHDRNUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10700].[Landed_Cost_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10700].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10700].[Long_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10700].[Landed_Cost_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10700].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10700].[Vendor_Note_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10700].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10700].[Currency_Note_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10700].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10700].[RATETPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10700].[EXGTBLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10700].[XCHGRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP10700].[EXCHDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP10700].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10700].[RATECALC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10700].[DENXRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10700].[MCTRXSTT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10700].[DECPLCUR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10700].[ODECPLCU]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10700].[ACPURIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10700].[DistRef]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10700].[PURPVIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10700].[Invoice_Match]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10700].[CALCMTHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10700].[Orig_Landed_Cost_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10700].[Calculation_Percentage]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10700].[Total_Landed_Cost_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10700].[Orig_TotalLandedCostAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10700].[Landed_Cost_Warnings]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10700].[Apportion_By]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10700].[Orig_UnapportionedAmount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10700].[INVINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10700].[Applied]'
GO
GRANT SELECT ON  [dbo].[POP10700] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[POP10700] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[POP10700] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[POP10700] TO [DYNGRP]
GO
