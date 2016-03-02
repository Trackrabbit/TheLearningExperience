CREATE TABLE [dbo].[SVC35200]
(
[RETDOCID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Return_Record_Type] [smallint] NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
[SVC_Next_Line_SEQ_Number] [numeric] (19, 5) NOT NULL,
[SVC_Prev_Line_SEQ_Number] [numeric] (19, 5) NOT NULL,
[RETTYPE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RMA_Status] [smallint] NOT NULL,
[RETSTAT] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Received] [tinyint] NOT NULL,
[Traveler_Printed] [tinyint] NOT NULL,
[SVC_Ready_To_Close] [tinyint] NOT NULL,
[SVC_RMA_Reason_Code] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_RMA_Reason_Code_Desc] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[RETORIG] [smallint] NOT NULL,
[RETREF] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SRVRECTYPE] [smallint] NOT NULL,
[CALLNBR] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EQPLINE] [int] NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[SVC_RMA_From_Service] [tinyint] NOT NULL,
[SOPTYPE] [smallint] NOT NULL,
[SOPNUMBE] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CMPNTSEQ] [int] NOT NULL,
[SOP_Line_Item_Sequence] [int] NOT NULL,
[ENTDTE] [datetime] NOT NULL,
[ENTTME] [datetime] NOT NULL,
[ETADTE] [datetime] NOT NULL,
[ETATME] [datetime] NOT NULL,
[Commit_Date] [datetime] NOT NULL,
[Commit_Time] [datetime] NOT NULL,
[RETUDATE] [datetime] NOT NULL,
[Return_Time] [datetime] NOT NULL,
[COMPDTE] [datetime] NOT NULL,
[COMPTME] [datetime] NOT NULL,
[PRMDATE] [datetime] NOT NULL,
[REFRENCE] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[OFFID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RTRNNAME] [char] (45) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RETADDR1] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RETADDR2] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RETADDR3] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RTRNCITY] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Return_State] [char] (29) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RTRNZIP] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Return_Country] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUSTNAME] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADRSCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CONTACT] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS1] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS2] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS3] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CITY] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STATE] [char] (29) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ZIPCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COUNTRY] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Bill_To_Customer] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Bill_To_Address_Code] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CSTPONBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[QUANTITY] [numeric] (19, 5) NOT NULL,
[DECPLQTY] [smallint] NOT NULL,
[UOFM] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITEMDESC] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UNITCOST] [numeric] (19, 5) NOT NULL,
[ORUNTCST] [numeric] (19, 5) NOT NULL,
[EXTDCOST] [numeric] (19, 5) NOT NULL,
[OREXTCST] [numeric] (19, 5) NOT NULL,
[UNITPRCE] [numeric] (19, 5) NOT NULL,
[ORUNTPRC] [numeric] (19, 5) NOT NULL,
[XTNDPRCE] [numeric] (19, 5) NOT NULL,
[OXTNDPRC] [numeric] (19, 5) NOT NULL,
[CUSTOWN] [tinyint] NOT NULL,
[FACTSEAL] [tinyint] NOT NULL,
[ORDDOCID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRANSLINESEQ] [int] NOT NULL,
[STATUS] [smallint] NOT NULL,
[Flat_Rate_Repair_Price] [numeric] (19, 5) NOT NULL,
[Orig_Flat_RepairPrice] [numeric] (19, 5) NOT NULL,
[Repair_Price] [numeric] (19, 5) NOT NULL,
[Originating_Repair_Price] [numeric] (19, 5) NOT NULL,
[NTE_Price] [numeric] (19, 5) NOT NULL,
[Originating_NTE_Price] [numeric] (19, 5) NOT NULL,
[Repair_Cost] [numeric] (19, 5) NOT NULL,
[Originating_Repair_Cost] [numeric] (19, 5) NOT NULL,
[Bill_of_Lading] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SHIPMTHD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Credit_SOP_Type] [smallint] NOT NULL,
[Credit_SOP_Number] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Credit_SOP_Line_Item_Seq] [int] NOT NULL,
[Replace_SOP_Type] [smallint] NOT NULL,
[Replace_SOP_Number] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Replace_SOP_Line_Item_Se] [int] NOT NULL,
[Location_Code_Replacemen] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Replace_Item_Number] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Replace_U_Of_M] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Replace_Price_Level] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Replace_QTY] [numeric] (19, 5) NOT NULL,
[Replace_Cost] [numeric] (19, 5) NOT NULL,
[Originating_Replace_Cost] [numeric] (19, 5) NOT NULL,
[Replace_Price] [numeric] (19, 5) NOT NULL,
[Originating_Replace_Pric] [numeric] (19, 5) NOT NULL,
[SOP_Number_Invoice] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Item_Number_Invoice] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERDEF1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERDEF2] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDEF03] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDEF04] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDEF05] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[DECPLCUR] [smallint] NOT NULL,
[ODECPLCU] [smallint] NOT NULL,
[Return_Item_Number] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Return_Item_Description] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Return_Location_Code] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Return_QTY] [numeric] (19, 5) NOT NULL,
[Return_U_Of_M] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RETCOST] [numeric] (19, 5) NOT NULL,
[Originating_Return_Cost] [numeric] (19, 5) NOT NULL,
[SVC_Extended_Return_Cost] [numeric] (19, 5) NOT NULL,
[SVC_Orig_Ext_Return_Cost] [numeric] (19, 5) NOT NULL,
[SVC_Return_Price_Level] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Return_Price] [numeric] (19, 5) NOT NULL,
[Originating_Return_Price] [numeric] (19, 5) NOT NULL,
[SVC_Extended_Return_Pric] [numeric] (19, 5) NOT NULL,
[SVC_Orig_Ext_Return_Pric] [numeric] (19, 5) NOT NULL,
[SVC_FO_ID] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_SCM_Complete] [smallint] NOT NULL,
[svcRMAKitComponentFrom] [smallint] NOT NULL,
[svcRMAComponentSeq] [int] NOT NULL,
[CMPITQTY] [numeric] (19, 5) NOT NULL,
[QTYONHND] [numeric] (19, 5) NOT NULL,
[QTYRTRND] [numeric] (19, 5) NOT NULL,
[QTYINUSE] [numeric] (19, 5) NOT NULL,
[QTYINSVC] [numeric] (19, 5) NOT NULL,
[QTYDMGED] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC35200] ADD CONSTRAINT [CK__SVC35200__Commit__25083EAB] CHECK ((datepart(day,[Commit_Time])=(1) AND datepart(month,[Commit_Time])=(1) AND datepart(year,[Commit_Time])=(1900)))
GO
ALTER TABLE [dbo].[SVC35200] ADD CONSTRAINT [CK__SVC35200__COMPTM__231FF639] CHECK ((datepart(day,[COMPTME])=(1) AND datepart(month,[COMPTME])=(1) AND datepart(year,[COMPTME])=(1900)))
GO
ALTER TABLE [dbo].[SVC35200] ADD CONSTRAINT [CK__SVC35200__ENTTME__26F0871D] CHECK ((datepart(day,[ENTTME])=(1) AND datepart(month,[ENTTME])=(1) AND datepart(year,[ENTTME])=(1900)))
GO
ALTER TABLE [dbo].[SVC35200] ADD CONSTRAINT [CK__SVC35200__ETATME__28D8CF8F] CHECK ((datepart(day,[ETATME])=(1) AND datepart(month,[ETATME])=(1) AND datepart(year,[ETATME])=(1900)))
GO
ALTER TABLE [dbo].[SVC35200] ADD CONSTRAINT [CK__SVC35200__Return__2BB53C3A] CHECK ((datepart(day,[Return_Time])=(1) AND datepart(month,[Return_Time])=(1) AND datepart(year,[Return_Time])=(1900)))
GO
ALTER TABLE [dbo].[SVC35200] ADD CONSTRAINT [CK__SVC35200__Commit__24141A72] CHECK ((datepart(hour,[Commit_Date])=(0) AND datepart(minute,[Commit_Date])=(0) AND datepart(second,[Commit_Date])=(0) AND datepart(millisecond,[Commit_Date])=(0)))
GO
ALTER TABLE [dbo].[SVC35200] ADD CONSTRAINT [CK__SVC35200__COMPDT__222BD200] CHECK ((datepart(hour,[COMPDTE])=(0) AND datepart(minute,[COMPDTE])=(0) AND datepart(second,[COMPDTE])=(0) AND datepart(millisecond,[COMPDTE])=(0)))
GO
ALTER TABLE [dbo].[SVC35200] ADD CONSTRAINT [CK__SVC35200__ENTDTE__25FC62E4] CHECK ((datepart(hour,[ENTDTE])=(0) AND datepart(minute,[ENTDTE])=(0) AND datepart(second,[ENTDTE])=(0) AND datepart(millisecond,[ENTDTE])=(0)))
GO
ALTER TABLE [dbo].[SVC35200] ADD CONSTRAINT [CK__SVC35200__ETADTE__27E4AB56] CHECK ((datepart(hour,[ETADTE])=(0) AND datepart(minute,[ETADTE])=(0) AND datepart(second,[ETADTE])=(0) AND datepart(millisecond,[ETADTE])=(0)))
GO
ALTER TABLE [dbo].[SVC35200] ADD CONSTRAINT [CK__SVC35200__PRMDAT__29CCF3C8] CHECK ((datepart(hour,[PRMDATE])=(0) AND datepart(minute,[PRMDATE])=(0) AND datepart(second,[PRMDATE])=(0) AND datepart(millisecond,[PRMDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC35200] ADD CONSTRAINT [CK__SVC35200__RETUDA__2AC11801] CHECK ((datepart(hour,[RETUDATE])=(0) AND datepart(minute,[RETUDATE])=(0) AND datepart(second,[RETUDATE])=(0) AND datepart(millisecond,[RETUDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC35200] ADD CONSTRAINT [PKSVC35200] PRIMARY KEY NONCLUSTERED  ([Return_Record_Type], [RETDOCID], [svcRMAComponentSeq], [LNSEQNBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK9SVC35200] ON [dbo].[SVC35200] ([Return_Record_Type], [CUSTNMBR], [ADRSCODE], [RETDOCID], [svcRMAComponentSeq], [LNSEQNBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK14SVC35200] ON [dbo].[SVC35200] ([Return_Record_Type], [RETDOCID], [LNSEQNBR], [svcRMAComponentSeq]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4SVC35200] ON [dbo].[SVC35200] ([Return_Record_Type], [RETDOCID], [RETSTAT], [svcRMAComponentSeq], [LNSEQNBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SVC35200] ON [dbo].[SVC35200] ([Return_Record_Type], [RETDOCID], [RETTYPE], [svcRMAComponentSeq], [LNSEQNBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5SVC35200] ON [dbo].[SVC35200] ([Return_Record_Type], [RETDOCID], [RETUDATE], [svcRMAComponentSeq], [LNSEQNBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC35200] ON [dbo].[SVC35200] ([Return_Record_Type], [RETDOCID], [Return_Item_Number], [svcRMAComponentSeq], [LNSEQNBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK8SVC35200] ON [dbo].[SVC35200] ([Return_Record_Type], [RETDOCID], [Return_Location_Code], [svcRMAComponentSeq], [LNSEQNBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK7SVC35200] ON [dbo].[SVC35200] ([Return_Record_Type], [RETDOCID], [RMA_Status], [svcRMAComponentSeq], [LNSEQNBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6SVC35200] ON [dbo].[SVC35200] ([Return_Record_Type], [RETDOCID], [SVC_Ready_To_Close], [svcRMAComponentSeq], [LNSEQNBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK13SVC35200] ON [dbo].[SVC35200] ([Return_Record_Type], [RETDOCID], [svcRMAComponentSeq], [LNSEQNBR], [CUSTNMBR], [ADRSCODE], [Return_Location_Code]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK10SVC35200] ON [dbo].[SVC35200] ([Return_Record_Type], [Return_Item_Number], [RETDOCID], [svcRMAComponentSeq], [LNSEQNBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK12SVC35200] ON [dbo].[SVC35200] ([SOPNUMBE], [SOP_Line_Item_Sequence], [Return_Record_Type], [RETDOCID], [svcRMAComponentSeq], [LNSEQNBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK11SVC35200] ON [dbo].[SVC35200] ([SRVRECTYPE], [CALLNBR], [EQPLINE], [LNITMSEQ], [Return_Record_Type], [RETDOCID], [svcRMAComponentSeq], [LNSEQNBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35200].[RETDOCID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC35200].[Return_Record_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35200].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35200].[SVC_Next_Line_SEQ_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35200].[SVC_Prev_Line_SEQ_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35200].[RETTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC35200].[RMA_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35200].[RETSTAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC35200].[Received]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC35200].[Traveler_Printed]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC35200].[SVC_Ready_To_Close]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35200].[SVC_RMA_Reason_Code]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35200].[SVC_RMA_Reason_Code_Desc]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35200].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC35200].[RETORIG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35200].[RETREF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC35200].[SRVRECTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35200].[CALLNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC35200].[EQPLINE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC35200].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC35200].[SVC_RMA_From_Service]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC35200].[SOPTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35200].[SOPNUMBE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC35200].[CMPNTSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC35200].[SOP_Line_Item_Sequence]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC35200].[ENTDTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC35200].[ENTTME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC35200].[ETADTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC35200].[ETATME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC35200].[Commit_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC35200].[Commit_Time]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC35200].[RETUDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC35200].[Return_Time]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC35200].[COMPDTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC35200].[COMPTME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC35200].[PRMDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35200].[REFRENCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35200].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35200].[OFFID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35200].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35200].[RTRNNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35200].[RETADDR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35200].[RETADDR2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35200].[RETADDR3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35200].[RTRNCITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35200].[SVC_Return_State]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35200].[RTRNZIP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35200].[Return_Country]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35200].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35200].[CUSTNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35200].[ADRSCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35200].[CONTACT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35200].[ADDRESS1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35200].[ADDRESS2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35200].[ADDRESS3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35200].[CITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35200].[STATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35200].[ZIPCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35200].[COUNTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35200].[Bill_To_Customer]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35200].[SVC_Bill_To_Address_Code]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35200].[CSTPONBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35200].[QUANTITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC35200].[DECPLQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35200].[UOFM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35200].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35200].[ITEMDESC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35200].[UNITCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35200].[ORUNTCST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35200].[EXTDCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35200].[OREXTCST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35200].[UNITPRCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35200].[ORUNTPRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35200].[XTNDPRCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35200].[OXTNDPRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC35200].[CUSTOWN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC35200].[FACTSEAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35200].[ORDDOCID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC35200].[TRANSLINESEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC35200].[STATUS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35200].[Flat_Rate_Repair_Price]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35200].[Orig_Flat_RepairPrice]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35200].[Repair_Price]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35200].[Originating_Repair_Price]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35200].[NTE_Price]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35200].[Originating_NTE_Price]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35200].[Repair_Cost]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35200].[Originating_Repair_Cost]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35200].[Bill_of_Lading]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35200].[SHIPMTHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC35200].[Credit_SOP_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35200].[Credit_SOP_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC35200].[Credit_SOP_Line_Item_Seq]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC35200].[Replace_SOP_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35200].[Replace_SOP_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC35200].[Replace_SOP_Line_Item_Se]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35200].[Location_Code_Replacemen]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35200].[Replace_Item_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35200].[Replace_U_Of_M]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35200].[Replace_Price_Level]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35200].[Replace_QTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35200].[Replace_Cost]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35200].[Originating_Replace_Cost]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35200].[Replace_Price]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35200].[Originating_Replace_Pric]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35200].[SOP_Number_Invoice]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35200].[Item_Number_Invoice]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35200].[USERDEF1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35200].[USERDEF2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35200].[USRDEF03]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35200].[USRDEF04]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35200].[USRDEF05]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC35200].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC35200].[DECPLCUR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC35200].[ODECPLCU]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35200].[Return_Item_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35200].[Return_Item_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35200].[Return_Location_Code]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35200].[Return_QTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35200].[Return_U_Of_M]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35200].[RETCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35200].[Originating_Return_Cost]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35200].[SVC_Extended_Return_Cost]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35200].[SVC_Orig_Ext_Return_Cost]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35200].[SVC_Return_Price_Level]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35200].[SVC_Return_Price]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35200].[Originating_Return_Price]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35200].[SVC_Extended_Return_Pric]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35200].[SVC_Orig_Ext_Return_Pric]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35200].[SVC_FO_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC35200].[SVC_SCM_Complete]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC35200].[svcRMAKitComponentFrom]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC35200].[svcRMAComponentSeq]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35200].[CMPITQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35200].[QTYONHND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35200].[QTYRTRND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35200].[QTYINUSE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35200].[QTYINSVC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35200].[QTYDMGED]'
GO
GRANT SELECT ON  [dbo].[SVC35200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC35200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC35200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC35200] TO [DYNGRP]
GO
