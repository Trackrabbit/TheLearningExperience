SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IVR10015N_1] (@BS int, @ITEMNMBR char(31), @ITEMNMBR_RS char(31), @ITEMNMBR_RE char(31)) AS  set nocount on IF @ITEMNMBR_RS IS NULL BEGIN SELECT TOP 25  ITEMNMBR, ITEMSTATUS_I, BOMTYPE_I, MAKEBUYCODE_I, ITEMDESIGNAUTHORIT_I, EFFECTIVEDATE_I, REVISIONLEVEL_I, CHANGEDATE_I, USERID, DWGNUM_I, DWGSIZE_I, ABCCODE_I, FLOORSTOCK_I, ITEMUSEUP_I, CALCMRP_I, QAQCNEEDED_I, MINIMUMISSUE_I, IVCARRYINGCOST_I, IVSETUPCOST_I, AVERAGEORDQTY_I, SHRINKAGEPERCENT_I, DESTTESTINGREQD_I, ALTERNATE_I, SHIPPINGUOFM_I, LOCNCODE, MFGNOTEINDEX_I, ITEMFULFILLMETHOD, LLC, RUNNUMBER, FG_STD_QTY_I, QASTDATE, QAENDDATE, DAYTOEXP, INCL_EXP_TO_ENG, ISCHANGD, DEX_ROW_ID FROM .IVR10015 WHERE ( ITEMNMBR > @ITEMNMBR ) ORDER BY ITEMNMBR ASC END ELSE IF @ITEMNMBR_RS = @ITEMNMBR_RE BEGIN SELECT TOP 25  ITEMNMBR, ITEMSTATUS_I, BOMTYPE_I, MAKEBUYCODE_I, ITEMDESIGNAUTHORIT_I, EFFECTIVEDATE_I, REVISIONLEVEL_I, CHANGEDATE_I, USERID, DWGNUM_I, DWGSIZE_I, ABCCODE_I, FLOORSTOCK_I, ITEMUSEUP_I, CALCMRP_I, QAQCNEEDED_I, MINIMUMISSUE_I, IVCARRYINGCOST_I, IVSETUPCOST_I, AVERAGEORDQTY_I, SHRINKAGEPERCENT_I, DESTTESTINGREQD_I, ALTERNATE_I, SHIPPINGUOFM_I, LOCNCODE, MFGNOTEINDEX_I, ITEMFULFILLMETHOD, LLC, RUNNUMBER, FG_STD_QTY_I, QASTDATE, QAENDDATE, DAYTOEXP, INCL_EXP_TO_ENG, ISCHANGD, DEX_ROW_ID FROM .IVR10015 WHERE ITEMNMBR = @ITEMNMBR_RS AND ( ITEMNMBR > @ITEMNMBR ) ORDER BY ITEMNMBR ASC END ELSE BEGIN SELECT TOP 25  ITEMNMBR, ITEMSTATUS_I, BOMTYPE_I, MAKEBUYCODE_I, ITEMDESIGNAUTHORIT_I, EFFECTIVEDATE_I, REVISIONLEVEL_I, CHANGEDATE_I, USERID, DWGNUM_I, DWGSIZE_I, ABCCODE_I, FLOORSTOCK_I, ITEMUSEUP_I, CALCMRP_I, QAQCNEEDED_I, MINIMUMISSUE_I, IVCARRYINGCOST_I, IVSETUPCOST_I, AVERAGEORDQTY_I, SHRINKAGEPERCENT_I, DESTTESTINGREQD_I, ALTERNATE_I, SHIPPINGUOFM_I, LOCNCODE, MFGNOTEINDEX_I, ITEMFULFILLMETHOD, LLC, RUNNUMBER, FG_STD_QTY_I, QASTDATE, QAENDDATE, DAYTOEXP, INCL_EXP_TO_ENG, ISCHANGD, DEX_ROW_ID FROM .IVR10015 WHERE ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND ( ITEMNMBR > @ITEMNMBR ) ORDER BY ITEMNMBR ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IVR10015N_1] TO [DYNGRP]
GO