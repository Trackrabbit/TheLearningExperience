SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV00102L_4] (@ITEMNMBR_RS char(31), @RCRDTYPE_RS smallint, @ITEMNMBR_RE char(31), @RCRDTYPE_RE smallint) AS  set nocount on IF @ITEMNMBR_RS IS NULL BEGIN SELECT TOP 25  ITEMNMBR, LOCNCODE, BINNMBR, RCRDTYPE, PRIMVNDR, ITMFRFLG, BGNGQTY, LSORDQTY, LRCPTQTY, LSTORDDT, LSORDVND, LSRCPTDT, QTYRQSTN, QTYONORD, QTYBKORD, QTY_Drop_Shipped, QTYINUSE, QTYINSVC, QTYRTRND, QTYDMGED, QTYONHND, ATYALLOC, QTYCOMTD, QTYSOLD, NXTCNTDT, NXTCNTTM, LSTCNTDT, LSTCNTTM, STCKCNTINTRVL, Landed_Cost_Group_ID, BUYERID, PLANNERID, ORDERPOLICY, FXDORDRQTY, ORDRPNTQTY, NMBROFDYS, MNMMORDRQTY, MXMMORDRQTY, ORDERMULTIPLE, REPLENISHMENTMETHOD, SHRINKAGEFACTOR, PRCHSNGLDTM, MNFCTRNGFXDLDTM, MNFCTRNGVRBLLDTM, STAGINGLDTME, PLNNNGTMFNCDYS, DMNDTMFNCPRDS, INCLDDINPLNNNG, CALCULATEATP, AUTOCHKATP, PLNFNLPAB, FRCSTCNSMPTNPRD, ORDRUPTOLVL, SFTYSTCKQTY, REORDERVARIANCE, PORECEIPTBIN, PORETRNBIN, SOFULFILLMENTBIN, SORETURNBIN, BOMRCPTBIN, MATERIALISSUEBIN, MORECEIPTBIN, REPAIRISSUESBIN, ReplenishmentLevel, POPOrderMethod, MasterLocationCode, POPVendorSelection, POPPricingSelection, PurchasePrice, IncludeAllocations, IncludeBackorders, IncludeRequisitions, PICKTICKETITEMOPT, INCLDMRPMOVEIN, INCLDMRPMOVEOUT, INCLDMRPCANCEL, Move_Out_Fence, INACTIVE, DEX_ROW_ID FROM .IV00102 ORDER BY ITEMNMBR DESC, RCRDTYPE DESC, DEX_ROW_ID DESC END ELSE IF @ITEMNMBR_RS = @ITEMNMBR_RE BEGIN SELECT TOP 25  ITEMNMBR, LOCNCODE, BINNMBR, RCRDTYPE, PRIMVNDR, ITMFRFLG, BGNGQTY, LSORDQTY, LRCPTQTY, LSTORDDT, LSORDVND, LSRCPTDT, QTYRQSTN, QTYONORD, QTYBKORD, QTY_Drop_Shipped, QTYINUSE, QTYINSVC, QTYRTRND, QTYDMGED, QTYONHND, ATYALLOC, QTYCOMTD, QTYSOLD, NXTCNTDT, NXTCNTTM, LSTCNTDT, LSTCNTTM, STCKCNTINTRVL, Landed_Cost_Group_ID, BUYERID, PLANNERID, ORDERPOLICY, FXDORDRQTY, ORDRPNTQTY, NMBROFDYS, MNMMORDRQTY, MXMMORDRQTY, ORDERMULTIPLE, REPLENISHMENTMETHOD, SHRINKAGEFACTOR, PRCHSNGLDTM, MNFCTRNGFXDLDTM, MNFCTRNGVRBLLDTM, STAGINGLDTME, PLNNNGTMFNCDYS, DMNDTMFNCPRDS, INCLDDINPLNNNG, CALCULATEATP, AUTOCHKATP, PLNFNLPAB, FRCSTCNSMPTNPRD, ORDRUPTOLVL, SFTYSTCKQTY, REORDERVARIANCE, PORECEIPTBIN, PORETRNBIN, SOFULFILLMENTBIN, SORETURNBIN, BOMRCPTBIN, MATERIALISSUEBIN, MORECEIPTBIN, REPAIRISSUESBIN, ReplenishmentLevel, POPOrderMethod, MasterLocationCode, POPVendorSelection, POPPricingSelection, PurchasePrice, IncludeAllocations, IncludeBackorders, IncludeRequisitions, PICKTICKETITEMOPT, INCLDMRPMOVEIN, INCLDMRPMOVEOUT, INCLDMRPCANCEL, Move_Out_Fence, INACTIVE, DEX_ROW_ID FROM .IV00102 WHERE ITEMNMBR = @ITEMNMBR_RS AND RCRDTYPE BETWEEN @RCRDTYPE_RS AND @RCRDTYPE_RE ORDER BY ITEMNMBR DESC, RCRDTYPE DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  ITEMNMBR, LOCNCODE, BINNMBR, RCRDTYPE, PRIMVNDR, ITMFRFLG, BGNGQTY, LSORDQTY, LRCPTQTY, LSTORDDT, LSORDVND, LSRCPTDT, QTYRQSTN, QTYONORD, QTYBKORD, QTY_Drop_Shipped, QTYINUSE, QTYINSVC, QTYRTRND, QTYDMGED, QTYONHND, ATYALLOC, QTYCOMTD, QTYSOLD, NXTCNTDT, NXTCNTTM, LSTCNTDT, LSTCNTTM, STCKCNTINTRVL, Landed_Cost_Group_ID, BUYERID, PLANNERID, ORDERPOLICY, FXDORDRQTY, ORDRPNTQTY, NMBROFDYS, MNMMORDRQTY, MXMMORDRQTY, ORDERMULTIPLE, REPLENISHMENTMETHOD, SHRINKAGEFACTOR, PRCHSNGLDTM, MNFCTRNGFXDLDTM, MNFCTRNGVRBLLDTM, STAGINGLDTME, PLNNNGTMFNCDYS, DMNDTMFNCPRDS, INCLDDINPLNNNG, CALCULATEATP, AUTOCHKATP, PLNFNLPAB, FRCSTCNSMPTNPRD, ORDRUPTOLVL, SFTYSTCKQTY, REORDERVARIANCE, PORECEIPTBIN, PORETRNBIN, SOFULFILLMENTBIN, SORETURNBIN, BOMRCPTBIN, MATERIALISSUEBIN, MORECEIPTBIN, REPAIRISSUESBIN, ReplenishmentLevel, POPOrderMethod, MasterLocationCode, POPVendorSelection, POPPricingSelection, PurchasePrice, IncludeAllocations, IncludeBackorders, IncludeRequisitions, PICKTICKETITEMOPT, INCLDMRPMOVEIN, INCLDMRPMOVEOUT, INCLDMRPCANCEL, Move_Out_Fence, INACTIVE, DEX_ROW_ID FROM .IV00102 WHERE ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND RCRDTYPE BETWEEN @RCRDTYPE_RS AND @RCRDTYPE_RE ORDER BY ITEMNMBR DESC, RCRDTYPE DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV00102L_4] TO [DYNGRP]
GO
