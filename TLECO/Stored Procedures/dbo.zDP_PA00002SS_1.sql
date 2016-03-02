SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PA00002SS_1] (@INDEX1 smallint) AS  set nocount on SELECT TOP 1  INDEX1, paNextDocumentNumber, ACTINDX, paAutoCreateVendors, paAutoCreateCustomerVend, paCreateVendorType, paDefaultVendorClass, paNextVendorID, paDebitDescriptionPrefix, paVoucherDescrPrefix, paAutoOpenSelectChecks, paIntegrateEFT, paCreateCustomerType, paDefaultCustomerClass, paNextCustomerID, paPMPrefix, paPMNextDocument, paRMPrefix, paConsolidationIndex, CRTMPVND, DEX_ROW_ID FROM .PA00002 WHERE INDEX1 = @INDEX1 ORDER BY INDEX1 ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PA00002SS_1] TO [DYNGRP]
GO
