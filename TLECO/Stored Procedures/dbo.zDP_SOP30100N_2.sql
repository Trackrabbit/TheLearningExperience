SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP30100N_2] (@BS int, @TRXSORCE char(13), @DEX_ROW_ID int, @TRXSORCE_RS char(13), @TRXSORCE_RE char(13)) AS  set nocount on IF @TRXSORCE_RS IS NULL BEGIN SELECT TOP 25  TRXSORCE, BCHSOURC, BACHNUMB, BCHCOMNT, CHEKBKID, GLPOSTDT, APPROVL, APPRVLDT, APRVLUSERID, BCHTOTAL, CNTRLTOT, NUMOFTRX, CNTRLTRX, REPRNTNT, USERID, NOTEINDX, TRXMISNG, DEX_ROW_ID FROM .SOP30100 WHERE ( TRXSORCE = @TRXSORCE AND DEX_ROW_ID > @DEX_ROW_ID OR TRXSORCE > @TRXSORCE ) ORDER BY TRXSORCE ASC, DEX_ROW_ID ASC END ELSE IF @TRXSORCE_RS = @TRXSORCE_RE BEGIN SELECT TOP 25  TRXSORCE, BCHSOURC, BACHNUMB, BCHCOMNT, CHEKBKID, GLPOSTDT, APPROVL, APPRVLDT, APRVLUSERID, BCHTOTAL, CNTRLTOT, NUMOFTRX, CNTRLTRX, REPRNTNT, USERID, NOTEINDX, TRXMISNG, DEX_ROW_ID FROM .SOP30100 WHERE TRXSORCE = @TRXSORCE_RS AND ( TRXSORCE = @TRXSORCE AND DEX_ROW_ID > @DEX_ROW_ID OR TRXSORCE > @TRXSORCE ) ORDER BY TRXSORCE ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  TRXSORCE, BCHSOURC, BACHNUMB, BCHCOMNT, CHEKBKID, GLPOSTDT, APPROVL, APPRVLDT, APRVLUSERID, BCHTOTAL, CNTRLTOT, NUMOFTRX, CNTRLTRX, REPRNTNT, USERID, NOTEINDX, TRXMISNG, DEX_ROW_ID FROM .SOP30100 WHERE TRXSORCE BETWEEN @TRXSORCE_RS AND @TRXSORCE_RE AND ( TRXSORCE = @TRXSORCE AND DEX_ROW_ID > @DEX_ROW_ID OR TRXSORCE > @TRXSORCE ) ORDER BY TRXSORCE ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP30100N_2] TO [DYNGRP]
GO
