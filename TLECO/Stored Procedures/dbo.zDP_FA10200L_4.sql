SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA10200L_4] (@USERID_RS char(15), @GROUPNAME_RS char(15), @LOCATNID_RS char(15), @ASSETID_RS char(15), @ASSETIDSUF_RS smallint, @USERID_RE char(15), @GROUPNAME_RE char(15), @LOCATNID_RE char(15), @ASSETID_RE char(15), @ASSETIDSUF_RE smallint) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, GROUPNAME, ASSETINDEX, ASSETID, ASSETIDSUF, ASSETDESC, ASSETCLASSID, LOCATNID, STRUCTUREID, ASSETSTATUS, Asset_Label, Physical_Location_ID, DEX_ROW_ID FROM .FA10200 ORDER BY USERID DESC, GROUPNAME DESC, LOCATNID DESC, ASSETID DESC, ASSETIDSUF DESC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, GROUPNAME, ASSETINDEX, ASSETID, ASSETIDSUF, ASSETDESC, ASSETCLASSID, LOCATNID, STRUCTUREID, ASSETSTATUS, Asset_Label, Physical_Location_ID, DEX_ROW_ID FROM .FA10200 WHERE USERID = @USERID_RS AND GROUPNAME BETWEEN @GROUPNAME_RS AND @GROUPNAME_RE AND LOCATNID BETWEEN @LOCATNID_RS AND @LOCATNID_RE AND ASSETID BETWEEN @ASSETID_RS AND @ASSETID_RE AND ASSETIDSUF BETWEEN @ASSETIDSUF_RS AND @ASSETIDSUF_RE ORDER BY USERID DESC, GROUPNAME DESC, LOCATNID DESC, ASSETID DESC, ASSETIDSUF DESC END ELSE BEGIN SELECT TOP 25  USERID, GROUPNAME, ASSETINDEX, ASSETID, ASSETIDSUF, ASSETDESC, ASSETCLASSID, LOCATNID, STRUCTUREID, ASSETSTATUS, Asset_Label, Physical_Location_ID, DEX_ROW_ID FROM .FA10200 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND GROUPNAME BETWEEN @GROUPNAME_RS AND @GROUPNAME_RE AND LOCATNID BETWEEN @LOCATNID_RS AND @LOCATNID_RE AND ASSETID BETWEEN @ASSETID_RS AND @ASSETID_RE AND ASSETIDSUF BETWEEN @ASSETIDSUF_RS AND @ASSETIDSUF_RE ORDER BY USERID DESC, GROUPNAME DESC, LOCATNID DESC, ASSETID DESC, ASSETIDSUF DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA10200L_4] TO [DYNGRP]
GO
