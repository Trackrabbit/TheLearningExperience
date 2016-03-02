SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA10200N_5] (@BS int, @USERID char(15), @GROUPNAME char(15), @ASSETCLASSID char(15), @ASSETID char(15), @ASSETIDSUF smallint, @USERID_RS char(15), @GROUPNAME_RS char(15), @ASSETCLASSID_RS char(15), @ASSETID_RS char(15), @ASSETIDSUF_RS smallint, @USERID_RE char(15), @GROUPNAME_RE char(15), @ASSETCLASSID_RE char(15), @ASSETID_RE char(15), @ASSETIDSUF_RE smallint) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, GROUPNAME, ASSETINDEX, ASSETID, ASSETIDSUF, ASSETDESC, ASSETCLASSID, LOCATNID, STRUCTUREID, ASSETSTATUS, Asset_Label, Physical_Location_ID, DEX_ROW_ID FROM .FA10200 WHERE ( USERID = @USERID AND GROUPNAME = @GROUPNAME AND ASSETCLASSID = @ASSETCLASSID AND ASSETID = @ASSETID AND ASSETIDSUF > @ASSETIDSUF OR USERID = @USERID AND GROUPNAME = @GROUPNAME AND ASSETCLASSID = @ASSETCLASSID AND ASSETID > @ASSETID OR USERID = @USERID AND GROUPNAME = @GROUPNAME AND ASSETCLASSID > @ASSETCLASSID OR USERID = @USERID AND GROUPNAME > @GROUPNAME OR USERID > @USERID ) ORDER BY USERID ASC, GROUPNAME ASC, ASSETCLASSID ASC, ASSETID ASC, ASSETIDSUF ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, GROUPNAME, ASSETINDEX, ASSETID, ASSETIDSUF, ASSETDESC, ASSETCLASSID, LOCATNID, STRUCTUREID, ASSETSTATUS, Asset_Label, Physical_Location_ID, DEX_ROW_ID FROM .FA10200 WHERE USERID = @USERID_RS AND GROUPNAME BETWEEN @GROUPNAME_RS AND @GROUPNAME_RE AND ASSETCLASSID BETWEEN @ASSETCLASSID_RS AND @ASSETCLASSID_RE AND ASSETID BETWEEN @ASSETID_RS AND @ASSETID_RE AND ASSETIDSUF BETWEEN @ASSETIDSUF_RS AND @ASSETIDSUF_RE AND ( USERID = @USERID AND GROUPNAME = @GROUPNAME AND ASSETCLASSID = @ASSETCLASSID AND ASSETID = @ASSETID AND ASSETIDSUF > @ASSETIDSUF OR USERID = @USERID AND GROUPNAME = @GROUPNAME AND ASSETCLASSID = @ASSETCLASSID AND ASSETID > @ASSETID OR USERID = @USERID AND GROUPNAME = @GROUPNAME AND ASSETCLASSID > @ASSETCLASSID OR USERID = @USERID AND GROUPNAME > @GROUPNAME OR USERID > @USERID ) ORDER BY USERID ASC, GROUPNAME ASC, ASSETCLASSID ASC, ASSETID ASC, ASSETIDSUF ASC END ELSE BEGIN SELECT TOP 25  USERID, GROUPNAME, ASSETINDEX, ASSETID, ASSETIDSUF, ASSETDESC, ASSETCLASSID, LOCATNID, STRUCTUREID, ASSETSTATUS, Asset_Label, Physical_Location_ID, DEX_ROW_ID FROM .FA10200 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND GROUPNAME BETWEEN @GROUPNAME_RS AND @GROUPNAME_RE AND ASSETCLASSID BETWEEN @ASSETCLASSID_RS AND @ASSETCLASSID_RE AND ASSETID BETWEEN @ASSETID_RS AND @ASSETID_RE AND ASSETIDSUF BETWEEN @ASSETIDSUF_RS AND @ASSETIDSUF_RE AND ( USERID = @USERID AND GROUPNAME = @GROUPNAME AND ASSETCLASSID = @ASSETCLASSID AND ASSETID = @ASSETID AND ASSETIDSUF > @ASSETIDSUF OR USERID = @USERID AND GROUPNAME = @GROUPNAME AND ASSETCLASSID = @ASSETCLASSID AND ASSETID > @ASSETID OR USERID = @USERID AND GROUPNAME = @GROUPNAME AND ASSETCLASSID > @ASSETCLASSID OR USERID = @USERID AND GROUPNAME > @GROUPNAME OR USERID > @USERID ) ORDER BY USERID ASC, GROUPNAME ASC, ASSETCLASSID ASC, ASSETID ASC, ASSETIDSUF ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA10200N_5] TO [DYNGRP]
GO
