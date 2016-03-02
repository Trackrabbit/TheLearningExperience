SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_PM80100UN_1] (@BS int, @TRXSORCE char(13), @BACHNUMB char(15), @TRXSORCE_RS char(13), @BACHNUMB_RS char(15), @TRXSORCE_RE char(13), @BACHNUMB_RE char(15)) AS /* 14.00.0084.000 */ set nocount on IF @TRXSORCE_RS IS NULL BEGIN SELECT TOP 25  TRXSORCE, POSTEDDT, GLPOSTDT, BCHSOURC, BACHNUMB, CHEKBKID, NUMOFTRX, RECPSTGS, MSCBDINC, BACHFREQ, NOFPSTGS, BCHCOMNT, USERID, NOTEINDX, RCDSRMVD, BCHTOTAL, CNTRLTRX, CNTRLTOT, APPROVL, APPRVLDT, APRVLUSERID, Workflow_Approval_Status, Workflow_Priority, Workflow_Status, CREATDDT, TIME1, DEX_ROW_ID FROM .PM80100 WHERE ( TRXSORCE = @TRXSORCE AND BACHNUMB > @BACHNUMB OR TRXSORCE > @TRXSORCE ) ORDER BY TRXSORCE ASC, BACHNUMB ASC, DEX_ROW_ID ASC END ELSE IF @TRXSORCE_RS = @TRXSORCE_RE BEGIN SELECT TOP 25  TRXSORCE, POSTEDDT, GLPOSTDT, BCHSOURC, BACHNUMB, CHEKBKID, NUMOFTRX, RECPSTGS, MSCBDINC, BACHFREQ, NOFPSTGS, BCHCOMNT, USERID, NOTEINDX, RCDSRMVD, BCHTOTAL, CNTRLTRX, CNTRLTOT, APPROVL, APPRVLDT, APRVLUSERID, Workflow_Approval_Status, Workflow_Priority, Workflow_Status, CREATDDT, TIME1, DEX_ROW_ID FROM .PM80100 WHERE TRXSORCE = @TRXSORCE_RS AND BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE AND ( TRXSORCE = @TRXSORCE AND BACHNUMB > @BACHNUMB OR TRXSORCE > @TRXSORCE ) ORDER BY TRXSORCE ASC, BACHNUMB ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  TRXSORCE, POSTEDDT, GLPOSTDT, BCHSOURC, BACHNUMB, CHEKBKID, NUMOFTRX, RECPSTGS, MSCBDINC, BACHFREQ, NOFPSTGS, BCHCOMNT, USERID, NOTEINDX, RCDSRMVD, BCHTOTAL, CNTRLTRX, CNTRLTOT, APPROVL, APPRVLDT, APRVLUSERID, Workflow_Approval_Status, Workflow_Priority, Workflow_Status, CREATDDT, TIME1, DEX_ROW_ID FROM .PM80100 WHERE TRXSORCE BETWEEN @TRXSORCE_RS AND @TRXSORCE_RE AND BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE AND ( TRXSORCE = @TRXSORCE AND BACHNUMB > @BACHNUMB OR TRXSORCE > @TRXSORCE ) ORDER BY TRXSORCE ASC, BACHNUMB ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_PM80100UN_1] TO [DYNGRP]
GO