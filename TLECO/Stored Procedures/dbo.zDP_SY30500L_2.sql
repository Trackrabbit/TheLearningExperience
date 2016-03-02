SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_SY30500L_2] (@TRXSORCE_RS char(13), @BACHNUMB_RS char(15), @TRXSORCE_RE char(13), @BACHNUMB_RE char(15)) AS /* 14.00.0084.000 */ set nocount on IF @TRXSORCE_RS IS NULL BEGIN SELECT TOP 25  BCHSOURC, BACHNUMB, CREATDDT, TIME1, GLPOSTDT, SERIES, NUMOFTRX, RCTRXSEQ, BCHCOMNT, RVRSBACH, USERID, CHEKBKID, BCHTOTAL, BACHDATE, MODIFDT, CURNCYID, CNTRLTRX, CNTRLTOT, APPROVL, APPRVLDT, APRVLUSERID, ORIGIN, TRXSORCE, Workflow_Status, CARDNAME, DEX_ROW_ID FROM .SY30500 ORDER BY TRXSORCE DESC, BACHNUMB DESC, DEX_ROW_ID DESC END ELSE IF @TRXSORCE_RS = @TRXSORCE_RE BEGIN SELECT TOP 25  BCHSOURC, BACHNUMB, CREATDDT, TIME1, GLPOSTDT, SERIES, NUMOFTRX, RCTRXSEQ, BCHCOMNT, RVRSBACH, USERID, CHEKBKID, BCHTOTAL, BACHDATE, MODIFDT, CURNCYID, CNTRLTRX, CNTRLTOT, APPROVL, APPRVLDT, APRVLUSERID, ORIGIN, TRXSORCE, Workflow_Status, CARDNAME, DEX_ROW_ID FROM .SY30500 WHERE TRXSORCE = @TRXSORCE_RS AND BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE ORDER BY TRXSORCE DESC, BACHNUMB DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  BCHSOURC, BACHNUMB, CREATDDT, TIME1, GLPOSTDT, SERIES, NUMOFTRX, RCTRXSEQ, BCHCOMNT, RVRSBACH, USERID, CHEKBKID, BCHTOTAL, BACHDATE, MODIFDT, CURNCYID, CNTRLTRX, CNTRLTOT, APPROVL, APPRVLDT, APRVLUSERID, ORIGIN, TRXSORCE, Workflow_Status, CARDNAME, DEX_ROW_ID FROM .SY30500 WHERE TRXSORCE BETWEEN @TRXSORCE_RS AND @TRXSORCE_RE AND BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE ORDER BY TRXSORCE DESC, BACHNUMB DESC, DEX_ROW_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_SY30500L_2] TO [DYNGRP]
GO
