SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00400SS_3] (@CUSTNMBR char(15), @CONFGREF char(21)) AS  set nocount on SELECT TOP 1  CONFGREF, DSCRIPTN, CUSTNMBR, ADRSCODE, Rev_Level, DEX_ROW_ID FROM .SVC00400 WHERE CUSTNMBR = @CUSTNMBR AND CONFGREF = @CONFGREF ORDER BY CUSTNMBR ASC, CONFGREF ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00400SS_3] TO [DYNGRP]
GO
