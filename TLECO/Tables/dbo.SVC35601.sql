CREATE TABLE [dbo].[SVC35601]
(
[RTV_Number] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RTV_Line] [numeric] (19, 5) NOT NULL,
[RTV_Type] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RTV_Status] [smallint] NOT NULL,
[RTV_Return_Status] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VRMA_Document_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RETDOCID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
[SVC_Process_SEQ_Number] [numeric] (19, 5) NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[REFRENCE] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Reference2] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITEMDESC] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITMTRKOP] [smallint] NOT NULL,
[DECPLQTY] [smallint] NOT NULL,
[QUANTITY] [numeric] (19, 5) NOT NULL,
[QTYSHPPD] [numeric] (19, 5) NOT NULL,
[QTY_To_Receive] [numeric] (19, 5) NOT NULL,
[QTYRECVD] [numeric] (19, 5) NOT NULL,
[QTYCANCE] [numeric] (19, 5) NOT NULL,
[UOFM] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VNDITNUM] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Return_Item_Number] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[OFFID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCCODEB] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
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
[PONMBRSTR] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[POLNSEQ] [numeric] (19, 5) NOT NULL,
[POPRCTNM] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCPTLNNM] [int] NOT NULL,
[Transfer_Reference] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRANSLINESEQ] [int] NOT NULL,
[CALLNBR] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EQPLINE] [int] NOT NULL,
[LINITMTYP] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[Bill_of_Lading_Out] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Shipping_Method_Out] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Bill_of_Lading] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SHIPMTHD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Tracking_Number] [char] (41) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[VCHNUMWK] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Voucher_Number_Invoice] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Voucher_Number_Reimburse] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUSTOWN] [tinyint] NOT NULL,
[USERDEF1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERDEF2] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDEF03] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDEF04] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDEF05] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Part_Price] [numeric] (19, 5) NOT NULL,
[Part_Cost] [numeric] (19, 5) NOT NULL,
[Labor_Price] [numeric] (19, 5) NOT NULL,
[Labor_Cost] [numeric] (19, 5) NOT NULL,
[Expense_Price] [numeric] (19, 5) NOT NULL,
[Expense_Cost] [numeric] (19, 5) NOT NULL,
[Travel_Price] [numeric] (19, 5) NOT NULL,
[Travel_Cost] [numeric] (19, 5) NOT NULL,
[Originating_Part_Price] [numeric] (19, 5) NOT NULL,
[Originating_Part_Cost] [numeric] (19, 5) NOT NULL,
[Originating_Labor_Price] [numeric] (19, 5) NOT NULL,
[Originating_Labor_Cost] [numeric] (19, 5) NOT NULL,
[Originating_ExpensePrice] [numeric] (19, 5) NOT NULL,
[Originating_Expense_Cost] [numeric] (19, 5) NOT NULL,
[Originating_Travel_Price] [numeric] (19, 5) NOT NULL,
[Originating_Travel_Cost] [numeric] (19, 5) NOT NULL,
[QTYTYPE] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC35601] ADD CONSTRAINT [CK__SVC35601__COMPTM__49459F21] CHECK ((datepart(day,[COMPTME])=(1) AND datepart(month,[COMPTME])=(1) AND datepart(year,[COMPTME])=(1900)))
GO
ALTER TABLE [dbo].[SVC35601] ADD CONSTRAINT [CK__SVC35601__ENTTME__4B2DE793] CHECK ((datepart(day,[ENTTME])=(1) AND datepart(month,[ENTTME])=(1) AND datepart(year,[ENTTME])=(1900)))
GO
ALTER TABLE [dbo].[SVC35601] ADD CONSTRAINT [CK__SVC35601__Promis__4D163005] CHECK ((datepart(day,[Promised_Time])=(1) AND datepart(month,[Promised_Time])=(1) AND datepart(year,[Promised_Time])=(1900)))
GO
ALTER TABLE [dbo].[SVC35601] ADD CONSTRAINT [CK__SVC35601__Receip__4E0A543E] CHECK ((datepart(day,[Receipt_Time])=(1) AND datepart(month,[Receipt_Time])=(1) AND datepart(year,[Receipt_Time])=(1900)))
GO
ALTER TABLE [dbo].[SVC35601] ADD CONSTRAINT [CK__SVC35601__Shippe__4FF29CB0] CHECK ((datepart(day,[Shipped_Time])=(1) AND datepart(month,[Shipped_Time])=(1) AND datepart(year,[Shipped_Time])=(1900)))
GO
ALTER TABLE [dbo].[SVC35601] ADD CONSTRAINT [CK__SVC35601__COMPDT__48517AE8] CHECK ((datepart(hour,[COMPDTE])=(0) AND datepart(minute,[COMPDTE])=(0) AND datepart(second,[COMPDTE])=(0) AND datepart(millisecond,[COMPDTE])=(0)))
GO
ALTER TABLE [dbo].[SVC35601] ADD CONSTRAINT [CK__SVC35601__ENTDTE__4A39C35A] CHECK ((datepart(hour,[ENTDTE])=(0) AND datepart(minute,[ENTDTE])=(0) AND datepart(second,[ENTDTE])=(0) AND datepart(millisecond,[ENTDTE])=(0)))
GO
ALTER TABLE [dbo].[SVC35601] ADD CONSTRAINT [CK__SVC35601__PRMDAT__4C220BCC] CHECK ((datepart(hour,[PRMDATE])=(0) AND datepart(minute,[PRMDATE])=(0) AND datepart(second,[PRMDATE])=(0) AND datepart(millisecond,[PRMDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC35601] ADD CONSTRAINT [CK__SVC35601__receip__50E6C0E9] CHECK ((datepart(hour,[receiptdate])=(0) AND datepart(minute,[receiptdate])=(0) AND datepart(second,[receiptdate])=(0) AND datepart(millisecond,[receiptdate])=(0)))
GO
ALTER TABLE [dbo].[SVC35601] ADD CONSTRAINT [CK__SVC35601__Shippe__4EFE7877] CHECK ((datepart(hour,[Shipped_Date])=(0) AND datepart(minute,[Shipped_Date])=(0) AND datepart(second,[Shipped_Date])=(0) AND datepart(millisecond,[Shipped_Date])=(0)))
GO
ALTER TABLE [dbo].[SVC35601] ADD CONSTRAINT [PKSVC35601] PRIMARY KEY CLUSTERED  ([RTV_Number], [RTV_Line]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK8SVC35601] ON [dbo].[SVC35601] ([ITEMNMBR], [RTV_Number], [RTV_Line]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC35601] ON [dbo].[SVC35601] ([RTV_Number], [ITEMNMBR], [RTV_Line]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6SVC35601] ON [dbo].[SVC35601] ([RTV_Number], [LOCCODEB], [RTV_Line]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5SVC35601] ON [dbo].[SVC35601] ([RTV_Number], [receiptdate], [RTV_Line]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4SVC35601] ON [dbo].[SVC35601] ([RTV_Number], [RTV_Status], [RTV_Line]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SVC35601] ON [dbo].[SVC35601] ([RTV_Number], [RTV_Type], [RTV_Line]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK7SVC35601] ON [dbo].[SVC35601] ([RTV_Number], [VENDORID], [ADRSCODE], [RTV_Line]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35601].[RTV_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35601].[RTV_Line]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35601].[RTV_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC35601].[RTV_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35601].[RTV_Return_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35601].[VRMA_Document_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35601].[RETDOCID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35601].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35601].[SVC_Process_SEQ_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35601].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35601].[REFRENCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35601].[Reference2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35601].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35601].[ITEMDESC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC35601].[ITMTRKOP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC35601].[DECPLQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35601].[QUANTITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35601].[QTYSHPPD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35601].[QTY_To_Receive]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35601].[QTYRECVD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35601].[QTYCANCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35601].[UOFM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35601].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35601].[VNDITNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35601].[Return_Item_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35601].[OFFID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35601].[LOCCODEB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35601].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35601].[ADRSCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35601].[Ship_Address_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35601].[Ship_Address_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35601].[Ship_Address_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35601].[Ship_Address_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35601].[Ship_City]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35601].[Ship_State]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35601].[ZIPCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35601].[Ship_Country]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC35601].[ENTDTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC35601].[ENTTME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC35601].[PRMDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC35601].[Promised_Time]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC35601].[Shipped_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC35601].[Shipped_Time]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC35601].[receiptdate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC35601].[Receipt_Time]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC35601].[COMPDTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC35601].[COMPTME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35601].[PONMBRSTR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35601].[POLNSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35601].[POPRCTNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC35601].[RCPTLNNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35601].[Transfer_Reference]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC35601].[TRANSLINESEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35601].[CALLNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC35601].[EQPLINE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35601].[LINITMTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC35601].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35601].[Bill_of_Lading_Out]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35601].[Shipping_Method_Out]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35601].[Bill_of_Lading]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35601].[SHIPMTHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35601].[Tracking_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35601].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35601].[VCHNUMWK]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35601].[Voucher_Number_Invoice]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35601].[Voucher_Number_Reimburse]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC35601].[CUSTOWN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35601].[USERDEF1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35601].[USERDEF2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35601].[USRDEF03]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35601].[USRDEF04]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35601].[USRDEF05]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35601].[Part_Price]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35601].[Part_Cost]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35601].[Labor_Price]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35601].[Labor_Cost]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35601].[Expense_Price]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35601].[Expense_Cost]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35601].[Travel_Price]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35601].[Travel_Cost]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35601].[Originating_Part_Price]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35601].[Originating_Part_Cost]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35601].[Originating_Labor_Price]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35601].[Originating_Labor_Cost]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35601].[Originating_ExpensePrice]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35601].[Originating_Expense_Cost]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35601].[Originating_Travel_Price]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35601].[Originating_Travel_Cost]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC35601].[QTYTYPE]'
GO
GRANT SELECT ON  [dbo].[SVC35601] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC35601] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC35601] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC35601] TO [DYNGRP]
GO
