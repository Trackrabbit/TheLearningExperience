SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP30100L_1] (@BCHSOURC_RS char(15), @BACHNUMB_RS char(15), @BCHSOURC_RE char(15), @BACHNUMB_RE char(15)) AS  set nocount on IF @BCHSOURC_RS IS NULL BEGIN SELECT TOP 25  TRXSORCE, BCHSOURC, BACHNUMB, BCHCOMNT, CHEKBKID, GLPOSTDT, APPROVL, APPRVLDT, APRVLUSERID, BCHTOTAL, CNTRLTOT, NUMOFTRX, CNTRLTRX, REPRNTNT, USERID, NOTEINDX, TRXMISNG, DEX_ROW_ID FROM .SOP30100 ORDER BY BCHSOURC DESC, BACHNUMB DESC, DEX_ROW_ID DESC END ELSE IF @BCHSOURC_RS = @BCHSOURC_RE BEGIN SELECT TOP 25  TRXSORCE, BCHSOURC, BACHNUMB, BCHCOMNT, CHEKBKID, GLPOSTDT, APPROVL, APPRVLDT, APRVLUSERID, BCHTOTAL, CNTRLTOT, NUMOFTRX, CNTRLTRX, REPRNTNT, USERID, NOTEINDX, TRXMISNG, DEX_ROW_ID FROM .SOP30100 WHERE BCHSOURC = @BCHSOURC_RS AND BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE ORDER BY BCHSOURC DESC, BACHNUMB DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  TRXSORCE, BCHSOURC, BACHNUMB, BCHCOMNT, CHEKBKID, GLPOSTDT, APPROVL, APPRVLDT, APRVLUSERID, BCHTOTAL, CNTRLTOT, NUMOFTRX, CNTRLTRX, REPRNTNT, USERID, NOTEINDX, TRXMISNG, DEX_ROW_ID FROM .SOP30100 WHERE BCHSOURC BETWEEN @BCHSOURC_RS AND @BCHSOURC_RE AND BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE ORDER BY BCHSOURC DESC, BACHNUMB DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP30100L_1] TO [DYNGRP]
GO
