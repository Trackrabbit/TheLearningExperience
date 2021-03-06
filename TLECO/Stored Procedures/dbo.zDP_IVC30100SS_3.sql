SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IVC30100SS_3] (@GLPOSTDT datetime) AS  set nocount on SELECT TOP 1  TRXSORCE, BCHSOURC, BACHNUMB, BCHCOMNT, BACHFREQ, NUMOFTRX, CHEKBKID, TRXMISNG, REPRNTNT, GLPOSTDT, USERID, NOTEINDX, APPROVL, APPRVLDT, APRVLUSERID, BCHTOTAL, CNTRLTOT, CNTRLTRX, DEX_ROW_ID FROM .IVC30100 WHERE GLPOSTDT = @GLPOSTDT ORDER BY GLPOSTDT ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IVC30100SS_3] TO [DYNGRP]
GO
