SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA10200SS_4] (@USERID char(15), @GROUPNAME char(15), @LOCATNID char(15), @ASSETID char(15), @ASSETIDSUF smallint) AS  set nocount on SELECT TOP 1  USERID, GROUPNAME, ASSETINDEX, ASSETID, ASSETIDSUF, ASSETDESC, ASSETCLASSID, LOCATNID, STRUCTUREID, ASSETSTATUS, Asset_Label, Physical_Location_ID, DEX_ROW_ID FROM .FA10200 WHERE USERID = @USERID AND GROUPNAME = @GROUPNAME AND LOCATNID = @LOCATNID AND ASSETID = @ASSETID AND ASSETIDSUF = @ASSETIDSUF ORDER BY USERID ASC, GROUPNAME ASC, LOCATNID ASC, ASSETID ASC, ASSETIDSUF ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA10200SS_4] TO [DYNGRP]
GO
