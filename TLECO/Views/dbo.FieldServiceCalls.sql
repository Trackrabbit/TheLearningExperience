SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[FieldServiceCalls] AS select rtrim(['Service Call Master'].[CALLNBR]) as 'Service Call Number', 'Service Record Type' = dbo.FS_FUNC_Service_Record_Type(['Service Call Master'].[SRVRECTYPE]), rtrim(['Service Call Master'].[SRVSTAT]) as 'Service Call Status', rtrim(['Service Call Master'].[SRVTYPE]) as 'Service Type', rtrim(['Service Call Master'].[SVCDESCR]) as 'Service Description', ['Service Call Master'].[priorityLevel] as 'priorityLevel', rtrim(['RM Customer MSTR'].[CUSTNMBR]) as 'Customer ID', rtrim(['Service Call Master'].[Customer_Reference]) as 'Customer Reference', rtrim(['Service Call Master'].[ADRSCODE]) as 'Address Code', rtrim(['RM Customer MSTR'].[CUSTNAME]) as 'Name', rtrim(['Service Call Master'].[OFFID]) as 'Office ID', rtrim(['Service Call Master'].[SVCAREA]) as 'Service Area', rtrim(['Service Call Master'].[TECHID]) as 'Tech ID', ['Service Call Master'].[ENTDTE] as 'Entry Date', ['Service Call Master'].[TOTAL] as 'Total',  rtrim(['Service Call Master'].[ADDRESS1]) as 'Address 1', rtrim(['Service Call Master'].[ADDRESS2]) as 'Address 2', rtrim(['Service Call Master'].[ADDRESS3]) as 'Address 3', ['Service Call Master'].[ARRIVDTE] as 'Arrival Date', ['Service Call Master'].[ARRIVTME] as 'Arrival Time', rtrim(['RM Customer MSTR2'].[CUSTNMBR]) as 'Bill To Customer ID', rtrim(['RM Customer MSTR2'].[CUSTNAME]) as 'Bill To Customer Name', 'Callback' = dbo.DYN_FUNC_Boolean_All(['Service Call Master'].[Callback]), rtrim(['Service Call Master'].[CITY]) as 'City', ['Service Call Master'].[COMPDTE] as 'Complete Date', ['Service Call Master'].[COMPTME] as 'Complete Time', rtrim(['Service Call Master'].[CNTCPRSN]) as 'Contact Person', rtrim(['Service Call Master'].[CONTNBR]) as 'Contract Number', 'Contract Record Type' = dbo.FS_FUNC_Contract_Record_Type(['Service Call Master'].[CONSTS]), rtrim(['Service Call Master'].[COUNTRY]) as 'Country', rtrim(['Service Call Master'].[CURNCYID]) as 'Currency ID', ['Service Call Master'].[CURRNIDX] as 'Currency Index', 'Decimal Places' = dbo.DYN_FUNC_Decimal_Places_QTYS(['Service Call Master'].[DECPLACS]), ['Service Call Master'].[DENXRATE] as 'Denomination Exchange Rate', ['Service Call Master'].[DISPDTE] as 'Dispatch Date', ['Service Call Master'].[DISPTME] as 'Dispatch Time', ['Service Call Master'].[ETADTE] as 'ETA Date', ['Service Call Master'].[ETATME] as 'ETA Time', ['Service Call Master'].[ETTR] as 'ETTR', ['Service Call Master'].[ENTTME] as 'Entry Time', rtrim(['Serial Master'].[SERLNMBR]) as 'Equipment/Serial Number', ['Service Call Master'].[ESCDATE] as 'Escalation Date', ['Service Call Master'].[Escalation_Level] as 'Escalation Level', ['Service Call Master'].[ESCTIME] as 'Escalation Time', ['Service Call Master'].[EXCHDATE] as 'Exchange Date', ['Service Call Master'].[XCHGRATE] as 'Exchange Rate', rtrim(['Service Call Master'].[EXGTBLID]) as 'Exchange Table ID', ['Service Call Master'].[EXPNDATE] as 'Expiration Date', ['Service Call Master'].[ISMCTRX] as 'IS MC Trx', ['Service Call Master'].[Invoiced_Amount] as 'Invoiced Amount', rtrim(['Service Call Equipment'].[ITEMNMBR]) as 'Item Number', ['Service Call Master'].[LABPCT] as 'Labor Pct', ['Service Call Master'].[LABSTOTCST] as 'Labor Sub Total Cost', ['Service Call Master'].[LABSTOTPRC] as 'Labor Sub Total Price', ['Service Call Master'].[MCTRXSTT] as 'MC Transaction State', rtrim(['Service Call Master'].[MSTRCALLNBR]) as 'Master Service Call Number', 'Master Service Record Type' = dbo.FS_FUNC_Master_Service_Record_Type(['Service Call Master'].[MSTRRECTYPE]), ['Service Call Master'].[METER1] as 'Meter 1', ['Service Call Master'].[METER2] as 'Meter 2', ['Service Call Master'].[METER3] as 'Meter 3', ['Service Call Master'].[Meter_Internal_Uses_1] as 'Meter Internal Uses', ['Service Call Master'].[Meters_1] as 'Meters', ['Service Call Master'].[MISCPCT] as 'Misc Pct', ['Service Call Master'].[MISSTOTCST] as 'Misc Sub Total Cost', ['Service Call Master'].[MSCSTOTPRC] as 'Misc Sub Total Price', ['Service Call Master'].[NOTEINDX] as 'Note Index', ['Service Call Master'].[Notify_Date] as 'Notify Date', 'Notify Flag' = dbo.DYN_FUNC_Boolean_All(['Service Call Master'].[NOTFYFLAG]), ['Service Call Master'].[Notify_Time] as 'Notify Time', ['Service Call Master'].[Orig_Invoiced_Amount] as 'Originating Invoiced Amount', ['Service Call Master'].[ORIGLABSUBTOTCOST] as 'Originating Labor Sub Total Cost', ['Service Call Master'].[ORIGLABSTOTPRC] as 'Originating Labor Sub Total Price', ['Service Call Master'].[ORIGMISSTOTCST] as 'Originating Misc Sub Total Cost', ['Service Call Master'].[ORIGMSCSTOTPRC] as 'Originating Misc Sub Total Price', ['Service Call Master'].[ORIGPARSTOTCST] as 'Originating Part Sub Total Cost', ['Service Call Master'].[ORIGPARSTOTPRC] as 'Originating Part Sub Total Price', ['Service Call Master'].[ORIGPRETAXTOT] as 'Originating PreTax Total', ['Service Call Master'].[ORIGTOTAL] as 'Originating Service Total', ['Service Call Master'].[ORTAXAMT] as 'Originating Tax Amount', ['Service Call Master'].[PARTPCT] as 'Part Pct', ['Service Call Master'].[PARSTOTCST] as 'Part Sub Total Cost', ['Service Call Master'].[PARSTOTPRC] as 'Part Sub Total Price', rtrim(['Service Call Master'].[PYMTRMID]) as 'Payment Terms ID', rtrim(['Service Call Master'].[PHONE1]) as 'Phone 1',  ['Service Call Master'].[PRETAXTOT] as 'PreTax Total', rtrim(['Service Call Master'].[PRICELVL]) as 'Price Level', 'Print to Web' = dbo.DYN_FUNC_Boolean_All(['Service Call Master'].[Print_to_Web]), rtrim(['Service Call Master'].[ProjectRef1_1]) as 'ProjectRef1', rtrim(['Service Call Master'].[PROJCTID]) as 'Project ID', rtrim(['Service Call Master'].[PORDNMBR]) as 'Purchase Order Number', ['Service Call Master'].[RATECALC] as 'Rate Calc Method', rtrim(['Service Call Master'].[RATETPID]) as 'Rate Type ID', rtrim(['Service Call Master'].[Replaces_1]) as 'Replaces', ['Service Call Master'].[Response_Date] as 'Response Date', ['Service Call Master'].[Response_Time] as 'Response Time', rtrim(['Service Call Master'].[SVC_Bill_To_Address_Code]) as 'SVC Bill To Address Code', ['Service Call Master'].[SVC_Contract_Line_SEQ] as 'SVC_Contract_Line_SEQ_Number', rtrim(['Service Call Master'].[SVC_FO_ID]) as 'SVC FO ID', 'SVC On Hold' = dbo.DYN_FUNC_Boolean_All(['Service Call Master'].[SVC_On_Hold]), 'SVC_Pre600' = dbo.DYN_FUNC_Boolean_All(['Service Call Master'].[SVC_Pre600]), rtrim(['Service Call Master'].[SLPRSNID]) as 'Salesperson ID', rtrim(['Service Call Master'].[SPLTTERMS]) as 'Split Terms Code', rtrim(['Service Call Master'].[STATE]) as 'State', ['Service Call Master'].[TAXAMNT] as 'Tax Amount', rtrim(['Service Call Master'].[TAXEXMT1]) as 'Tax Exempt 1', rtrim(['Service Call Master'].[TAXEXMT2]) as 'Tax Exempt 2', rtrim(['Service Call Master'].[TAXSCHID]) as 'Tax Schedule ID', ['Service Call Master'].[TIME1] as 'Time', rtrim(['Service Call Master'].[TIMEZONE]) as 'TimeZone', rtrim(['Service Call Master'].[USERDEF1]) as 'User Defined 1', rtrim(['Service Call Master'].[USERDEF2]) as 'User Defined 2', rtrim(['Service Call Master'].[USRDEF03]) as 'User Defined 3', rtrim(['Service Call Master'].[USRDEF04]) as 'User Defined 4', rtrim(['Service Call Master'].[USRDEF05]) as 'User Defined 5', ['Service Call Master'].[VIEWMODE] as 'View Mode', rtrim(['Service Call Master'].[ZIP]) as 'Zip',  'Customer ID For Drillback' = 'dgpp://DGPB/?Db=&Srv=TLEFLSQL3&Cmp=TLECO&Prod=0' +dbo.dgppCustomerID(1,['RM Customer MSTR'].[CUSTNMBR] ), 'Item Number For Drillback' = 'dgpp://DGPB/?Db=&Srv=TLEFLSQL3&Cmp=TLECO&Prod=0' +dbo.dgppItemID(1,['Service Call Equipment'].[ITEMNMBR],'' ), 'Service Call Number For Drillback' = 'dgpp://DGPB/?Db=&Srv=TLEFLSQL3&Cmp=TLECO&Prod=949' +dbo.dgppServiceRecordType(1,['Service Call Master'].[CALLNBR],['Service Call Master'].[SRVRECTYPE] ), 'Salesperson ID For Drillback' = 'dgpp://DGPB/?Db=&Srv=TLEFLSQL3&Cmp=TLECO&Prod=0' +dbo.dgppSalespersonID(1,['Service Call Master'].[SLPRSNID],2 )         from [SVC00200] as ['Service Call Master'] with (NOLOCK) left outer join [RM00101] as ['RM Customer MSTR'] with (NOLOCK) on ['Service Call Master'].[CUSTNMBR] = ['RM Customer MSTR'].[CUSTNMBR] left outer join [SVC00202] as ['Service Call Equipment'] with (NOLOCK) on ['Service Call Master'].[SRVRECTYPE] = ['Service Call Equipment'].[SRVRECTYPE]  and ['Service Call Master'].[CALLNBR] = ['Service Call Equipment'].[CALLNBR] left outer join [RM00101] as ['RM Customer MSTR2'] with (NOLOCK) on ['Service Call Master'].[Bill_To_Customer] = ['RM Customer MSTR2'].[CUSTNMBR] left outer join [SVC00300] as ['Serial Master'] with (NOLOCK) on ['Service Call Equipment'].[EQUIPID] = ['Serial Master'].[EQUIPID] 
GO
GRANT SELECT ON  [dbo].[FieldServiceCalls] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[FieldServiceCalls] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[FieldServiceCalls] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[FieldServiceCalls] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[FieldServiceCalls] TO [rpt_customer service rep]
GO
GRANT SELECT ON  [dbo].[FieldServiceCalls] TO [rpt_dispatcher]
GO
GRANT SELECT ON  [dbo].[FieldServiceCalls] TO [rpt_executive]
GO
GRANT SELECT ON  [dbo].[FieldServiceCalls] TO [rpt_project manager]
GO
