SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[HistoryRMAs] AS select rtrim(['SVC_RMA_MSTR_HIST'].[RETDOCID]) as 'Return Document ID', 'Return Record Type' = dbo.FS_FUNC_Return_Record_Type(['SVC_RMA_MSTR_HIST'].[Return_Record_Type]), 'RMA Status' = dbo.FS_FUNC_RMA_Status(['SVC_RMA_MSTR_HIST'].[RMA_Status]), 'Received' = dbo.DYN_FUNC_Boolean_All(['SVC_RMA_MSTR_HIST'].[Received]), 'Return Origin' = dbo.FS_FUNC_Return_Origin(['SVC_RMA_MSTR_HIST'].[RETORIG]), rtrim(['SVC_RMA_MSTR_HIST'].[RETREF]) as 'Return Reference', rtrim(['SVC_RMA_MSTR_HIST'].[RETSTAT]) as 'Return Status', rtrim(['SVC_RMA_MSTR_HIST'].[RETTYPE]) as 'SVC Return Type', ['SVC_RMA_MSTR_HIST'].[ENTDTE] as 'Entry Date', ['SVC_RMA_MSTR_HIST'].[ETADTE] as 'ETA Date', ['SVC_RMA_MSTR_HIST'].[RETUDATE] as 'Return Date', ['SVC_RMA_MSTR_HIST'].[COMPDTE] as 'Complete Date', rtrim(['SVC_RMA_MSTR_HIST'].[OFFID]) as 'Office ID', rtrim(['SVC_RMA_MSTR_HIST'].[LOCNCODE]) as 'Location Code', rtrim(['RM Customer MSTR'].[CUSTNMBR]) as 'Customer ID', rtrim(['SVC_RMA_MSTR_HIST'].[ADRSCODE]) as 'Address Code',  rtrim(['SVC_RMA_MSTR_HIST'].[ADDRESS1]) as 'Address 1', rtrim(['SVC_RMA_MSTR_HIST'].[ADDRESS2]) as 'Address 2', rtrim(['SVC_RMA_MSTR_HIST'].[ADDRESS3]) as 'Address 3', rtrim(['RM Customer MSTR2'].[CUSTNMBR]) as 'Bill To Customer ID', rtrim(['RM Customer MSTR2'].[CUSTNAME]) as 'Bill To Customer Name', rtrim(['SVC_RMA_MSTR_HIST'].[Bill_of_Lading]) as 'Bill of Lading', rtrim(['SVC_RMA_MSTR_HIST'].[CITY]) as 'City', ['SVC_RMA_MSTR_HIST'].[Commit_Date] as 'Commit Date', ['SVC_RMA_MSTR_HIST'].[Commit_Time] as 'Commit Time', ['SVC_RMA_MSTR_HIST'].[COMPTME] as 'Complete Time', ['SVC_RMA_MSTR_HIST'].[CMPNTSEQ] as 'Component Sequence', rtrim(['SVC_RMA_MSTR_HIST'].[CONTACT]) as 'Contact', rtrim(['SVC_RMA_MSTR_HIST'].[COUNTRY]) as 'Country', rtrim(['SVC_RMA_MSTR_HIST'].[CURNCYID]) as 'Currency ID', ['SVC_RMA_MSTR_HIST'].[CURRNIDX] as 'Currency Index', rtrim(['SVC_RMA_MSTR_HIST'].[CUSTNAME]) as 'Customer Name', rtrim(['SVC_RMA_MSTR_HIST'].[CSTPONBR]) as 'Customer PO Number', 'Decimal Places' = dbo.DYN_FUNC_Decimal_Places_QTYS(['SVC_RMA_MSTR_HIST'].[DECPLACS]), ['SVC_RMA_MSTR_HIST'].[DENXRATE] as 'Denomination Exchange Rate', ['SVC_RMA_MSTR_HIST'].[ETATME] as 'ETA Time', ['SVC_RMA_MSTR_HIST'].[ENTTME] as 'Entry Time', ['SVC_RMA_MSTR_HIST'].[EQPLINE] as 'Equipment Line Item Sequence', ['SVC_RMA_MSTR_HIST'].[EXCHDATE] as 'Exchange Date', ['SVC_RMA_MSTR_HIST'].[XCHGRATE] as 'Exchange Rate', rtrim(['SVC_RMA_MSTR_HIST'].[EXGTBLID]) as 'Exchange Table ID', ['SVC_RMA_MSTR_HIST'].[EXPNDATE] as 'Expiration Date', ['SVC_RMA_MSTR_HIST'].[ISMCTRX] as 'IS MC Trx', ['SVC_RMA_MSTR_HIST'].[LNITMSEQ] as 'Line Item Sequence', ['SVC_RMA_MSTR_HIST'].[MCTRXSTT] as 'MC Transaction State', ['SVC_RMA_MSTR_HIST'].[NOTEINDX] as 'Note Index', ['SVC_RMA_MSTR_HIST'].[RATECALC] as 'Rate Calc Method', rtrim(['SVC_RMA_MSTR_HIST'].[RATETPID]) as 'Rate Type ID', rtrim(['SVC_RMA_MSTR_HIST'].[RETADDR1]) as 'Return Address 1', rtrim(['SVC_RMA_MSTR_HIST'].[RETADDR2]) as 'Return Address 2', rtrim(['SVC_RMA_MSTR_HIST'].[RETADDR3]) as 'Return Address 3', rtrim(['SVC_RMA_MSTR_HIST'].[RTRNCITY]) as 'Return Address City', rtrim(['SVC_RMA_MSTR_HIST'].[RTRNNAME]) as 'Return Address Name', rtrim(['SVC_RMA_MSTR_HIST'].[RTRNZIP]) as 'Return Address Zip Code', rtrim(['SVC_RMA_MSTR_HIST'].[Return_Country]) as 'Return Country', ['SVC_RMA_MSTR_HIST'].[Return_Time] as 'Return Time', ['SVC_RMA_MSTR_HIST'].[SOP_Line_Item_Sequence] as 'SOP Line Item Sequence', rtrim(['SVC_RMA_MSTR_HIST'].[SOPNUMBE]) as 'SOP Number', 'SOP Type' = dbo.DYN_FUNC_SOP_Type(['SVC_RMA_MSTR_HIST'].[SOPTYPE]), rtrim(['SVC_RMA_MSTR_HIST'].[SVC_Bill_To_Address_Code]) as 'SVC Bill To Address Code', 'SVC FO ID' = dbo.DYN_FUNC_Boolean_All(['SVC_RMA_MSTR_HIST'].[SVC_FO_ID]), rtrim(['SVC_RMA_MSTR_HIST'].[SVC_RMA_Reason_Code]) as 'SVC_RMA_Reason_Code', rtrim(['SVC_RMA_MSTR_HIST'].[SVC_RMA_Reason_Code_Desc]) as 'SVC_RMA_Reason_Code_Desc', rtrim(['SVC_RMA_MSTR_HIST'].[SVC_Return_State]) as 'SVC Return State', rtrim(['SVC_RMA_MSTR_HIST'].[CALLNBR]) as 'Service Call Number', 'Service Record Type' = dbo.FS_FUNC_Service_Record_Type(['SVC_RMA_MSTR_HIST'].[SRVRECTYPE]), rtrim(['SVC_RMA_MSTR_HIST'].[SHIPMTHD]) as 'Shipping Method', rtrim(['SVC_RMA_MSTR_HIST'].[STATE]) as 'State', ['SVC_RMA_MSTR_HIST'].[TIME1] as 'Time', rtrim(['SVC_RMA_MSTR_HIST'].[USERDEF1]) as 'User Defined 1', rtrim(['SVC_RMA_MSTR_HIST'].[USERDEF2]) as 'User Defined 2', rtrim(['SVC_RMA_MSTR_HIST'].[USRDEF03]) as 'User Defined 3', rtrim(['SVC_RMA_MSTR_HIST'].[USRDEF04]) as 'User Defined 4', rtrim(['SVC_RMA_MSTR_HIST'].[USRDEF05]) as 'User Defined 5', rtrim(['SVC_RMA_MSTR_HIST'].[USERID]) as 'User ID', ['SVC_RMA_MSTR_HIST'].[VIEWMODE] as 'View Mode', rtrim(['SVC_RMA_MSTR_HIST'].[ZIPCODE]) as 'Zip Code',  'Customer ID For Drillback' = 'dgpp://DGPB/?Db=&Srv=TLEFLSQL3&Cmp=TLECO&Prod=0' +dbo.dgppCustomerID(1,['RM Customer MSTR'].[CUSTNMBR] ), 'Return Document ID For Drillback' = 'dgpp://DGPB/?Db=&Srv=TLEFLSQL3&Cmp=TLECO&Prod=949' +dbo.dgppRMANumber(1,['SVC_RMA_MSTR_HIST'].[RETDOCID],['SVC_RMA_MSTR_HIST'].[Return_Record_Type] ), 'Service Call Number For Drillback' = 'dgpp://DGPB/?Db=&Srv=TLEFLSQL3&Cmp=TLECO&Prod=949' +dbo.dgppServiceRecordType(1,['SVC_RMA_MSTR_HIST'].[CALLNBR],['SVC_RMA_MSTR_HIST'].[SRVRECTYPE] ), 'SOP Number For Drillback' = 'dgpp://DGPB/?Db=&Srv=TLEFLSQL3&Cmp=TLECO&Prod=0' +dbo.dgppSalesOrder(1,3,11,'',0,0,['SVC_RMA_MSTR_HIST'].[CUSTNMBR],'',0,'',['SVC_RMA_MSTR_HIST'].[SOPTYPE],['SVC_RMA_MSTR_HIST'].[SOPNUMBE] )          from [SVC35000] as ['SVC_RMA_MSTR_HIST'] with (NOLOCK) left outer join [RM00101] as ['RM Customer MSTR'] with (NOLOCK) on ['SVC_RMA_MSTR_HIST'].[CUSTNMBR] = ['RM Customer MSTR'].[CUSTNMBR] left outer join [RM00101] as ['RM Customer MSTR2'] with (NOLOCK) on ['SVC_RMA_MSTR_HIST'].[Bill_To_Customer] = ['RM Customer MSTR2'].[CUSTNMBR] 
GO
GRANT SELECT ON  [dbo].[HistoryRMAs] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[HistoryRMAs] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[HistoryRMAs] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[HistoryRMAs] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[HistoryRMAs] TO [rpt_customer service rep]
GO
GRANT SELECT ON  [dbo].[HistoryRMAs] TO [rpt_dispatcher]
GO
GRANT SELECT ON  [dbo].[HistoryRMAs] TO [rpt_executive]
GO
GRANT SELECT ON  [dbo].[HistoryRMAs] TO [rpt_project manager]
GO
