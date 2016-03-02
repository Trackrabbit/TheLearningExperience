SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00302UN_1] (@BS int, @EQUIPID int, @EQUIPID_RS int, @EQUIPID_RE int) AS  set nocount on IF @EQUIPID_RS IS NULL BEGIN SELECT TOP 25  EQUIPID, SERLNMBR, ITEMNMBR, REFRENCE, OLDEQUIPID, OLDSERNBR, OLDITEMNBR, OLDREFID, LSTDTEDT, USERID, DEX_ROW_ID FROM .SVC00302 WHERE ( EQUIPID > @EQUIPID ) ORDER BY EQUIPID ASC, DEX_ROW_ID ASC END ELSE IF @EQUIPID_RS = @EQUIPID_RE BEGIN SELECT TOP 25  EQUIPID, SERLNMBR, ITEMNMBR, REFRENCE, OLDEQUIPID, OLDSERNBR, OLDITEMNBR, OLDREFID, LSTDTEDT, USERID, DEX_ROW_ID FROM .SVC00302 WHERE EQUIPID = @EQUIPID_RS AND ( EQUIPID > @EQUIPID ) ORDER BY EQUIPID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  EQUIPID, SERLNMBR, ITEMNMBR, REFRENCE, OLDEQUIPID, OLDSERNBR, OLDITEMNBR, OLDREFID, LSTDTEDT, USERID, DEX_ROW_ID FROM .SVC00302 WHERE EQUIPID BETWEEN @EQUIPID_RS AND @EQUIPID_RE AND ( EQUIPID > @EQUIPID ) ORDER BY EQUIPID ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00302UN_1] TO [DYNGRP]
GO
