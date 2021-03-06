SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00302L_3] (@OLDSERNBR_RS char(21), @OLDITEMNBR_RS char(31), @OLDSERNBR_RE char(21), @OLDITEMNBR_RE char(31)) AS  set nocount on IF @OLDSERNBR_RS IS NULL BEGIN SELECT TOP 25  EQUIPID, SERLNMBR, ITEMNMBR, REFRENCE, OLDEQUIPID, OLDSERNBR, OLDITEMNBR, OLDREFID, LSTDTEDT, USERID, DEX_ROW_ID FROM .SVC00302 ORDER BY OLDSERNBR DESC, OLDITEMNBR DESC, DEX_ROW_ID DESC END ELSE IF @OLDSERNBR_RS = @OLDSERNBR_RE BEGIN SELECT TOP 25  EQUIPID, SERLNMBR, ITEMNMBR, REFRENCE, OLDEQUIPID, OLDSERNBR, OLDITEMNBR, OLDREFID, LSTDTEDT, USERID, DEX_ROW_ID FROM .SVC00302 WHERE OLDSERNBR = @OLDSERNBR_RS AND OLDITEMNBR BETWEEN @OLDITEMNBR_RS AND @OLDITEMNBR_RE ORDER BY OLDSERNBR DESC, OLDITEMNBR DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  EQUIPID, SERLNMBR, ITEMNMBR, REFRENCE, OLDEQUIPID, OLDSERNBR, OLDITEMNBR, OLDREFID, LSTDTEDT, USERID, DEX_ROW_ID FROM .SVC00302 WHERE OLDSERNBR BETWEEN @OLDSERNBR_RS AND @OLDSERNBR_RE AND OLDITEMNBR BETWEEN @OLDITEMNBR_RS AND @OLDITEMNBR_RE ORDER BY OLDSERNBR DESC, OLDITEMNBR DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00302L_3] TO [DYNGRP]
GO
