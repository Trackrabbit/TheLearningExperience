SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[TaxDetailTransactions] AS select rtrim(['Tax History'].[TAXDTLID]) as 'Tax Detail ID', rtrim(['Sales/Purchases Tax Master'].[TXDTLDSC]) as 'Tax Detail Description', 'Tax Detail Type' = dbo.DYN_FUNC_Tax_Detail_Type(['Sales/Purchases Tax Master'].[TXDTLTYP]), rtrim(['Tax History'].[DOCNUMBR]) as 'Document Number', rtrim(['Tax History'].[CustomerVendor_ID]) as 'Customer/Vendor ID', case ISNULL(['PM Vendor Master File'].[VENDORID],'empty') WHEN 'empty'  THEN rtrim(['RM Customer MSTR'].[CUSTNAME])  ELSE rtrim(['PM Vendor Master File'].[VENDNAME]) END as 'Customer/Vendor Name', ['Tax History'].[DOCDATE] as 'Document Date', ['Tax History'].[PSTGDATE] as 'Posting Date', ['Tax History'].[DOCAMNT] as 'Total Sales/Purchases', ['Tax History'].[Taxable_Amount] as 'Taxable Sales/Purchases', ['Tax History'].[TAXAMNT] as 'Tax Amount',  (select rtrim([ACTNUMST]) from [GL00105] as ['Account Index Master'] where ['Account Index Master'].[ACTINDX] = ['Tax History'].[ACTINDX]) as 'Account Number', ['Tax History'].[CURRNIDX] as 'Currency Index', rtrim(['RM Customer MSTR'].[CUSTNAME]) as 'Customer Name', rtrim(['RM Customer MSTR'].[CUSTNMBR]) as 'Customer Number', 'Document Type' = dbo.DYN_FUNC_Document_Type_Tax_Detail_Trx(['Tax History'].[DOCTYPE]), 'EC Transaction' = dbo.DYN_FUNC_Boolean_All(['Tax History'].[ECTRX]), 'Included On Return' = dbo.DYN_FUNC_Boolean_All(['Tax History'].[Included_On_Return]), ['Tax History'].[ORTAXAMT] as 'Originating Tax Amount', ['Tax History'].[Originating_Taxable_Amt] as 'Originating Taxable Sales/Purchases', ['Tax History'].[ORDOCAMT] as 'Originating Total Sales/Purchases', 'Series' = dbo.DYN_FUNC_Series_Tax_Detail_Trx(['Tax History'].[SERIES]), ['Tax History'].[Tax_Date] as 'Tax Date', ['Sales/Purchases Tax Master'].[TXDTLAMT] as 'Tax Detail Amount', ['Sales/Purchases Tax Master'].[TXDTLBSE] as 'Tax Detail Base', ['Sales/Purchases Tax Master'].[TXDTLPCT] as 'Tax Detail Percent', rtrim(['Tax History'].[Tax_Return_ID]) as 'Tax Return ID', rtrim(['PM Vendor Master File'].[VENDORID]) as 'Vendor ID', rtrim(['PM Vendor Master File'].[VENDNAME]) as 'Vendor Name', 'Voided' = dbo.DYN_FUNC_Voided(['Tax History'].[VOIDSTTS]),  'Account Number For Drillback' = 'dgpp://DGPB/?Db=&Srv=TLEFLSQL3&Cmp=TLECO&Prod=0' +dbo.dgppAccountIndex(1,['Tax History'].[ACTINDX] ), 'Customer Number For Drillback' = 'dgpp://DGPB/?Db=&Srv=TLEFLSQL3&Cmp=TLECO&Prod=0' +dbo.dgppCustomerID(1,['RM Customer MSTR'].[CUSTNMBR] ), 'Vendor ID For Drillback' = 'dgpp://DGPB/?Db=&Srv=TLEFLSQL3&Cmp=TLECO&Prod=0' +dbo.dgppVendorID(1,['PM Vendor Master File'].[VENDORID] )          from [TX30000] as ['Tax History'] with (NOLOCK) left outer join [TX00201] as ['Sales/Purchases Tax Master'] with (NOLOCK) on ['Tax History'].[TAXDTLID] = ['Sales/Purchases Tax Master'].[TAXDTLID] left outer join [PM00200] as ['PM Vendor Master File'] with (NOLOCK) on ['Tax History'].[CustomerVendor_ID] = ['PM Vendor Master File'].[VENDORID] left outer join [RM00101] as ['RM Customer MSTR'] with (NOLOCK) on ['Tax History'].[CustomerVendor_ID] = ['RM Customer MSTR'].[CUSTNMBR] 
GO
GRANT SELECT ON  [dbo].[TaxDetailTransactions] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[TaxDetailTransactions] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[TaxDetailTransactions] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[TaxDetailTransactions] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[TaxDetailTransactions] TO [rpt_accounting manager]
GO
GRANT SELECT ON  [dbo].[TaxDetailTransactions] TO [rpt_accounts receivable coordinator]
GO
GRANT SELECT ON  [dbo].[TaxDetailTransactions] TO [rpt_bookkeeper]
GO
GRANT SELECT ON  [dbo].[TaxDetailTransactions] TO [rpt_collections manager]
GO
GRANT SELECT ON  [dbo].[TaxDetailTransactions] TO [rpt_customer service rep]
GO
GRANT SELECT ON  [dbo].[TaxDetailTransactions] TO [rpt_dispatcher]
GO
GRANT SELECT ON  [dbo].[TaxDetailTransactions] TO [rpt_executive]
GO
GRANT SELECT ON  [dbo].[TaxDetailTransactions] TO [rpt_materials manager]
GO
GRANT SELECT ON  [dbo].[TaxDetailTransactions] TO [rpt_operations manager]
GO
GRANT SELECT ON  [dbo].[TaxDetailTransactions] TO [rpt_production manager]
GO
GRANT SELECT ON  [dbo].[TaxDetailTransactions] TO [rpt_project manager]
GO
GRANT SELECT ON  [dbo].[TaxDetailTransactions] TO [rpt_purchasing agent]
GO
GRANT SELECT ON  [dbo].[TaxDetailTransactions] TO [rpt_sales manager]
GO
GRANT SELECT ON  [dbo].[TaxDetailTransactions] TO [rpt_warehouse manager]
GO
