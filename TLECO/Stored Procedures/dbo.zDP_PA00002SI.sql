SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PA00002SI] (@INDEX1 smallint, @paNextDocumentNumber char(21), @ACTINDX int, @paAutoCreateVendors tinyint, @paAutoCreateCustomerVend tinyint, @paCreateVendorType smallint, @paDefaultVendorClass char(15), @paNextVendorID char(15), @paDebitDescriptionPrefix char(15), @paVoucherDescrPrefix char(15), @paAutoOpenSelectChecks tinyint, @paIntegrateEFT tinyint, @paCreateCustomerType smallint, @paDefaultCustomerClass char(15), @paNextCustomerID char(15), @paPMPrefix char(13), @paPMNextDocument char(21), @paRMPrefix char(13), @paConsolidationIndex int, @CRTMPVND tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .PA00002 (INDEX1, paNextDocumentNumber, ACTINDX, paAutoCreateVendors, paAutoCreateCustomerVend, paCreateVendorType, paDefaultVendorClass, paNextVendorID, paDebitDescriptionPrefix, paVoucherDescrPrefix, paAutoOpenSelectChecks, paIntegrateEFT, paCreateCustomerType, paDefaultCustomerClass, paNextCustomerID, paPMPrefix, paPMNextDocument, paRMPrefix, paConsolidationIndex, CRTMPVND) VALUES ( @INDEX1, @paNextDocumentNumber, @ACTINDX, @paAutoCreateVendors, @paAutoCreateCustomerVend, @paCreateVendorType, @paDefaultVendorClass, @paNextVendorID, @paDebitDescriptionPrefix, @paVoucherDescrPrefix, @paAutoOpenSelectChecks, @paIntegrateEFT, @paCreateCustomerType, @paDefaultCustomerClass, @paNextCustomerID, @paPMPrefix, @paPMNextDocument, @paRMPrefix, @paConsolidationIndex, @CRTMPVND) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PA00002SI] TO [DYNGRP]
GO
