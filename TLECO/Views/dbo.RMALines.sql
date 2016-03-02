SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[RMALines] AS select rtrim(['Returns Line Master'].[RETDOCID]) as 'Return Document ID', 'Return Record Type' = dbo.FS_FUNC_Return_Record_Type(['Returns Line Master'].[Return_Record_Type]), ['Returns Line Master'].[LNSEQNBR] as 'Line SEQ Number', rtrim(['Returns Line Master'].[RETTYPE]) as 'SVC Return Type', 'RMA Status' = dbo.FS_FUNC_RMA_Status(['Returns Line Master'].[RMA_Status]), rtrim(['Returns Line Master'].[RETSTAT]) as 'Return Status', 'Received' = dbo.DYN_FUNC_Boolean_All(['Returns Line Master'].[Received]), 'SVC Ready To Close' = dbo.DYN_FUNC_Boolean_All(['Returns Line Master'].[SVC_Ready_To_Close]), 'Return Origin' = dbo.FS_FUNC_Return_Origin(['Returns Line Master'].[RETORIG]), rtrim(['Returns Line Master'].[RETREF]) as 'Return Reference', ['Returns Line Master'].[ENTDTE] as 'Entry Date', ['Returns Line Master'].[ETADTE] as 'ETA Date', ['Returns Line Master'].[RETUDATE] as 'Return Date', ['Returns Line Master'].[COMPDTE] as 'Complete Date', rtrim(['Returns Line Master'].[OFFID]) as 'Office ID', rtrim(['Returns Line Master'].[LOCNCODE]) as 'Location Code', rtrim(['RM Customer MSTR'].[CUSTNMBR]) as 'Customer ID', rtrim(['Returns Line Master'].[ADRSCODE]) as 'Address Code', rtrim(['Returns Line Master'].[ITEMNMBR]) as 'Item Number', ['Returns Line Master'].[EXTDCOST] as 'Extended Cost', ['Returns Line Master'].[XTNDPRCE] as 'Extended Price',  rtrim(['Returns Line Master'].[ADDRESS1]) as 'Address 1', rtrim(['Returns Line Master'].[ADDRESS2]) as 'Address 2', rtrim(['Returns Line Master'].[ADDRESS3]) as 'Address 3', rtrim(['RM Customer MSTR2'].[CUSTNMBR]) as 'Bill To Customer ID', rtrim(['RM Customer MSTR2'].[CUSTNAME]) as 'Bill To Customer Name', rtrim(['Returns Line Master'].[Bill_of_Lading]) as 'Bill of Lading', rtrim(['Returns Line Master'].[CITY]) as 'City', ['Returns Line Master'].[Commit_Date] as 'Commit Date', ['Returns Line Master'].[Commit_Time] as 'Commit Time', ['Returns Line Master'].[COMPTME] as 'Complete Time', ['Returns Line Master'].[CMPNTSEQ] as 'Component Sequence', rtrim(['Returns Line Master'].[CONTACT]) as 'Contact', rtrim(['Returns Line Master'].[COUNTRY]) as 'Country', ['Returns Line Master'].[Credit_SOP_Line_Item_Seq] as 'Credit SOP Line Item Sequence', rtrim(['Returns Line Master'].[Credit_SOP_Number]) as 'Credit SOP Number', 'Credit SOP Type' = dbo.DYN_FUNC_SOP_Type(['Returns Line Master'].[Credit_SOP_Type]), ['Returns Line Master'].[CURRNIDX] as 'Currency Index', rtrim(['Returns Line Master'].[CUSTNAME]) as 'Customer Name', 'Customer Owned' = dbo.DYN_FUNC_Boolean_All(['Returns Line Master'].[CUSTOWN]), rtrim(['Returns Line Master'].[CSTPONBR]) as 'Customer PO Number', 'Decimal Places Currency' = dbo.DYN_FUNC_Decimal_Places_Currency(['Returns Line Master'].[DECPLCUR]), 'Decimal Places QTYS' = dbo.DYN_FUNC_Decimal_Places_QTYS(['Returns Line Master'].[DECPLQTY]), ['Returns Line Master'].[ETATME] as 'ETA Time', ['Returns Line Master'].[ENTTME] as 'Entry Time', ['Returns Line Master'].[EQPLINE] as 'Equipment Line Item Sequence', 'Factory Sealed' = dbo.DYN_FUNC_Boolean_All(['Returns Line Master'].[FACTSEAL]), ['Returns Line Master'].[Flat_Rate_Repair_Price] as 'Flat Rate Repair Price', rtrim(['Returns Line Master'].[ITEMDESC]) as 'Item Description', rtrim(['Returns Line Master'].[Item_Number_Invoice]) as 'Item Number Invoice', ['Returns Line Master'].[LNITMSEQ] as 'Line Item Sequence', rtrim(['Returns Line Master'].[Location_Code_Replacemen]) as 'Location Code Replacement', ['Returns Line Master'].[NTE_Price] as 'NTE Price', ['Returns Line Master'].[NOTEINDX] as 'Note Index', rtrim(['Returns Line Master'].[ORDDOCID]) as 'Order Document ID', 'Originating Decimal Places Currency' = dbo.DYN_FUNC_Decimal_Places_Currency(['Returns Line Master'].[ODECPLCU]), ['Returns Line Master'].[OREXTCST] as 'Originating Extended Cost', ['Returns Line Master'].[OXTNDPRC] as 'Originating Extended Price', ['Returns Line Master'].[Orig_Flat_RepairPrice] as 'Originating Flat Rate Repair Price', ['Returns Line Master'].[Originating_NTE_Price] as 'Originating NTE Price', ['Returns Line Master'].[Originating_Repair_Cost] as 'Originating Repair Cost', ['Returns Line Master'].[Originating_Repair_Price] as 'Originating Repair Price', ['Returns Line Master'].[Originating_Replace_Cost] as 'Originating Replace Cost', ['Returns Line Master'].[Originating_Replace_Pric] as 'Originating Replace Price', ['Returns Line Master'].[Originating_Return_Cost] as 'Originating Return Cost', ['Returns Line Master'].[Originating_Return_Price] as 'Originating Return Price', ['Returns Line Master'].[ORUNTCST] as 'Originating Unit Cost', ['Returns Line Master'].[ORUNTPRC] as 'Originating Unit Price', ['Returns Line Master'].[PRMDATE] as 'Promised Date', ['Returns Line Master'].[QUANTITY] as 'QTY', rtrim(['Returns Line Master'].[REFRENCE]) as 'Reference', ['Returns Line Master'].[Repair_Cost] as 'Repair Cost', ['Returns Line Master'].[Repair_Price] as 'Repair Price', ['Returns Line Master'].[Replace_Cost] as 'Replace Cost', rtrim(['Returns Line Master'].[Replace_Item_Number]) as 'Replace Item Number', ['Returns Line Master'].[Replace_Price] as 'Replace Price', rtrim(['Returns Line Master'].[Replace_Price_Level]) as 'Replace Price Level', ['Returns Line Master'].[Replace_QTY] as 'Replace QTY', ['Returns Line Master'].[Replace_SOP_Line_Item_Se] as 'Replace SOP Line Item Sequence',  rtrim(['Returns Line Master'].[Replace_SOP_Number]) as 'Replace SOP Number', 'Replace SOP Type' = dbo.DYN_FUNC_SOP_Type(['Returns Line Master'].[Replace_SOP_Type]), rtrim(['Returns Line Master'].[Replace_U_Of_M]) as 'Replace U Of M', rtrim(['Returns Line Master'].[RETADDR1]) as 'Return Address 1', rtrim(['Returns Line Master'].[RETADDR2]) as 'Return Address 2', rtrim(['Returns Line Master'].[RETADDR3]) as 'Return Address 3', rtrim(['Returns Line Master'].[RTRNCITY]) as 'Return Address City', rtrim(['Returns Line Master'].[RTRNNAME]) as 'Return Address Name', rtrim(['Returns Line Master'].[RTRNZIP]) as 'Return Address Zip Code', ['Returns Line Master'].[RETCOST] as 'Return Cost', rtrim(['Returns Line Master'].[Return_Country]) as 'Return Country', rtrim(['Returns Line Master'].[Return_Item_Description]) as 'Return Item Description', rtrim(['Returns Line Master'].[Return_Item_Number]) as 'Return Item Number', rtrim(['Returns Line Master'].[Return_Location_Code]) as 'Return Location Code', ['Returns Line Master'].[Return_QTY] as 'Return QTY', ['Returns Line Master'].[Return_Time] as 'Return Time', rtrim(['Returns Line Master'].[Return_U_Of_M]) as 'Return U Of M', ['Returns Line Master'].[SOP_Line_Item_Sequence] as 'SOP Line Item Sequence', rtrim(['Returns Line Master'].[SOPNUMBE]) as 'SOP Number', rtrim(['Returns Line Master'].[SOP_Number_Invoice]) as 'SOP Number Invoice', 'SOP Type' = dbo.DYN_FUNC_SOP_Type(['Returns Line Master'].[SOPTYPE]), rtrim(['Returns Line Master'].[SVC_Bill_To_Address_Code]) as 'SVC Bill To Address Code', ['Returns Line Master'].[SVC_Extended_Return_Cost] as 'SVC Extended Return Cost', ['Returns Line Master'].[SVC_Extended_Return_Pric] as 'SVC Extended Return Price', rtrim(['Returns Line Master'].[SVC_FO_ID]) as 'SVC FO ID', ['Returns Line Master'].[SVC_Next_Line_SEQ_Number] as 'SVC Next Line SEQ Number', ['Returns Line Master'].[SVC_Orig_Ext_Return_Cost] as 'SVC Originating Extended Return Cost', ['Returns Line Master'].[SVC_Orig_Ext_Return_Pric] as 'SVC Originating Extended Return Price', ['Returns Line Master'].[SVC_Prev_Line_SEQ_Number] as 'SVC Prev Line SEQ Number', 'SVC RMA From Service' = dbo.DYN_FUNC_Boolean_All(['Returns Line Master'].[SVC_RMA_From_Service]), rtrim(['Returns Line Master'].[SVC_RMA_Reason_Code]) as 'SVC_RMA_Reason_Code', rtrim(['Returns Line Master'].[SVC_RMA_Reason_Code_Desc]) as 'SVC_RMA_Reason_Code_Desc', ['Returns Line Master'].[SVC_Return_Price] as 'SVC Return Price', rtrim(['Returns Line Master'].[SVC_Return_Price_Level]) as 'SVC Return Price Level', rtrim(['Returns Line Master'].[SVC_Return_State]) as 'SVC Return State', ['Returns Line Master'].[SVC_SCM_Complete] as 'SVC SCM Complete', rtrim(['Returns Line Master'].[CALLNBR]) as 'Service Call Number', 'Service Record Type' = dbo.FS_FUNC_Service_Record_Type(['Returns Line Master'].[SRVRECTYPE]), rtrim(['Returns Line Master'].[SHIPMTHD]) as 'Shipping Method', rtrim(['Returns Line Master'].[STATE]) as 'State', ['Returns Line Master'].[TRANSLINESEQ] as 'Transfer Line Item Sequence', ['Returns Line Master'].[STATUS] as 'Transfer Status', 'Traveler Printed' = dbo.DYN_FUNC_Boolean_All(['Returns Line Master'].[Traveler_Printed]), rtrim(['Returns Line Master'].[UOFM]) as 'U Of M', ['Returns Line Master'].[UNITCOST] as 'Unit Cost', ['Returns Line Master'].[UNITPRCE] as 'Unit Price', rtrim(['Returns Line Master'].[USERDEF1]) as 'User Defined 1', rtrim(['Returns Line Master'].[USERDEF2]) as 'User Defined 2', rtrim(['Returns Line Master'].[USRDEF03]) as 'User Defined 3', rtrim(['Returns Line Master'].[USRDEF04]) as 'User Defined 4', rtrim(['Returns Line Master'].[USRDEF05]) as 'User Defined 5', rtrim(['Returns Line Master'].[USERID]) as 'User ID', rtrim(['Returns Line Master'].[ZIPCODE]) as 'Zip Code',  'Customer ID For Drillback' = 'dgpp://DGPB/?Db=&Srv=TLEFLSQL3&Cmp=TLECO&Prod=0' +dbo.dgppCustomerID(1,['RM Customer MSTR'].[CUSTNMBR] ), 'Item Number For Drillback' = 'dgpp://DGPB/?Db=&Srv=TLEFLSQL3&Cmp=TLECO&Prod=0' +dbo.dgppItemID(1,['Returns Line Master'].[ITEMNMBR],'' ), 'Return Document ID For Drillback' = 'dgpp://DGPB/?Db=&Srv=TLEFLSQL3&Cmp=TLECO&Prod=949' +dbo.dgppRMANumber(1,['Returns Line Master'].[RETDOCID],['Returns Line Master'].[Return_Record_Type] ), 'Service Call Number For Drillback' = 'dgpp://DGPB/?Db=&Srv=TLEFLSQL3&Cmp=TLECO&Prod=949' +dbo.dgppServiceRecordType(1,['Returns Line Master'].[CALLNBR],['Returns Line Master'].[SRVRECTYPE] ),  'SOP Number For Drillback' = 'dgpp://DGPB/?Db=&Srv=TLEFLSQL3&Cmp=TLECO&Prod=0' +dbo.dgppSalesOrder(1,1,11,'',0,0,['Returns Line Master'].[CUSTNMBR],'',0,'',['Returns Line Master'].[SOPTYPE],['Returns Line Master'].[SOPNUMBE] )        from [SVC05200] as ['Returns Line Master'] with (NOLOCK) left outer join [RM00101] as ['RM Customer MSTR'] with (NOLOCK) on ['Returns Line Master'].[CUSTNMBR] = ['RM Customer MSTR'].[CUSTNMBR] left outer join [RM00101] as ['RM Customer MSTR2'] with (NOLOCK) on ['Returns Line Master'].[Bill_To_Customer] = ['RM Customer MSTR2'].[CUSTNMBR] 
GO
GRANT SELECT ON  [dbo].[RMALines] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[RMALines] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[RMALines] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[RMALines] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[RMALines] TO [rpt_customer service rep]
GO
GRANT SELECT ON  [dbo].[RMALines] TO [rpt_dispatcher]
GO
GRANT SELECT ON  [dbo].[RMALines] TO [rpt_executive]
GO
GRANT SELECT ON  [dbo].[RMALines] TO [rpt_project manager]
GO