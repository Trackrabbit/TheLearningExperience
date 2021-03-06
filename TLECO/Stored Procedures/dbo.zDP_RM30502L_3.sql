SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_RM30502L_3] (@GLPOSTDT_RS datetime, @GLPOSTDT_RE datetime) AS /* 14.00.0084.000 */ set nocount on IF @GLPOSTDT_RS IS NULL BEGIN SELECT TOP 25  NOTEINDX, GLPOSTDT, TRXSORCE, BCHSOURC, BACHNUMB, REPRNTNT, TRXMISNG, CHEKBKID, NUMOFTRX, BACHFREQ, BCHCOMNT, USERID, APPROVL, APPRVLDT, APRVLUSERID, CNTRLTOT, CNTRLTRX, BCHTOTAL, Workflow_Approval_Status, Workflow_Priority, Workflow_Status, CREATDDT, TIME1, DEX_ROW_ID FROM .RM30502 ORDER BY GLPOSTDT DESC, DEX_ROW_ID DESC END ELSE IF @GLPOSTDT_RS = @GLPOSTDT_RE BEGIN SELECT TOP 25  NOTEINDX, GLPOSTDT, TRXSORCE, BCHSOURC, BACHNUMB, REPRNTNT, TRXMISNG, CHEKBKID, NUMOFTRX, BACHFREQ, BCHCOMNT, USERID, APPROVL, APPRVLDT, APRVLUSERID, CNTRLTOT, CNTRLTRX, BCHTOTAL, Workflow_Approval_Status, Workflow_Priority, Workflow_Status, CREATDDT, TIME1, DEX_ROW_ID FROM .RM30502 WHERE GLPOSTDT = @GLPOSTDT_RS ORDER BY GLPOSTDT DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  NOTEINDX, GLPOSTDT, TRXSORCE, BCHSOURC, BACHNUMB, REPRNTNT, TRXMISNG, CHEKBKID, NUMOFTRX, BACHFREQ, BCHCOMNT, USERID, APPROVL, APPRVLDT, APRVLUSERID, CNTRLTOT, CNTRLTRX, BCHTOTAL, Workflow_Approval_Status, Workflow_Priority, Workflow_Status, CREATDDT, TIME1, DEX_ROW_ID FROM .RM30502 WHERE GLPOSTDT BETWEEN @GLPOSTDT_RS AND @GLPOSTDT_RE ORDER BY GLPOSTDT DESC, DEX_ROW_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_RM30502L_3] TO [DYNGRP]
GO
