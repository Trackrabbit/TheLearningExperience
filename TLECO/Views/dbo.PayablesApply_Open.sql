SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[PayablesApply_Open] AS select rtrim(['PM Apply To WORK OPEN File'].[VCHRNMBR]) as 'Apply From Voucher Number', 'Apply From Document Type' = dbo.DYN_FUNC_Document_Type_PM_Trx(['PM Apply To WORK OPEN File'].[DOCTYPE]), rtrim(['PM Apply To WORK OPEN File'].[APTVCHNM]) as 'Apply To Voucher Number', 'Apply To Document Type' = dbo.DYN_FUNC_Document_Type_PM_Trx(['PM Apply To WORK OPEN File'].[APTODCTY]), ['PM Apply To WORK OPEN File'].[APPLDAMT] as 'Applied Amount', 'Posted' = dbo.DYN_FUNC_Boolean_All(['PM Apply To WORK OPEN File'].[POSTED]), ['PM Apply To WORK OPEN File'].[APFRMAPLYAMT] as 'Apply From Apply Amount', ['PM Apply To WORK OPEN File'].[DOCTYPE] as 'Document Type Int', 'Apply From Voucher Number For Drillback' = 'dgpp://DGPB/?Db=&Srv=TLEFLSQL3&Cmp=TLECO&Prod=0' +dbo.dgppPayablesTransactionNumber(1,['PM Apply To WORK OPEN File'].[DOCTYPE],['PM Apply To WORK OPEN File'].[VCHRNMBR],2,1,-1,'','' ), 'Apply To Voucher Number For Drillback' = 'dgpp://DGPB/?Db=&Srv=TLEFLSQL3&Cmp=TLECO&Prod=0' +dbo.dgppPayablesTransactionNumber(1,['PM Apply To WORK OPEN File'].[APTODCTY],['PM Apply To WORK OPEN File'].[APTVCHNM],2,1,-1,'','' )  from [PM10200] as ['PM Apply To WORK OPEN File'] with (NOLOCK)                     
GO
GRANT SELECT ON  [dbo].[PayablesApply_Open] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PayablesApply_Open] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PayablesApply_Open] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PayablesApply_Open] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[PayablesApply_Open] TO [rpt_accounting manager]
GO
GRANT SELECT ON  [dbo].[PayablesApply_Open] TO [rpt_accounts payable coordinator]
GO
GRANT SELECT ON  [dbo].[PayablesApply_Open] TO [rpt_bookkeeper]
GO
GRANT SELECT ON  [dbo].[PayablesApply_Open] TO [rpt_executive]
GO
