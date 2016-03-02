SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CAM10000SS_2] (@DATE1 datetime, @TIME1 datetime, @VENDORID char(15), @VCHRNMBR char(21)) AS  set nocount on SELECT TOP 1  DATE1, TIME1, VCHRNMBR, DOCTYPE, CNTRLTYP, VENDORID, CAM_Amount_Total, CAM_Amount_Owing, DEX_ROW_ID FROM .CAM10000 WHERE DATE1 = @DATE1 AND TIME1 = @TIME1 AND VENDORID = @VENDORID AND VCHRNMBR = @VCHRNMBR ORDER BY DATE1 ASC, TIME1 ASC, VENDORID ASC, VCHRNMBR ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CAM10000SS_2] TO [DYNGRP]
GO