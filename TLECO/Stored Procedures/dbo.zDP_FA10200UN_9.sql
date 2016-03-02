SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA10200UN_9] (@BS int, @USERID char(15), @GROUPNAME char(15), @Physical_Location_ID char(15), @Asset_Label char(19), @USERID_RS char(15), @GROUPNAME_RS char(15), @Physical_Location_ID_RS char(15), @Asset_Label_RS char(19), @USERID_RE char(15), @GROUPNAME_RE char(15), @Physical_Location_ID_RE char(15), @Asset_Label_RE char(19)) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, GROUPNAME, ASSETINDEX, ASSETID, ASSETIDSUF, ASSETDESC, ASSETCLASSID, LOCATNID, STRUCTUREID, ASSETSTATUS, Asset_Label, Physical_Location_ID, DEX_ROW_ID FROM .FA10200 WHERE ( USERID = @USERID AND GROUPNAME = @GROUPNAME AND Physical_Location_ID = @Physical_Location_ID AND Asset_Label > @Asset_Label OR USERID = @USERID AND GROUPNAME = @GROUPNAME AND Physical_Location_ID > @Physical_Location_ID OR USERID = @USERID AND GROUPNAME > @GROUPNAME OR USERID > @USERID ) ORDER BY USERID ASC, GROUPNAME ASC, Physical_Location_ID ASC, Asset_Label ASC, DEX_ROW_ID ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, GROUPNAME, ASSETINDEX, ASSETID, ASSETIDSUF, ASSETDESC, ASSETCLASSID, LOCATNID, STRUCTUREID, ASSETSTATUS, Asset_Label, Physical_Location_ID, DEX_ROW_ID FROM .FA10200 WHERE USERID = @USERID_RS AND GROUPNAME BETWEEN @GROUPNAME_RS AND @GROUPNAME_RE AND Physical_Location_ID BETWEEN @Physical_Location_ID_RS AND @Physical_Location_ID_RE AND Asset_Label BETWEEN @Asset_Label_RS AND @Asset_Label_RE AND ( USERID = @USERID AND GROUPNAME = @GROUPNAME AND Physical_Location_ID = @Physical_Location_ID AND Asset_Label > @Asset_Label OR USERID = @USERID AND GROUPNAME = @GROUPNAME AND Physical_Location_ID > @Physical_Location_ID OR USERID = @USERID AND GROUPNAME > @GROUPNAME OR USERID > @USERID ) ORDER BY USERID ASC, GROUPNAME ASC, Physical_Location_ID ASC, Asset_Label ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  USERID, GROUPNAME, ASSETINDEX, ASSETID, ASSETIDSUF, ASSETDESC, ASSETCLASSID, LOCATNID, STRUCTUREID, ASSETSTATUS, Asset_Label, Physical_Location_ID, DEX_ROW_ID FROM .FA10200 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND GROUPNAME BETWEEN @GROUPNAME_RS AND @GROUPNAME_RE AND Physical_Location_ID BETWEEN @Physical_Location_ID_RS AND @Physical_Location_ID_RE AND Asset_Label BETWEEN @Asset_Label_RS AND @Asset_Label_RE AND ( USERID = @USERID AND GROUPNAME = @GROUPNAME AND Physical_Location_ID = @Physical_Location_ID AND Asset_Label > @Asset_Label OR USERID = @USERID AND GROUPNAME = @GROUPNAME AND Physical_Location_ID > @Physical_Location_ID OR USERID = @USERID AND GROUPNAME > @GROUPNAME OR USERID > @USERID ) ORDER BY USERID ASC, GROUPNAME ASC, Physical_Location_ID ASC, Asset_Label ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA10200UN_9] TO [DYNGRP]
GO
