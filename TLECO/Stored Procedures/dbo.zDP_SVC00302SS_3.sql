SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00302SS_3] (@OLDSERNBR char(21), @OLDITEMNBR char(31)) AS  set nocount on SELECT TOP 1  EQUIPID, SERLNMBR, ITEMNMBR, REFRENCE, OLDEQUIPID, OLDSERNBR, OLDITEMNBR, OLDREFID, LSTDTEDT, USERID, DEX_ROW_ID FROM .SVC00302 WHERE OLDSERNBR = @OLDSERNBR AND OLDITEMNBR = @OLDITEMNBR ORDER BY OLDSERNBR ASC, OLDITEMNBR ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00302SS_3] TO [DYNGRP]
GO
