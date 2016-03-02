CREATE TABLE [dbo].[SVC35600]
(
[RTV_Number] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RTV_Type] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RTV_Return_Status] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RTV_Status] [smallint] NOT NULL,
[VRMA_Document_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RETDOCID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VENDNAME] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADRSCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Ship_Address_Name] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Ship_Address_1] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Ship_Address_2] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Ship_Address_3] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Ship_City] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Ship_State] [char] (29) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ZIPCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Ship_Country] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENTDTE] [datetime] NOT NULL,
[ENTTME] [datetime] NOT NULL,
[PRMDATE] [datetime] NOT NULL,
[Promised_Time] [datetime] NOT NULL,
[Shipped_Date] [datetime] NOT NULL,
[Shipped_Time] [datetime] NOT NULL,
[receiptdate] [datetime] NOT NULL,
[Receipt_Time] [datetime] NOT NULL,
[COMPDTE] [datetime] NOT NULL,
[COMPTME] [datetime] NOT NULL,
[LOCCODEB] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Part_Price] [numeric] (19, 5) NOT NULL,
[Part_Cost] [numeric] (19, 5) NOT NULL,
[Labor_Price] [numeric] (19, 5) NOT NULL,
[Labor_Cost] [numeric] (19, 5) NOT NULL,
[Expense_Price] [numeric] (19, 5) NOT NULL,
[Expense_Cost] [numeric] (19, 5) NOT NULL,
[Travel_Price] [numeric] (19, 5) NOT NULL,
[Travel_Cost] [numeric] (19, 5) NOT NULL,
[Bill_of_Lading_Out] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Shipping_Method_Out] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Bill_of_Lading] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SHIPMTHD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[OFFID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[VCHNUMWK] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Voucher_Number_Invoice] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Voucher_Number_Reimburse] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUSTOWN] [tinyint] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERDEF1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERDEF2] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDEF03] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDEF04] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDEF05] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[RATETPID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EXGTBLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XCHGRATE] [numeric] (19, 7) NOT NULL,
[EXCHDATE] [datetime] NOT NULL,
[DECPLACS] [smallint] NOT NULL,
[TIME1] [datetime] NOT NULL,
[RATECALC] [smallint] NOT NULL,
[VIEWMODE] [smallint] NOT NULL,
[ISMCTRX] [smallint] NOT NULL,
[EXPNDATE] [datetime] NOT NULL,
[DENXRATE] [numeric] (19, 7) NOT NULL,
[MCTRXSTT] [smallint] NOT NULL,
[Originating_Part_Price] [numeric] (19, 5) NOT NULL,
[Originating_Part_Cost] [numeric] (19, 5) NOT NULL,
[Originating_Labor_Price] [numeric] (19, 5) NOT NULL,
[Originating_Labor_Cost] [numeric] (19, 5) NOT NULL,
[Originating_ExpensePrice] [numeric] (19, 5) NOT NULL,
[Originating_Expense_Cost] [numeric] (19, 5) NOT NULL,
[Originating_Travel_Price] [numeric] (19, 5) NOT NULL,
[Originating_Travel_Cost] [numeric] (19, 5) NOT NULL,
[VOIDSTTS] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC35600] ADD CONSTRAINT [CK__SVC35600__COMPTM__3AF77FCA] CHECK ((datepart(day,[COMPTME])=(1) AND datepart(month,[COMPTME])=(1) AND datepart(year,[COMPTME])=(1900)))
GO
ALTER TABLE [dbo].[SVC35600] ADD CONSTRAINT [CK__SVC35600__ENTTME__3CDFC83C] CHECK ((datepart(day,[ENTTME])=(1) AND datepart(month,[ENTTME])=(1) AND datepart(year,[ENTTME])=(1900)))
GO
ALTER TABLE [dbo].[SVC35600] ADD CONSTRAINT [CK__SVC35600__Promis__40B05920] CHECK ((datepart(day,[Promised_Time])=(1) AND datepart(month,[Promised_Time])=(1) AND datepart(year,[Promised_Time])=(1900)))
GO
ALTER TABLE [dbo].[SVC35600] ADD CONSTRAINT [CK__SVC35600__Receip__41A47D59] CHECK ((datepart(day,[Receipt_Time])=(1) AND datepart(month,[Receipt_Time])=(1) AND datepart(year,[Receipt_Time])=(1900)))
GO
ALTER TABLE [dbo].[SVC35600] ADD CONSTRAINT [CK__SVC35600__Shippe__438CC5CB] CHECK ((datepart(day,[Shipped_Time])=(1) AND datepart(month,[Shipped_Time])=(1) AND datepart(year,[Shipped_Time])=(1900)))
GO
ALTER TABLE [dbo].[SVC35600] ADD CONSTRAINT [CK__SVC35600__TIME1__4480EA04] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[SVC35600] ADD CONSTRAINT [CK__SVC35600__COMPDT__3A035B91] CHECK ((datepart(hour,[COMPDTE])=(0) AND datepart(minute,[COMPDTE])=(0) AND datepart(second,[COMPDTE])=(0) AND datepart(millisecond,[COMPDTE])=(0)))
GO
ALTER TABLE [dbo].[SVC35600] ADD CONSTRAINT [CK__SVC35600__ENTDTE__3BEBA403] CHECK ((datepart(hour,[ENTDTE])=(0) AND datepart(minute,[ENTDTE])=(0) AND datepart(second,[ENTDTE])=(0) AND datepart(millisecond,[ENTDTE])=(0)))
GO
ALTER TABLE [dbo].[SVC35600] ADD CONSTRAINT [CK__SVC35600__EXCHDA__3DD3EC75] CHECK ((datepart(hour,[EXCHDATE])=(0) AND datepart(minute,[EXCHDATE])=(0) AND datepart(second,[EXCHDATE])=(0) AND datepart(millisecond,[EXCHDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC35600] ADD CONSTRAINT [CK__SVC35600__EXPNDA__3EC810AE] CHECK ((datepart(hour,[EXPNDATE])=(0) AND datepart(minute,[EXPNDATE])=(0) AND datepart(second,[EXPNDATE])=(0) AND datepart(millisecond,[EXPNDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC35600] ADD CONSTRAINT [CK__SVC35600__PRMDAT__3FBC34E7] CHECK ((datepart(hour,[PRMDATE])=(0) AND datepart(minute,[PRMDATE])=(0) AND datepart(second,[PRMDATE])=(0) AND datepart(millisecond,[PRMDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC35600] ADD CONSTRAINT [CK__SVC35600__receip__45750E3D] CHECK ((datepart(hour,[receiptdate])=(0) AND datepart(minute,[receiptdate])=(0) AND datepart(second,[receiptdate])=(0) AND datepart(millisecond,[receiptdate])=(0)))
GO
ALTER TABLE [dbo].[SVC35600] ADD CONSTRAINT [CK__SVC35600__Shippe__4298A192] CHECK ((datepart(hour,[Shipped_Date])=(0) AND datepart(minute,[Shipped_Date])=(0) AND datepart(second,[Shipped_Date])=(0) AND datepart(millisecond,[Shipped_Date])=(0)))
GO
ALTER TABLE [dbo].[SVC35600] ADD CONSTRAINT [PKSVC35600] PRIMARY KEY CLUSTERED  ([RTV_Number]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5SVC35600] ON [dbo].[SVC35600] ([OFFID], [RTV_Number]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC35600] ON [dbo].[SVC35600] ([RTV_Return_Status], [RTV_Number]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SVC35600] ON [dbo].[SVC35600] ([RTV_Type], [RTV_Number]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4SVC35600] ON [dbo].[SVC35600] ([VENDORID], [RTV_Number]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35600].[RTV_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35600].[RTV_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35600].[RTV_Return_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC35600].[RTV_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35600].[VRMA_Document_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35600].[RETDOCID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35600].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35600].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35600].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35600].[VENDNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35600].[ADRSCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35600].[Ship_Address_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35600].[Ship_Address_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35600].[Ship_Address_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35600].[Ship_Address_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35600].[Ship_City]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35600].[Ship_State]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35600].[ZIPCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35600].[Ship_Country]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC35600].[ENTDTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC35600].[ENTTME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC35600].[PRMDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC35600].[Promised_Time]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC35600].[Shipped_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC35600].[Shipped_Time]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC35600].[receiptdate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC35600].[Receipt_Time]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC35600].[COMPDTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC35600].[COMPTME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35600].[LOCCODEB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35600].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35600].[Part_Price]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35600].[Part_Cost]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35600].[Labor_Price]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35600].[Labor_Cost]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35600].[Expense_Price]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35600].[Expense_Cost]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35600].[Travel_Price]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35600].[Travel_Cost]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35600].[Bill_of_Lading_Out]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35600].[Shipping_Method_Out]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35600].[Bill_of_Lading]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35600].[SHIPMTHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35600].[OFFID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35600].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35600].[VCHNUMWK]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35600].[Voucher_Number_Invoice]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35600].[Voucher_Number_Reimburse]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC35600].[CUSTOWN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35600].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35600].[USERDEF1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35600].[USERDEF2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35600].[USRDEF03]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35600].[USRDEF04]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35600].[USRDEF05]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35600].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC35600].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35600].[RATETPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35600].[EXGTBLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35600].[XCHGRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC35600].[EXCHDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC35600].[DECPLACS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC35600].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC35600].[RATECALC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC35600].[VIEWMODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC35600].[ISMCTRX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC35600].[EXPNDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35600].[DENXRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC35600].[MCTRXSTT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35600].[Originating_Part_Price]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35600].[Originating_Part_Cost]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35600].[Originating_Labor_Price]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35600].[Originating_Labor_Cost]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35600].[Originating_ExpensePrice]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35600].[Originating_Expense_Cost]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35600].[Originating_Travel_Price]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35600].[Originating_Travel_Cost]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC35600].[VOIDSTTS]'
GO
GRANT SELECT ON  [dbo].[SVC35600] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC35600] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC35600] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC35600] TO [DYNGRP]
GO
