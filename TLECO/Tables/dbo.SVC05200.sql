CREATE TABLE [dbo].[SVC05200]
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
[svcReverseFlag] [tinyint] NOT NULL,
[svcRMAallocated] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC05200] ADD CONSTRAINT [CK__SVC05200__Commit__66EB10A1] CHECK ((datepart(day,[Commit_Time])=(1) AND datepart(month,[Commit_Time])=(1) AND datepart(year,[Commit_Time])=(1900)))
GO
ALTER TABLE [dbo].[SVC05200] ADD CONSTRAINT [CK__SVC05200__COMPTM__6502C82F] CHECK ((datepart(day,[COMPTME])=(1) AND datepart(month,[COMPTME])=(1) AND datepart(year,[COMPTME])=(1900)))
GO
ALTER TABLE [dbo].[SVC05200] ADD CONSTRAINT [CK__SVC05200__ENTTME__68D35913] CHECK ((datepart(day,[ENTTME])=(1) AND datepart(month,[ENTTME])=(1) AND datepart(year,[ENTTME])=(1900)))
GO
ALTER TABLE [dbo].[SVC05200] ADD CONSTRAINT [CK__SVC05200__ETATME__6ABBA185] CHECK ((datepart(day,[ETATME])=(1) AND datepart(month,[ETATME])=(1) AND datepart(year,[ETATME])=(1900)))
GO
ALTER TABLE [dbo].[SVC05200] ADD CONSTRAINT [CK__SVC05200__Return__6D980E30] CHECK ((datepart(day,[Return_Time])=(1) AND datepart(month,[Return_Time])=(1) AND datepart(year,[Return_Time])=(1900)))
GO
ALTER TABLE [dbo].[SVC05200] ADD CONSTRAINT [CK__SVC05200__Commit__65F6EC68] CHECK ((datepart(hour,[Commit_Date])=(0) AND datepart(minute,[Commit_Date])=(0) AND datepart(second,[Commit_Date])=(0) AND datepart(millisecond,[Commit_Date])=(0)))
GO
ALTER TABLE [dbo].[SVC05200] ADD CONSTRAINT [CK__SVC05200__COMPDT__640EA3F6] CHECK ((datepart(hour,[COMPDTE])=(0) AND datepart(minute,[COMPDTE])=(0) AND datepart(second,[COMPDTE])=(0) AND datepart(millisecond,[COMPDTE])=(0)))
GO
ALTER TABLE [dbo].[SVC05200] ADD CONSTRAINT [CK__SVC05200__ENTDTE__67DF34DA] CHECK ((datepart(hour,[ENTDTE])=(0) AND datepart(minute,[ENTDTE])=(0) AND datepart(second,[ENTDTE])=(0) AND datepart(millisecond,[ENTDTE])=(0)))
GO
ALTER TABLE [dbo].[SVC05200] ADD CONSTRAINT [CK__SVC05200__ETADTE__69C77D4C] CHECK ((datepart(hour,[ETADTE])=(0) AND datepart(minute,[ETADTE])=(0) AND datepart(second,[ETADTE])=(0) AND datepart(millisecond,[ETADTE])=(0)))
GO
ALTER TABLE [dbo].[SVC05200] ADD CONSTRAINT [CK__SVC05200__PRMDAT__6BAFC5BE] CHECK ((datepart(hour,[PRMDATE])=(0) AND datepart(minute,[PRMDATE])=(0) AND datepart(second,[PRMDATE])=(0) AND datepart(millisecond,[PRMDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC05200] ADD CONSTRAINT [CK__SVC05200__RETUDA__6CA3E9F7] CHECK ((datepart(hour,[RETUDATE])=(0) AND datepart(minute,[RETUDATE])=(0) AND datepart(second,[RETUDATE])=(0) AND datepart(millisecond,[RETUDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC05200] ADD CONSTRAINT [PKSVC05200] PRIMARY KEY NONCLUSTERED  ([Return_Record_Type], [RETDOCID], [svcRMAComponentSeq], [LNSEQNBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK9SVC05200] ON [dbo].[SVC05200] ([Return_Record_Type], [CUSTNMBR], [ADRSCODE], [RETDOCID], [svcRMAComponentSeq], [LNSEQNBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK14SVC05200] ON [dbo].[SVC05200] ([Return_Record_Type], [RETDOCID], [LNSEQNBR], [svcRMAComponentSeq]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK13SVC05200] ON [dbo].[SVC05200] ([Return_Record_Type], [RETDOCID], [svcRMAComponentSeq], [LNSEQNBR], [CUSTNMBR], [ADRSCODE], [Return_Location_Code]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4SVC05200] ON [dbo].[SVC05200] ([Return_Record_Type], [RETDOCID], [svcRMAComponentSeq], [RETSTAT], [LNSEQNBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SVC05200] ON [dbo].[SVC05200] ([Return_Record_Type], [RETDOCID], [svcRMAComponentSeq], [RETTYPE], [LNSEQNBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5SVC05200] ON [dbo].[SVC05200] ([Return_Record_Type], [RETDOCID], [svcRMAComponentSeq], [RETUDATE], [LNSEQNBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC05200] ON [dbo].[SVC05200] ([Return_Record_Type], [RETDOCID], [svcRMAComponentSeq], [Return_Item_Number], [LNSEQNBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK8SVC05200] ON [dbo].[SVC05200] ([Return_Record_Type], [RETDOCID], [svcRMAComponentSeq], [Return_Location_Code], [LNSEQNBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK7SVC05200] ON [dbo].[SVC05200] ([Return_Record_Type], [RETDOCID], [svcRMAComponentSeq], [RMA_Status], [LNSEQNBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6SVC05200] ON [dbo].[SVC05200] ([Return_Record_Type], [RETDOCID], [svcRMAComponentSeq], [SVC_Ready_To_Close], [LNSEQNBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK10SVC05200] ON [dbo].[SVC05200] ([Return_Record_Type], [Return_Item_Number], [RETDOCID], [svcRMAComponentSeq], [LNSEQNBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK12SVC05200] ON [dbo].[SVC05200] ([SOPNUMBE], [SOP_Line_Item_Sequence], [Return_Record_Type], [RETDOCID], [svcRMAComponentSeq], [LNSEQNBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK11SVC05200] ON [dbo].[SVC05200] ([SRVRECTYPE], [CALLNBR], [EQPLINE], [LNITMSEQ], [Return_Record_Type], [RETDOCID], [svcRMAComponentSeq], [LNSEQNBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05200].[RETDOCID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC05200].[Return_Record_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05200].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05200].[SVC_Next_Line_SEQ_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05200].[SVC_Prev_Line_SEQ_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05200].[RETTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC05200].[RMA_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05200].[RETSTAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC05200].[Received]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC05200].[Traveler_Printed]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC05200].[SVC_Ready_To_Close]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05200].[SVC_RMA_Reason_Code]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05200].[SVC_RMA_Reason_Code_Desc]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05200].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC05200].[RETORIG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05200].[RETREF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC05200].[SRVRECTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05200].[CALLNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC05200].[EQPLINE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC05200].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC05200].[SVC_RMA_From_Service]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC05200].[SOPTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05200].[SOPNUMBE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC05200].[CMPNTSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC05200].[SOP_Line_Item_Sequence]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC05200].[ENTDTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC05200].[ENTTME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC05200].[ETADTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC05200].[ETATME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC05200].[Commit_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC05200].[Commit_Time]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC05200].[RETUDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC05200].[Return_Time]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC05200].[COMPDTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC05200].[COMPTME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC05200].[PRMDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05200].[REFRENCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05200].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05200].[OFFID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05200].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05200].[RTRNNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05200].[RETADDR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05200].[RETADDR2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05200].[RETADDR3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05200].[RTRNCITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05200].[SVC_Return_State]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05200].[RTRNZIP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05200].[Return_Country]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05200].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05200].[CUSTNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05200].[ADRSCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05200].[CONTACT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05200].[ADDRESS1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05200].[ADDRESS2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05200].[ADDRESS3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05200].[CITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05200].[STATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05200].[ZIPCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05200].[COUNTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05200].[Bill_To_Customer]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05200].[SVC_Bill_To_Address_Code]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05200].[CSTPONBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05200].[QUANTITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC05200].[DECPLQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05200].[UOFM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05200].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05200].[ITEMDESC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05200].[UNITCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05200].[ORUNTCST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05200].[EXTDCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05200].[OREXTCST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05200].[UNITPRCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05200].[ORUNTPRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05200].[XTNDPRCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05200].[OXTNDPRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC05200].[CUSTOWN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC05200].[FACTSEAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05200].[ORDDOCID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC05200].[TRANSLINESEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC05200].[STATUS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05200].[Flat_Rate_Repair_Price]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05200].[Orig_Flat_RepairPrice]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05200].[Repair_Price]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05200].[Originating_Repair_Price]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05200].[NTE_Price]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05200].[Originating_NTE_Price]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05200].[Repair_Cost]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05200].[Originating_Repair_Cost]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05200].[Bill_of_Lading]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05200].[SHIPMTHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC05200].[Credit_SOP_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05200].[Credit_SOP_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC05200].[Credit_SOP_Line_Item_Seq]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC05200].[Replace_SOP_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05200].[Replace_SOP_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC05200].[Replace_SOP_Line_Item_Se]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05200].[Location_Code_Replacemen]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05200].[Replace_Item_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05200].[Replace_U_Of_M]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05200].[Replace_Price_Level]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05200].[Replace_QTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05200].[Replace_Cost]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05200].[Originating_Replace_Cost]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05200].[Replace_Price]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05200].[Originating_Replace_Pric]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05200].[SOP_Number_Invoice]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05200].[Item_Number_Invoice]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05200].[USERDEF1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05200].[USERDEF2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05200].[USRDEF03]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05200].[USRDEF04]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05200].[USRDEF05]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC05200].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC05200].[DECPLCUR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC05200].[ODECPLCU]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05200].[Return_Item_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05200].[Return_Item_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05200].[Return_Location_Code]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05200].[Return_QTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05200].[Return_U_Of_M]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05200].[RETCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05200].[Originating_Return_Cost]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05200].[SVC_Extended_Return_Cost]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05200].[SVC_Orig_Ext_Return_Cost]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05200].[SVC_Return_Price_Level]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05200].[SVC_Return_Price]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05200].[Originating_Return_Price]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05200].[SVC_Extended_Return_Pric]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05200].[SVC_Orig_Ext_Return_Pric]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05200].[SVC_FO_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC05200].[SVC_SCM_Complete]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC05200].[svcRMAKitComponentFrom]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC05200].[svcRMAComponentSeq]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05200].[CMPITQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05200].[QTYONHND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05200].[QTYRTRND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05200].[QTYINUSE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05200].[QTYINSVC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05200].[QTYDMGED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC05200].[svcReverseFlag]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC05200].[svcRMAallocated]'
GO
GRANT SELECT ON  [dbo].[SVC05200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC05200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC05200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC05200] TO [DYNGRP]
GO
