SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY10997N_1] (@BS int, @DICTID smallint, @Language_ID smallint, @FUNCNAME char(101), @FUNCENUM smallint, @DICTID_RS smallint, @Language_ID_RS smallint, @FUNCNAME_RS char(101), @FUNCENUM_RS smallint, @DICTID_RE smallint, @Language_ID_RE smallint, @FUNCNAME_RE char(101), @FUNCENUM_RE smallint) AS  set nocount on IF @DICTID_RS IS NULL BEGIN SELECT TOP 25  DICTID, Language_ID, FUNCNAME, FUNCENUM, MSGNUM, Field_ResID, SQL_MSG, DEX_ROW_ID FROM .SY10997 WHERE ( DICTID = @DICTID AND Language_ID = @Language_ID AND FUNCNAME = @FUNCNAME AND FUNCENUM > @FUNCENUM OR DICTID = @DICTID AND Language_ID = @Language_ID AND FUNCNAME > @FUNCNAME OR DICTID = @DICTID AND Language_ID > @Language_ID OR DICTID > @DICTID ) ORDER BY DICTID ASC, Language_ID ASC, FUNCNAME ASC, FUNCENUM ASC END ELSE IF @DICTID_RS = @DICTID_RE BEGIN SELECT TOP 25  DICTID, Language_ID, FUNCNAME, FUNCENUM, MSGNUM, Field_ResID, SQL_MSG, DEX_ROW_ID FROM .SY10997 WHERE DICTID = @DICTID_RS AND Language_ID BETWEEN @Language_ID_RS AND @Language_ID_RE AND FUNCNAME BETWEEN @FUNCNAME_RS AND @FUNCNAME_RE AND FUNCENUM BETWEEN @FUNCENUM_RS AND @FUNCENUM_RE AND ( DICTID = @DICTID AND Language_ID = @Language_ID AND FUNCNAME = @FUNCNAME AND FUNCENUM > @FUNCENUM OR DICTID = @DICTID AND Language_ID = @Language_ID AND FUNCNAME > @FUNCNAME OR DICTID = @DICTID AND Language_ID > @Language_ID OR DICTID > @DICTID ) ORDER BY DICTID ASC, Language_ID ASC, FUNCNAME ASC, FUNCENUM ASC END ELSE BEGIN SELECT TOP 25  DICTID, Language_ID, FUNCNAME, FUNCENUM, MSGNUM, Field_ResID, SQL_MSG, DEX_ROW_ID FROM .SY10997 WHERE DICTID BETWEEN @DICTID_RS AND @DICTID_RE AND Language_ID BETWEEN @Language_ID_RS AND @Language_ID_RE AND FUNCNAME BETWEEN @FUNCNAME_RS AND @FUNCNAME_RE AND FUNCENUM BETWEEN @FUNCENUM_RS AND @FUNCENUM_RE AND ( DICTID = @DICTID AND Language_ID = @Language_ID AND FUNCNAME = @FUNCNAME AND FUNCENUM > @FUNCENUM OR DICTID = @DICTID AND Language_ID = @Language_ID AND FUNCNAME > @FUNCNAME OR DICTID = @DICTID AND Language_ID > @Language_ID OR DICTID > @DICTID ) ORDER BY DICTID ASC, Language_ID ASC, FUNCNAME ASC, FUNCENUM ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY10997N_1] TO [DYNGRP]
GO
