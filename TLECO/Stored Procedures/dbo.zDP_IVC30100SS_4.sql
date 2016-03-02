SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IVC30100SS_4] (@BACHNUMB char(15)) AS  set nocount on SELECT TOP 1  TRXSORCE, BCHSOURC, BACHNUMB, BCHCOMNT, BACHFREQ, NUMOFTRX, CHEKBKID, TRXMISNG, REPRNTNT, GLPOSTDT, USERID, NOTEINDX, APPROVL, APPRVLDT, APRVLUSERID, BCHTOTAL, CNTRLTOT, CNTRLTRX, DEX_ROW_ID FROM .IVC30100 WHERE BACHNUMB = @BACHNUMB ORDER BY BACHNUMB ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IVC30100SS_4] TO [DYNGRP]
GO
