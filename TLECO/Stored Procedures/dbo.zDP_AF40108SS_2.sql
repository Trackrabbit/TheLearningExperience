SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AF40108SS_2] (@REPORTID smallint, @MBRWNUM smallint, @TOTRWNUM smallint) AS  set nocount on SELECT TOP 1  REPORTID, TOTRWNUM, MBRWNUM, DEX_ROW_ID FROM .AF40108 WHERE REPORTID = @REPORTID AND MBRWNUM = @MBRWNUM AND TOTRWNUM = @TOTRWNUM ORDER BY REPORTID ASC, MBRWNUM ASC, TOTRWNUM ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AF40108SS_2] TO [DYNGRP]
GO
