SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_WDC41500L_2] (@Field_Security_ID_RS char(15), @USRCLASS_RS char(15), @CMPANYID_RS smallint, @USERID_RS char(15), @Field_Security_ID_RE char(15), @USRCLASS_RE char(15), @CMPANYID_RE smallint, @USERID_RE char(15)) AS  set nocount on IF @Field_Security_ID_RS IS NULL BEGIN SELECT TOP 25  USRCLASS, CMPANYID, USERID, Field_Security_ID, DEX_ROW_ID FROM .WDC41500 ORDER BY Field_Security_ID DESC, USRCLASS DESC, CMPANYID DESC, USERID DESC, DEX_ROW_ID DESC END ELSE IF @Field_Security_ID_RS = @Field_Security_ID_RE BEGIN SELECT TOP 25  USRCLASS, CMPANYID, USERID, Field_Security_ID, DEX_ROW_ID FROM .WDC41500 WHERE Field_Security_ID = @Field_Security_ID_RS AND USRCLASS BETWEEN @USRCLASS_RS AND @USRCLASS_RE AND CMPANYID BETWEEN @CMPANYID_RS AND @CMPANYID_RE AND USERID BETWEEN @USERID_RS AND @USERID_RE ORDER BY Field_Security_ID DESC, USRCLASS DESC, CMPANYID DESC, USERID DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  USRCLASS, CMPANYID, USERID, Field_Security_ID, DEX_ROW_ID FROM .WDC41500 WHERE Field_Security_ID BETWEEN @Field_Security_ID_RS AND @Field_Security_ID_RE AND USRCLASS BETWEEN @USRCLASS_RS AND @USRCLASS_RE AND CMPANYID BETWEEN @CMPANYID_RS AND @CMPANYID_RE AND USERID BETWEEN @USERID_RS AND @USERID_RE ORDER BY Field_Security_ID DESC, USRCLASS DESC, CMPANYID DESC, USERID DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WDC41500L_2] TO [DYNGRP]
GO