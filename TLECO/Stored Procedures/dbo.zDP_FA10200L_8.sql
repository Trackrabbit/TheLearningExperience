SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA10200L_8] (@USERID_RS char(15), @GROUPNAME_RS char(15), @Asset_Label_RS char(19), @USERID_RE char(15), @GROUPNAME_RE char(15), @Asset_Label_RE char(19)) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, GROUPNAME, ASSETINDEX, ASSETID, ASSETIDSUF, ASSETDESC, ASSETCLASSID, LOCATNID, STRUCTUREID, ASSETSTATUS, Asset_Label, Physical_Location_ID, DEX_ROW_ID FROM .FA10200 ORDER BY USERID DESC, GROUPNAME DESC, Asset_Label DESC, DEX_ROW_ID DESC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, GROUPNAME, ASSETINDEX, ASSETID, ASSETIDSUF, ASSETDESC, ASSETCLASSID, LOCATNID, STRUCTUREID, ASSETSTATUS, Asset_Label, Physical_Location_ID, DEX_ROW_ID FROM .FA10200 WHERE USERID = @USERID_RS AND GROUPNAME BETWEEN @GROUPNAME_RS AND @GROUPNAME_RE AND Asset_Label BETWEEN @Asset_Label_RS AND @Asset_Label_RE ORDER BY USERID DESC, GROUPNAME DESC, Asset_Label DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  USERID, GROUPNAME, ASSETINDEX, ASSETID, ASSETIDSUF, ASSETDESC, ASSETCLASSID, LOCATNID, STRUCTUREID, ASSETSTATUS, Asset_Label, Physical_Location_ID, DEX_ROW_ID FROM .FA10200 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND GROUPNAME BETWEEN @GROUPNAME_RS AND @GROUPNAME_RE AND Asset_Label BETWEEN @Asset_Label_RS AND @Asset_Label_RE ORDER BY USERID DESC, GROUPNAME DESC, Asset_Label DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA10200L_8] TO [DYNGRP]
GO
