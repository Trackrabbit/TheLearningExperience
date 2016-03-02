SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[Equipment] AS select ['Serial Master'].[EQUIPID] as 'Equipment ID', rtrim(['Serial Master'].[SERLNMBR]) as 'Serial Number', rtrim(['Serial Master'].[ITEMNMBR]) as 'Item Number', rtrim(['Serial Master'].[SRLSTAT]) as 'Equipment Status', ['Serial Master'].[INSTDTE] as 'Install Date', rtrim(['RM Customer MSTR'].[CUSTNMBR]) as 'Customer ID', rtrim(['Serial Master'].[ADRSCODE]) as 'Address Code', rtrim(['Serial Master'].[SVC_Serial_ID]) as 'SVC Serial ID', ['Serial Master'].[QUANTITY] as 'QTY', rtrim(['Serial Master'].[SVC_Asset_Tag]) as 'SVC Asset Tag', ['Serial Master'].[Shipped_Date] as 'Shipped Date',  rtrim(['Serial Master'].[ADDRESS1]) as 'Address 1', rtrim(['Serial Master'].[ADDRESS2]) as 'Address 2', rtrim(['Serial Master'].[ADDRESS3]) as 'Address 3', rtrim(['Serial Master'].[CITY]) as 'City', rtrim(['Serial Master'].[CNTCPRSN]) as 'Contact Person', rtrim(['Serial Master'].[COUNTRY]) as 'Country', rtrim(['RM Customer MSTR'].[CUSTNAME]) as 'Customer Name', ['Serial Master'].[Dailys_1] as 'Dailys', ['Serial Master'].[Last_Calc_Date] as 'Last Calc Date', ['Serial Master'].[LSTPMDTE] as 'Last PM Date', ['Serial Master'].[LSTSRVDTE] as 'Last Service Date', ['Serial Master'].[MTBF] as 'MTBF', ['Serial Master'].[MTBFs_1] as 'MTBFs', ['Serial Master'].[MTBI] as 'MTBI', ['Serial Master'].[MTTR] as 'MTTR', ['Serial Master'].[Meter_Deltas_1] as 'Meter_Deltas', ['Serial Master'].[Meters_1] as 'Meters', ['Serial Master'].[NOTEINDX] as 'Note Index', rtrim(['Serial Master'].[OFFID]) as 'Office ID', rtrim(['Serial Master'].[REFRENCE]) as 'Reference', ['Serial Master'].[SVC_PM_Day] as 'SVC PM Day', 'SVC PM Month' = dbo.FS_FUNC_SVC_PM_Month(['Serial Master'].[SVC_PM_Date]), ['Serial Master'].[SVC_Register_Date] as 'SVC Register Date', rtrim(['Serial Master'].[SLRWARR]) as 'Seller Warranty Code', ['Serial Master'].[SLRWEND] as 'Seller Warranty End', ['Serial Master'].[SLRWSTART] as 'Seller Warranty Start', rtrim(['Serial Master'].[SVCAREA]) as 'Service Area', rtrim(['Serial Master'].[STATE]) as 'State', rtrim(['Serial Master'].[TECHID]) as 'Tech ID', rtrim(['Serial Master'].[TECHID2]) as 'Tech ID2', rtrim(['Serial Master'].[TIMEZONE]) as 'TimeZone', rtrim(['Serial Master'].[USERDEF1]) as 'User Defined 1', rtrim(['Serial Master'].[USERDEF2]) as 'User Defined 2', rtrim(['Serial Master'].[USRDEF03]) as 'User Defined 3', rtrim(['Serial Master'].[USRDEF04]) as 'User Defined 4', rtrim(['Serial Master'].[USRDEF05]) as 'User Defined 5', rtrim(['Serial Master'].[VENDORID]) as 'Vendor ID', rtrim(['Serial Master'].[Version]) as 'Version', rtrim(['Serial Master'].[WARRCDE]) as 'Warranty Code', ['Serial Master'].[WARREND] as 'Warranty End', ['Serial Master'].[WARRSTART] as 'Warranty Start', rtrim(['Serial Master'].[ZIP]) as 'Zip',  'Customer ID For Drillback' = 'dgpp://DGPB/?Db=&Srv=TLEFLSQL3&Cmp=TLECO&Prod=0' +dbo.dgppCustomerID(1,['RM Customer MSTR'].[CUSTNMBR] ), 'Equipment ID For Drillback' = 'dgpp://DGPB/?Db=&Srv=TLEFLSQL3&Cmp=TLECO&Prod=949' +dbo.dgppEquipmentID(1,['Serial Master'].[EQUIPID] ), 'Item Number For Drillback' = 'dgpp://DGPB/?Db=&Srv=TLEFLSQL3&Cmp=TLECO&Prod=0' +dbo.dgppItemID(1,['Serial Master'].[ITEMNMBR],'' ), 'Vendor ID For Drillback' = 'dgpp://DGPB/?Db=&Srv=TLEFLSQL3&Cmp=TLECO&Prod=0' +dbo.dgppVendorID(1,['Serial Master'].[VENDORID] )          from [SVC00300] as ['Serial Master'] with (NOLOCK) left outer join [RM00101] as ['RM Customer MSTR'] with (NOLOCK) on ['Serial Master'].[CUSTNMBR] = ['RM Customer MSTR'].[CUSTNMBR] 
GO
GRANT SELECT ON  [dbo].[Equipment] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[Equipment] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[Equipment] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[Equipment] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[Equipment] TO [rpt_customer service rep]
GO
GRANT SELECT ON  [dbo].[Equipment] TO [rpt_dispatcher]
GO
GRANT SELECT ON  [dbo].[Equipment] TO [rpt_executive]
GO
GRANT SELECT ON  [dbo].[Equipment] TO [rpt_project manager]
GO
