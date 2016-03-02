SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[WorkOrders] AS select 'Work Order Record Type' = dbo.FS_FUNC_Work_Order_Record_Type(['Depot Master'].[WORECTYPE]), rtrim(['Depot Master'].[WORKORDNUM]) as 'Work Order Number', rtrim(['Depot Master'].[WOTYPE]) as 'Work Order Type', ['Depot Master'].[SVC_Depot_Priority] as 'SVC_Depot_Priority', ['Depot Master'].[ENTDTE] as 'Entry Date', ['Depot Master'].[ECOMPDT] as 'EComp Date', ['Depot Master'].[EComp_Time] as 'EComp Time', ['Depot Master'].[RETUDATE] as 'Return Date', ['Depot Master'].[COMPDTE] as 'Complete Date', rtrim(['Depot Master'].[OFFID]) as 'Office ID', rtrim(['RM Customer MSTR'].[CUSTNMBR]) as 'Customer ID', rtrim(['Depot Master'].[ADRSCODE]) as 'Address Code', rtrim(['Depot Master'].[IBITEMNUM]) as 'Inbound Item Number', rtrim(['Depot Master'].[IBSERIAL]) as 'Inbound Serial Number', ['Depot Master'].[IBEQUIPID] as 'Inbound Equipment ID', ['Depot Master'].[QUANTITY] as 'QTY', rtrim(['Depot Master'].[STATIONID]) as 'Depot Station ID', rtrim(['Depot Master'].[LOCNCODE]) as 'Location Code', ['Depot Master'].[LABSTOTCST] as 'Labor Sub Total Cost', ['Depot Master'].[PARSTOTCST] as 'Part Sub Total Cost', ['Depot Master'].[TOTLABHRS] as 'Total Labor Hours', ['Depot Master'].[Commit_Date] as 'Commit Date',  rtrim(['Depot Master'].[ADDRESS1]) as 'Address 1', rtrim(['Depot Master'].[ADDRESS2]) as 'Address 2', rtrim(['Depot Master'].[ADDRESS3]) as 'Address 3', rtrim(['Depot Master'].[BIN]) as 'Bin', rtrim(['Depot Master'].[CITY]) as 'City', ['Depot Master'].[Commit_Time] as 'Commit Time', ['Depot Master'].[COMPTME] as 'Complete Time', rtrim(['Depot Master'].[COUNTRY]) as 'Country', 'Customer Owned' = dbo.DYN_FUNC_Boolean_All(['Depot Master'].[CUSTOWN]), ['Depot Master'].[ETADTE] as 'ETA Date', ['Depot Master'].[ETATME] as 'ETA Time', ['Depot Master'].[ENTTME] as 'Entry Time', 'Factory Sealed' = dbo.DYN_FUNC_Boolean_All(['Depot Master'].[FACTSEAL]), rtrim(['Depot Master'].[IBANALCODE]) as 'Inbound Analysis Code', rtrim(['Depot Master'].[LNSEQNBR]) as 'Line SEQ Number', ['Depot Master'].[NOTEINDX] as 'Note Index', ['Depot Master'].[NUMRESCHED] as 'Number of Reschedules', rtrim(['Depot Master'].[ORDDOCID]) as 'Order Document ID', 'Origin' = dbo.FS_FUNC_Origin(['Depot Master'].[ORIGIN]), rtrim(['Depot Master'].[OBANALCODE]) as 'Outbound Analysis Code', ['Depot Master'].[OBEQUIPID] as 'Outbound Equipment ID', rtrim(['Depot Master'].[OBITEMNUM]) as 'Outbound Item Number', rtrim(['Depot Master'].[OBSERIAL]) as 'Outbound Serial Number', rtrim(['Depot Master'].[PARWONUM]) as 'Parent Work Order Number', ['Depot Master'].[PARWORECTYPE] as 'Parent Work Order Record Type', rtrim(['Depot Master'].[PRICELVL]) as 'Price Level', rtrim(['Depot Master'].[REFRENCE]) as 'Reference', rtrim(['Depot Master'].[RETDOCID]) as 'Return Document ID', ['Depot Master'].[Return_Time] as 'Return Time', rtrim(['Depot Master'].[ROUTEID]) as 'Route ID', ['Depot Master'].[SVC_Process_SEQ_Number] as 'SVC Process SEQ Number', rtrim(['Depot Master'].[SVC_RMA_Reason_Code]) as 'SVC_RMA_Reason_Code', rtrim(['Depot Master'].[SVC_RMA_Reason_Code_Desc]) as 'SVC_RMA_Reason_Code_Desc', ['Depot Master'].[SEQUENCE1] as 'Sequence', rtrim(['Depot Master'].[CALLNBR]) as 'Service Call Number', ['Depot Master'].[SERVLITEMSEQ] as 'Service Line Item Sequence', 'Service Record Type' = dbo.FS_FUNC_Service_Record_Type(['Depot Master'].[SRVRECTYPE]), rtrim(['Depot Master'].[STATE]) as 'State', rtrim(['Depot Master'].[TIMEZONE]) as 'TimeZone', ['Depot Master'].[TRANSLINESEQ] as 'Transfer Line Item Sequence', rtrim(['Depot Master'].[USERDEF1]) as 'User Defined 1', rtrim(['Depot Master'].[USERDEF2]) as 'User Defined 2', rtrim(['Depot Master'].[USRDEF03]) as 'User Defined 3', rtrim(['Depot Master'].[USRDEF04]) as 'User Defined 4', rtrim(['Depot Master'].[USRDEF05]) as 'User Defined 5', rtrim(['Depot Master'].[USERID]) as 'User ID', rtrim(['Depot Master'].[WOSTAT]) as 'Work Order Status', rtrim(['Depot Master'].[ZIPCODE]) as 'Zip Code',  'Customer ID For Drillback' = 'dgpp://DGPB/?Db=&Srv=TLEFLSQL3&Cmp=TLECO&Prod=0' +dbo.dgppCustomerID(1,['RM Customer MSTR'].[CUSTNMBR] ), 'Service Call Number For Drillback' = 'dgpp://DGPB/?Db=&Srv=TLEFLSQL3&Cmp=TLECO&Prod=949' +dbo.dgppServiceRecordType(1,['Depot Master'].[CALLNBR],['Depot Master'].[SRVRECTYPE] ), 'Work Order Number For Drillback' = 'dgpp://DGPB/?Db=&Srv=TLEFLSQL3&Cmp=TLECO&Prod=949' +dbo.dgppWorkOrderNumber(1,['Depot Master'].[WORKORDNUM],['Depot Master'].[WORECTYPE] )          from [SVC06100] as ['Depot Master'] with (NOLOCK) left outer join [RM00101] as ['RM Customer MSTR'] with (NOLOCK) on ['Depot Master'].[CUSTNMBR] = ['RM Customer MSTR'].[CUSTNMBR] 
GO
GRANT SELECT ON  [dbo].[WorkOrders] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[WorkOrders] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[WorkOrders] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[WorkOrders] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[WorkOrders] TO [rpt_customer service rep]
GO
GRANT SELECT ON  [dbo].[WorkOrders] TO [rpt_dispatcher]
GO
GRANT SELECT ON  [dbo].[WorkOrders] TO [rpt_executive]
GO
GRANT SELECT ON  [dbo].[WorkOrders] TO [rpt_project manager]
GO