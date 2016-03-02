SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_POP40100SS_1] (@INDEX1 smallint) AS  set nocount on SELECT TOP 1  INDEX1, PO_Code, PONUMBER, POFORMAT, POPRCTNM, Receipt_Code, DECPLQTY, DECPLCUR, POHIST, RCPTHIST, DISTHIST, DSPLYITM, CREATDDT, MODIFDT, Number_Of_Lines, POPALWOP_1, POPALWOP_2, POPALWOP_3, POPALWOP_4, POPALWOP_5, POPPSWRD_1, POPPSWRD_2, POPPSWRD_3, POPPSWRD_4, POPPSWRD_5, DEFAULTSITEMETHOD, ALLOWHOLDEDIT, AUTOHOLD, SearchPOQtysFromSO, TransferLineComments, Purchase_Non_IV_Taxable, Purchase_Freight_Taxable, Purchase_Misc_Taxable, NONIVSCH, FRTSCHID, MSCSCHID, USEADVTX, TAXSCHID, User_Defined_Prompt01, User_Defined_Prompt02, User_Defined_Prompt03, User_Defined_Prompt04, User_Defined_Prompt05, User_Defined_Prompt06, User_Defined_Prompt07, User_Defined_Prompt08, User_Defined_Prompt09, User_Defined_Prompt10, User_Defined_Prompt11, User_Defined_Prompt12, User_Defined_Prompt13, User_Defined_Prompt14, User_Defined_Prompt15, User_Defined_Prompt16, User_Defined_Prompt17, User_Defined_Prompt18, User_Defined_Prompt19, User_Defined_Prompt20, User_Defined_Prompt21, User_Defined_Prompt22, User_Defined_Prompt23, User_Defined_Prompt24, User_Defined_Prompt25, User_Defined_Prompt26, User_Defined_Prompt27, User_Defined_Prompt28, User_Defined_Prompt29, User_Defined_Prompt30, User_Defined_Prompt31, User_Defined_Prompt32, User_Defined_Prompt33, User_Defined_Prompt34, User_Defined_Prompt35, FreightTaxSchedNoteIdx, MiscTaxSchedNoteIdx, NonIVTaxSchedNoteIdx, SingleTaxSchedNoteIdx, ReplenishmentLevel, POPOrderMethod, MasterLocationCode, POPVendorSelection, POPPricingSelection, IncludeAllocations, IncludeBackorders, IncludeRequisitions, RETORIGTAX, ONEPOPERADDR, CALCRELDT, Default_Document_Date, UseQtyOverageTolerance, UseQtyShortageTolerance, QtyOverTolerancePercent, QtyShortTolerancePercent, AllowPOPrepayments, CreateManualPrepayment, PrepaymentPassword, PrepaymentAccountIndex, RequisitionCode, POPRequisitionNumber, RequisitionMaintainHist, RequisitionDefDocDate, RequisitionDefSiteMethod, RequisitionVendorSelect, RequisitionCostSelection, ReqCreateOnePOPerAddress, ReqTransferLineComments, SearchPOQtysFromRequisit, Req_Hdr_UD_Prompt1, Req_Hdr_UD_Prompt2, Req_Line_UD_Prompt1, Req_Line_UD_Prompt2, DEX_ROW_ID FROM .POP40100 WHERE INDEX1 = @INDEX1 ORDER BY INDEX1 ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_POP40100SS_1] TO [DYNGRP]
GO
