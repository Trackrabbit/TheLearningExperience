SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AF40100SS_2] (@REPORTID smallint) AS  set nocount on SELECT TOP 1  RPRTNAME, REPORTID, RPRTTYPE, CLCFRPRT, LSTMODIF, NOTEINDX, DEX_ROW_ID FROM .AF40100 WHERE REPORTID = @REPORTID ORDER BY REPORTID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AF40100SS_2] TO [DYNGRP]
GO
