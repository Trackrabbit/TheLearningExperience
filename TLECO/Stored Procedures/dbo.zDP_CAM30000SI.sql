SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CAM30000SI] (@DATE1 datetime, @TIME1 datetime, @VCHRNMBR char(21), @DOCTYPE smallint, @CNTRLTYP smallint, @VENDORID char(15), @CAM_Amount_Total numeric(19,5), @CAM_Amount_Owing numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .CAM30000 (DATE1, TIME1, VCHRNMBR, DOCTYPE, CNTRLTYP, VENDORID, CAM_Amount_Total, CAM_Amount_Owing) VALUES ( @DATE1, @TIME1, @VCHRNMBR, @DOCTYPE, @CNTRLTYP, @VENDORID, @CAM_Amount_Total, @CAM_Amount_Owing) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CAM30000SI] TO [DYNGRP]
GO
