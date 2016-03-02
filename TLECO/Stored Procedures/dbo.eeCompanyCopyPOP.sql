SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[eeCompanyCopyPOP] @I_vFromCompany varchar(50),			 @I_vToCompany varchar(50),				 @I_vData tinyint,						 @I_vReportOptions tinyint,				 @O_iErrorState int = 0 output			 with encryption as set transaction isolation level read uncommitted set nocount on declare @iStatus int, @cStatement varchar(8000), @cStatement2 varchar(8000), @cStatement3 varchar(8000), @cStatement4 varchar(8000), @cStatement5 varchar(8000), @cStatement6 varchar(8000), @cStatement7 varchar(8000), @cStatement8 varchar(8000), @cStatement9 varchar(8000), @cStatement10 varchar(8000), @cStatement11 varchar(8000), @cStatement12 varchar(500), @cStatement1 varchar(255) select @iStatus = 0, @cStatement = '', @cStatement2 = '', @cStatement3 = '', @cStatement4 = '', @cStatement5 = '', @cStatement6 = '', @cStatement7 = '', @cStatement8 = '', @cStatement9 = '', @cStatement10 = '', @cStatement11 = '', @cStatement12 = '', @cStatement1 = '' if (@I_vData = 1) begin select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..POP00101' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..POP00101 ( [BUYERID],[DSCRIPTN],[NOTEINDX] ) select [BUYERID],[DSCRIPTN],[NOTEINDX] from ' + rtrim(@I_vFromCompany) + '..POP00101 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..POP40100' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..POP40100 ( [INDEX1],[PO_Code],[PONUMBER],[POFORMAT],[POPRCTNM],[Receipt_Code], [DECPLQTY],[DECPLCUR],[POHIST],[RCPTHIST],[DISTHIST],[DSPLYITM], [CREATDDT],[MODIFDT],[Number_Of_Lines],[POPALWOP_1],[POPALWOP_2],[POPALWOP_3], [POPALWOP_4],[POPALWOP_5],[POPPSWRD_1],[POPPSWRD_2],[POPPSWRD_3],[POPPSWRD_4], [POPPSWRD_5],[DEFAULTSITEMETHOD],[ALLOWHOLDEDIT],[AUTOHOLD],[SearchPOQtysFromSO],[TransferLineComments], [Purchase_Non_IV_Taxable],[Purchase_Freight_Taxable],[Purchase_Misc_Taxable],[NONIVSCH],[FRTSCHID],[MSCSCHID], [USEADVTX],[TAXSCHID],[User_Defined_Prompt01],[User_Defined_Prompt02],[User_Defined_Prompt03],[User_Defined_Prompt04], [User_Defined_Prompt05],[User_Defined_Prompt06],[User_Defined_Prompt07],[User_Defined_Prompt08],[User_Defined_Prompt09],[User_Defined_Prompt10], [User_Defined_Prompt11],[User_Defined_Prompt12],[User_Defined_Prompt13],[User_Defined_Prompt14],[User_Defined_Prompt15],[User_Defined_Prompt16], [User_Defined_Prompt17],[User_Defined_Prompt18],[User_Defined_Prompt19],[User_Defined_Prompt20],[User_Defined_Prompt21],[User_Defined_Prompt22], [User_Defined_Prompt23],[User_Defined_Prompt24],[User_Defined_Prompt25],[User_Defined_Prompt26],[User_Defined_Prompt27],[User_Defined_Prompt28], [User_Defined_Prompt29],[User_Defined_Prompt30],[User_Defined_Prompt31],[User_Defined_Prompt32],[User_Defined_Prompt33],[User_Defined_Prompt34], [User_Defined_Prompt35],[FreightTaxSchedNoteIdx],[MiscTaxSchedNoteIdx],[NonIVTaxSchedNoteIdx],[SingleTaxSchedNoteIdx],[ReplenishmentLevel], [POPOrderMethod],[MasterLocationCode],[POPVendorSelection],[POPPricingSelection],[IncludeAllocations],[IncludeBackorders], [IncludeRequisitions],[RETORIGTAX],[ONEPOPERADDR],[CALCRELDT],[Default_Document_Date],[UseQtyOverageTolerance], [UseQtyShortageTolerance],[QtyOverTolerancePercent],[QtyShortTolerancePercent],[AllowPOPrepayments],[CreateManualPrepayment],[PrepaymentPassword], [PrepaymentAccountIndex] ) select [INDEX1],[PO_Code],[PONUMBER],[POFORMAT],[POPRCTNM],[Receipt_Code], [DECPLQTY],[DECPLCUR],[POHIST],[RCPTHIST],[DISTHIST],[DSPLYITM], [CREATDDT],[MODIFDT],[Number_Of_Lines],[POPALWOP_1],[POPALWOP_2],[POPALWOP_3], [POPALWOP_4],[POPALWOP_5],[POPPSWRD_1],[POPPSWRD_2],[POPPSWRD_3],[POPPSWRD_4], [POPPSWRD_5],[DEFAULTSITEMETHOD],[ALLOWHOLDEDIT],[AUTOHOLD],[SearchPOQtysFromSO],[TransferLineComments], [Purchase_Non_IV_Taxable],[Purchase_Freight_Taxable],[Purchase_Misc_Taxable],[NONIVSCH],[FRTSCHID],[MSCSCHID], [USEADVTX],[TAXSCHID],[User_Defined_Prompt01],[User_Defined_Prompt02],[User_Defined_Prompt03],[User_Defined_Prompt04], [User_Defined_Prompt05],[User_Defined_Prompt06],[User_Defined_Prompt07],[User_Defined_Prompt08],[User_Defined_Prompt09],[User_Defined_Prompt10], [User_Defined_Prompt11],[User_Defined_Prompt12],[User_Defined_Prompt13],[User_Defined_Prompt14],[User_Defined_Prompt15],[User_Defined_Prompt16], [User_Defined_Prompt17],[User_Defined_Prompt18],[User_Defined_Prompt19],[User_Defined_Prompt20],[User_Defined_Prompt21],[User_Defined_Prompt22], [User_Defined_Prompt23],[User_Defined_Prompt24],[User_Defined_Prompt25],[User_Defined_Prompt26],[User_Defined_Prompt27],[User_Defined_Prompt28], [User_Defined_Prompt29],[User_Defined_Prompt30],[User_Defined_Prompt31],[User_Defined_Prompt32],[User_Defined_Prompt33],[User_Defined_Prompt34], [User_Defined_Prompt35],[FreightTaxSchedNoteIdx],[MiscTaxSchedNoteIdx],[NonIVTaxSchedNoteIdx],[SingleTaxSchedNoteIdx],[ReplenishmentLevel], [POPOrderMethod],[MasterLocationCode],[POPVendorSelection],[POPPricingSelection],[IncludeAllocations],[IncludeBackorders], [IncludeRequisitions],[RETORIGTAX],[ONEPOPERADDR],[CALCRELDT],[Default_Document_Date],[UseQtyOverageTolerance], [UseQtyShortageTolerance],[QtyOverTolerancePercent],[QtyShortTolerancePercent],[AllowPOPrepayments],[CreateManualPrepayment],[PrepaymentPassword], [PrepaymentAccountIndex] from ' + rtrim(@I_vFromCompany) + '..POP40100 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..POP40400' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..POP40400 ( [INDEX1],[DSCRIPTN] ) select [INDEX1],[DSCRIPTN] from ' + rtrim(@I_vFromCompany) + '..POP40400 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..POP40600' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..POP40600 ( [CURNCYID],[DECPLCUR] ) select [CURNCYID],[DECPLCUR] from ' + rtrim(@I_vFromCompany) + '..POP40600 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..POP40800' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..POP40800 ( [LOCNCODE],[ADRSCODE] ) select [LOCNCODE],[ADRSCODE] from ' + rtrim(@I_vFromCompany) + '..POP40800 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..POP40900' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..POP40900 ( [SETUPKEY],[DocDelivTempPath],[DocDelivEmailSubj],[DocDelivFaxSubj],[DocDelivStatusRecipient],[DocDelivEmailBodyText], [DocDelivFaxCoverPgText] ) select [SETUPKEY],[DocDelivTempPath],[DocDelivEmailSubj],[DocDelivFaxSubj],[DocDelivStatusRecipient],[DocDelivEmailBodyText], [DocDelivFaxCoverPgText] from ' + rtrim(@I_vFromCompany) + '..POP40900 ' exec(@cStatement) end return 
GO
GRANT EXECUTE ON  [dbo].[eeCompanyCopyPOP] TO [DYNGRP]
GO
