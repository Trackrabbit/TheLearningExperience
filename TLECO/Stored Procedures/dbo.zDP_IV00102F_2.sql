SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV00102F_2] (@LOCNCODE_RS char(11), @ITEMNMBR_RS char(31), @LOCNCODE_RE char(11), @ITEMNMBR_RE char(31)) AS  set nocount on IF @LOCNCODE_RS IS NULL BEGIN SELECT TOP 25  ITEMNMBR, LOCNCODE, BINNMBR, RCRDTYPE, PRIMVNDR, ITMFRFLG, BGNGQTY, LSORDQTY, LRCPTQTY, LSTORDDT, LSORDVND, LSRCPTDT, QTYRQSTN, QTYONORD, QTYBKORD, QTY_Drop_Shipped, QTYINUSE, QTYINSVC, QTYRTRND, QTYDMGED, QTYONHND, ATYALLOC, QTYCOMTD, QTYSOLD, NXTCNTDT, NXTCNTTM, LSTCNTDT, LSTCNTTM, STCKCNTINTRVL, Landed_Cost_Group_ID, BUYERID, PLANNERID, ORDERPOLICY, FXDORDRQTY, ORDRPNTQTY, NMBROFDYS, MNMMORDRQTY, MXMMORDRQTY, ORDERMULTIPLE, REPLENISHMENTMETHOD, SHRINKAGEFACTOR, PRCHSNGLDTM, MNFCTRNGFXDLDTM, MNFCTRNGVRBLLDTM, STAGINGLDTME, PLNNNGTMFNCDYS, DMNDTMFNCPRDS, INCLDDINPLNNNG, CALCULATEATP, AUTOCHKATP, PLNFNLPAB, FRCSTCNSMPTNPRD, ORDRUPTOLVL, SFTYSTCKQTY, REORDERVARIANCE, PORECEIPTBIN, PORETRNBIN, SOFULFILLMENTBIN, SORETURNBIN, BOMRCPTBIN, MATERIALISSUEBIN, MORECEIPTBIN, REPAIRISSUESBIN, ReplenishmentLevel, POPOrderMethod, MasterLocationCode, POPVendorSelection, POPPricingSelection, PurchasePrice, IncludeAllocations, IncludeBackorders, IncludeRequisitions, PICKTICKETITEMOPT, INCLDMRPMOVEIN, INCLDMRPMOVEOUT, INCLDMRPCANCEL, Move_Out_Fence, INACTIVE, DEX_ROW_ID FROM .IV00102 ORDER BY LOCNCODE ASC, ITEMNMBR ASC END ELSE IF @LOCNCODE_RS = @LOCNCODE_RE BEGIN SELECT TOP 25  ITEMNMBR, LOCNCODE, BINNMBR, RCRDTYPE, PRIMVNDR, ITMFRFLG, BGNGQTY, LSORDQTY, LRCPTQTY, LSTORDDT, LSORDVND, LSRCPTDT, QTYRQSTN, QTYONORD, QTYBKORD, QTY_Drop_Shipped, QTYINUSE, QTYINSVC, QTYRTRND, QTYDMGED, QTYONHND, ATYALLOC, QTYCOMTD, QTYSOLD, NXTCNTDT, NXTCNTTM, LSTCNTDT, LSTCNTTM, STCKCNTINTRVL, Landed_Cost_Group_ID, BUYERID, PLANNERID, ORDERPOLICY, FXDORDRQTY, ORDRPNTQTY, NMBROFDYS, MNMMORDRQTY, MXMMORDRQTY, ORDERMULTIPLE, REPLENISHMENTMETHOD, SHRINKAGEFACTOR, PRCHSNGLDTM, MNFCTRNGFXDLDTM, MNFCTRNGVRBLLDTM, STAGINGLDTME, PLNNNGTMFNCDYS, DMNDTMFNCPRDS, INCLDDINPLNNNG, CALCULATEATP, AUTOCHKATP, PLNFNLPAB, FRCSTCNSMPTNPRD, ORDRUPTOLVL, SFTYSTCKQTY, REORDERVARIANCE, PORECEIPTBIN, PORETRNBIN, SOFULFILLMENTBIN, SORETURNBIN, BOMRCPTBIN, MATERIALISSUEBIN, MORECEIPTBIN, REPAIRISSUESBIN, ReplenishmentLevel, POPOrderMethod, MasterLocationCode, POPVendorSelection, POPPricingSelection, PurchasePrice, IncludeAllocations, IncludeBackorders, IncludeRequisitions, PICKTICKETITEMOPT, INCLDMRPMOVEIN, INCLDMRPMOVEOUT, INCLDMRPCANCEL, Move_Out_Fence, INACTIVE, DEX_ROW_ID FROM .IV00102 WHERE LOCNCODE = @LOCNCODE_RS AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE ORDER BY LOCNCODE ASC, ITEMNMBR ASC END ELSE BEGIN SELECT TOP 25  ITEMNMBR, LOCNCODE, BINNMBR, RCRDTYPE, PRIMVNDR, ITMFRFLG, BGNGQTY, LSORDQTY, LRCPTQTY, LSTORDDT, LSORDVND, LSRCPTDT, QTYRQSTN, QTYONORD, QTYBKORD, QTY_Drop_Shipped, QTYINUSE, QTYINSVC, QTYRTRND, QTYDMGED, QTYONHND, ATYALLOC, QTYCOMTD, QTYSOLD, NXTCNTDT, NXTCNTTM, LSTCNTDT, LSTCNTTM, STCKCNTINTRVL, Landed_Cost_Group_ID, BUYERID, PLANNERID, ORDERPOLICY, FXDORDRQTY, ORDRPNTQTY, NMBROFDYS, MNMMORDRQTY, MXMMORDRQTY, ORDERMULTIPLE, REPLENISHMENTMETHOD, SHRINKAGEFACTOR, PRCHSNGLDTM, MNFCTRNGFXDLDTM, MNFCTRNGVRBLLDTM, STAGINGLDTME, PLNNNGTMFNCDYS, DMNDTMFNCPRDS, INCLDDINPLNNNG, CALCULATEATP, AUTOCHKATP, PLNFNLPAB, FRCSTCNSMPTNPRD, ORDRUPTOLVL, SFTYSTCKQTY, REORDERVARIANCE, PORECEIPTBIN, PORETRNBIN, SOFULFILLMENTBIN, SORETURNBIN, BOMRCPTBIN, MATERIALISSUEBIN, MORECEIPTBIN, REPAIRISSUESBIN, ReplenishmentLevel, POPOrderMethod, MasterLocationCode, POPVendorSelection, POPPricingSelection, PurchasePrice, IncludeAllocations, IncludeBackorders, IncludeRequisitions, PICKTICKETITEMOPT, INCLDMRPMOVEIN, INCLDMRPMOVEOUT, INCLDMRPCANCEL, Move_Out_Fence, INACTIVE, DEX_ROW_ID FROM .IV00102 WHERE LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE ORDER BY LOCNCODE ASC, ITEMNMBR ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV00102F_2] TO [DYNGRP]
GO