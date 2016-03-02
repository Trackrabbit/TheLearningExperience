SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IVR10015SI] (@ITEMNMBR char(31), @ITEMSTATUS_I smallint, @BOMTYPE_I smallint, @MAKEBUYCODE_I smallint, @ITEMDESIGNAUTHORIT_I char(101), @EFFECTIVEDATE_I datetime, @REVISIONLEVEL_I char(51), @CHANGEDATE_I datetime, @USERID char(15), @DWGNUM_I char(31), @DWGSIZE_I char(3), @ABCCODE_I smallint, @FLOORSTOCK_I tinyint, @ITEMUSEUP_I tinyint, @CALCMRP_I tinyint, @QAQCNEEDED_I tinyint, @MINIMUMISSUE_I numeric(19,5), @IVCARRYINGCOST_I numeric(19,5), @IVSETUPCOST_I numeric(19,5), @AVERAGEORDQTY_I numeric(19,5), @SHRINKAGEPERCENT_I int, @DESTTESTINGREQD_I tinyint, @ALTERNATE_I tinyint, @SHIPPINGUOFM_I smallint, @LOCNCODE char(11), @MFGNOTEINDEX_I numeric(19,5), @ITEMFULFILLMETHOD smallint, @LLC int, @RUNNUMBER int, @FG_STD_QTY_I numeric(19,5), @QASTDATE datetime, @QAENDDATE datetime, @DAYTOEXP smallint, @INCL_EXP_TO_ENG tinyint, @ISCHANGD tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .IVR10015 (ITEMNMBR, ITEMSTATUS_I, BOMTYPE_I, MAKEBUYCODE_I, ITEMDESIGNAUTHORIT_I, EFFECTIVEDATE_I, REVISIONLEVEL_I, CHANGEDATE_I, USERID, DWGNUM_I, DWGSIZE_I, ABCCODE_I, FLOORSTOCK_I, ITEMUSEUP_I, CALCMRP_I, QAQCNEEDED_I, MINIMUMISSUE_I, IVCARRYINGCOST_I, IVSETUPCOST_I, AVERAGEORDQTY_I, SHRINKAGEPERCENT_I, DESTTESTINGREQD_I, ALTERNATE_I, SHIPPINGUOFM_I, LOCNCODE, MFGNOTEINDEX_I, ITEMFULFILLMETHOD, LLC, RUNNUMBER, FG_STD_QTY_I, QASTDATE, QAENDDATE, DAYTOEXP, INCL_EXP_TO_ENG, ISCHANGD) VALUES ( @ITEMNMBR, @ITEMSTATUS_I, @BOMTYPE_I, @MAKEBUYCODE_I, @ITEMDESIGNAUTHORIT_I, @EFFECTIVEDATE_I, @REVISIONLEVEL_I, @CHANGEDATE_I, @USERID, @DWGNUM_I, @DWGSIZE_I, @ABCCODE_I, @FLOORSTOCK_I, @ITEMUSEUP_I, @CALCMRP_I, @QAQCNEEDED_I, @MINIMUMISSUE_I, @IVCARRYINGCOST_I, @IVSETUPCOST_I, @AVERAGEORDQTY_I, @SHRINKAGEPERCENT_I, @DESTTESTINGREQD_I, @ALTERNATE_I, @SHIPPINGUOFM_I, @LOCNCODE, @MFGNOTEINDEX_I, @ITEMFULFILLMETHOD, @LLC, @RUNNUMBER, @FG_STD_QTY_I, @QASTDATE, @QAENDDATE, @DAYTOEXP, @INCL_EXP_TO_ENG, @ISCHANGD) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IVR10015SI] TO [DYNGRP]
GO
