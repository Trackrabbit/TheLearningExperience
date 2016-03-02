SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP30100SS_3] (@GLPOSTDT datetime) AS  set nocount on SELECT TOP 1  TRXSORCE, BCHSOURC, BACHNUMB, BCHCOMNT, CHEKBKID, GLPOSTDT, APPROVL, APPRVLDT, APRVLUSERID, BCHTOTAL, CNTRLTOT, NUMOFTRX, CNTRLTRX, REPRNTNT, USERID, NOTEINDX, TRXMISNG, DEX_ROW_ID FROM .SOP30100 WHERE GLPOSTDT = @GLPOSTDT ORDER BY GLPOSTDT ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP30100SS_3] TO [DYNGRP]
GO
