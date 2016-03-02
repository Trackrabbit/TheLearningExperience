SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_RM30502N_2] (@BS int, @TRXSORCE char(13), @TRXSORCE_RS char(13), @TRXSORCE_RE char(13)) AS /* 14.00.0084.000 */ set nocount on IF @TRXSORCE_RS IS NULL BEGIN SELECT TOP 25  NOTEINDX, GLPOSTDT, TRXSORCE, BCHSOURC, BACHNUMB, REPRNTNT, TRXMISNG, CHEKBKID, NUMOFTRX, BACHFREQ, BCHCOMNT, USERID, APPROVL, APPRVLDT, APRVLUSERID, CNTRLTOT, CNTRLTRX, BCHTOTAL, Workflow_Approval_Status, Workflow_Priority, Workflow_Status, CREATDDT, TIME1, DEX_ROW_ID FROM .RM30502 WHERE ( TRXSORCE > @TRXSORCE ) ORDER BY TRXSORCE ASC END ELSE IF @TRXSORCE_RS = @TRXSORCE_RE BEGIN SELECT TOP 25  NOTEINDX, GLPOSTDT, TRXSORCE, BCHSOURC, BACHNUMB, REPRNTNT, TRXMISNG, CHEKBKID, NUMOFTRX, BACHFREQ, BCHCOMNT, USERID, APPROVL, APPRVLDT, APRVLUSERID, CNTRLTOT, CNTRLTRX, BCHTOTAL, Workflow_Approval_Status, Workflow_Priority, Workflow_Status, CREATDDT, TIME1, DEX_ROW_ID FROM .RM30502 WHERE TRXSORCE = @TRXSORCE_RS AND ( TRXSORCE > @TRXSORCE ) ORDER BY TRXSORCE ASC END ELSE BEGIN SELECT TOP 25  NOTEINDX, GLPOSTDT, TRXSORCE, BCHSOURC, BACHNUMB, REPRNTNT, TRXMISNG, CHEKBKID, NUMOFTRX, BACHFREQ, BCHCOMNT, USERID, APPROVL, APPRVLDT, APRVLUSERID, CNTRLTOT, CNTRLTRX, BCHTOTAL, Workflow_Approval_Status, Workflow_Priority, Workflow_Status, CREATDDT, TIME1, DEX_ROW_ID FROM .RM30502 WHERE TRXSORCE BETWEEN @TRXSORCE_RS AND @TRXSORCE_RE AND ( TRXSORCE > @TRXSORCE ) ORDER BY TRXSORCE ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_RM30502N_2] TO [DYNGRP]
GO
