SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA10200N_1] (@BS int, @USERID char(15), @GROUPNAME char(15), @ASSETINDEX int, @USERID_RS char(15), @GROUPNAME_RS char(15), @ASSETINDEX_RS int, @USERID_RE char(15), @GROUPNAME_RE char(15), @ASSETINDEX_RE int) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, GROUPNAME, ASSETINDEX, ASSETID, ASSETIDSUF, ASSETDESC, ASSETCLASSID, LOCATNID, STRUCTUREID, ASSETSTATUS, Asset_Label, Physical_Location_ID, DEX_ROW_ID FROM .FA10200 WHERE ( USERID = @USERID AND GROUPNAME = @GROUPNAME AND ASSETINDEX > @ASSETINDEX OR USERID = @USERID AND GROUPNAME > @GROUPNAME OR USERID > @USERID ) ORDER BY USERID ASC, GROUPNAME ASC, ASSETINDEX ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, GROUPNAME, ASSETINDEX, ASSETID, ASSETIDSUF, ASSETDESC, ASSETCLASSID, LOCATNID, STRUCTUREID, ASSETSTATUS, Asset_Label, Physical_Location_ID, DEX_ROW_ID FROM .FA10200 WHERE USERID = @USERID_RS AND GROUPNAME BETWEEN @GROUPNAME_RS AND @GROUPNAME_RE AND ASSETINDEX BETWEEN @ASSETINDEX_RS AND @ASSETINDEX_RE AND ( USERID = @USERID AND GROUPNAME = @GROUPNAME AND ASSETINDEX > @ASSETINDEX OR USERID = @USERID AND GROUPNAME > @GROUPNAME OR USERID > @USERID ) ORDER BY USERID ASC, GROUPNAME ASC, ASSETINDEX ASC END ELSE BEGIN SELECT TOP 25  USERID, GROUPNAME, ASSETINDEX, ASSETID, ASSETIDSUF, ASSETDESC, ASSETCLASSID, LOCATNID, STRUCTUREID, ASSETSTATUS, Asset_Label, Physical_Location_ID, DEX_ROW_ID FROM .FA10200 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND GROUPNAME BETWEEN @GROUPNAME_RS AND @GROUPNAME_RE AND ASSETINDEX BETWEEN @ASSETINDEX_RS AND @ASSETINDEX_RE AND ( USERID = @USERID AND GROUPNAME = @GROUPNAME AND ASSETINDEX > @ASSETINDEX OR USERID = @USERID AND GROUPNAME > @GROUPNAME OR USERID > @USERID ) ORDER BY USERID ASC, GROUPNAME ASC, ASSETINDEX ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA10200N_1] TO [DYNGRP]
GO