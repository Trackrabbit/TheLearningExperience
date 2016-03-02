SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IVR10015F_5] (@ISCHANGD_RS tinyint, @ISCHANGD_RE tinyint) AS  set nocount on IF @ISCHANGD_RS IS NULL BEGIN SELECT TOP 25  ITEMNMBR, ITEMSTATUS_I, BOMTYPE_I, MAKEBUYCODE_I, ITEMDESIGNAUTHORIT_I, EFFECTIVEDATE_I, REVISIONLEVEL_I, CHANGEDATE_I, USERID, DWGNUM_I, DWGSIZE_I, ABCCODE_I, FLOORSTOCK_I, ITEMUSEUP_I, CALCMRP_I, QAQCNEEDED_I, MINIMUMISSUE_I, IVCARRYINGCOST_I, IVSETUPCOST_I, AVERAGEORDQTY_I, SHRINKAGEPERCENT_I, DESTTESTINGREQD_I, ALTERNATE_I, SHIPPINGUOFM_I, LOCNCODE, MFGNOTEINDEX_I, ITEMFULFILLMETHOD, LLC, RUNNUMBER, FG_STD_QTY_I, QASTDATE, QAENDDATE, DAYTOEXP, INCL_EXP_TO_ENG, ISCHANGD, DEX_ROW_ID FROM .IVR10015 ORDER BY ISCHANGD ASC, DEX_ROW_ID ASC END ELSE IF @ISCHANGD_RS = @ISCHANGD_RE BEGIN SELECT TOP 25  ITEMNMBR, ITEMSTATUS_I, BOMTYPE_I, MAKEBUYCODE_I, ITEMDESIGNAUTHORIT_I, EFFECTIVEDATE_I, REVISIONLEVEL_I, CHANGEDATE_I, USERID, DWGNUM_I, DWGSIZE_I, ABCCODE_I, FLOORSTOCK_I, ITEMUSEUP_I, CALCMRP_I, QAQCNEEDED_I, MINIMUMISSUE_I, IVCARRYINGCOST_I, IVSETUPCOST_I, AVERAGEORDQTY_I, SHRINKAGEPERCENT_I, DESTTESTINGREQD_I, ALTERNATE_I, SHIPPINGUOFM_I, LOCNCODE, MFGNOTEINDEX_I, ITEMFULFILLMETHOD, LLC, RUNNUMBER, FG_STD_QTY_I, QASTDATE, QAENDDATE, DAYTOEXP, INCL_EXP_TO_ENG, ISCHANGD, DEX_ROW_ID FROM .IVR10015 WHERE ISCHANGD = @ISCHANGD_RS ORDER BY ISCHANGD ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  ITEMNMBR, ITEMSTATUS_I, BOMTYPE_I, MAKEBUYCODE_I, ITEMDESIGNAUTHORIT_I, EFFECTIVEDATE_I, REVISIONLEVEL_I, CHANGEDATE_I, USERID, DWGNUM_I, DWGSIZE_I, ABCCODE_I, FLOORSTOCK_I, ITEMUSEUP_I, CALCMRP_I, QAQCNEEDED_I, MINIMUMISSUE_I, IVCARRYINGCOST_I, IVSETUPCOST_I, AVERAGEORDQTY_I, SHRINKAGEPERCENT_I, DESTTESTINGREQD_I, ALTERNATE_I, SHIPPINGUOFM_I, LOCNCODE, MFGNOTEINDEX_I, ITEMFULFILLMETHOD, LLC, RUNNUMBER, FG_STD_QTY_I, QASTDATE, QAENDDATE, DAYTOEXP, INCL_EXP_TO_ENG, ISCHANGD, DEX_ROW_ID FROM .IVR10015 WHERE ISCHANGD BETWEEN @ISCHANGD_RS AND @ISCHANGD_RE ORDER BY ISCHANGD ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IVR10015F_5] TO [DYNGRP]
GO
