SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_PM80100N_2] (@BS int, @BCHSOURC char(15), @BACHNUMB char(15), @DEX_ROW_ID int, @BCHSOURC_RS char(15), @BACHNUMB_RS char(15), @BCHSOURC_RE char(15), @BACHNUMB_RE char(15)) AS /* 14.00.0084.000 */ set nocount on IF @BCHSOURC_RS IS NULL BEGIN SELECT TOP 25  TRXSORCE, POSTEDDT, GLPOSTDT, BCHSOURC, BACHNUMB, CHEKBKID, NUMOFTRX, RECPSTGS, MSCBDINC, BACHFREQ, NOFPSTGS, BCHCOMNT, USERID, NOTEINDX, RCDSRMVD, BCHTOTAL, CNTRLTRX, CNTRLTOT, APPROVL, APPRVLDT, APRVLUSERID, Workflow_Approval_Status, Workflow_Priority, Workflow_Status, CREATDDT, TIME1, DEX_ROW_ID FROM .PM80100 WHERE ( BCHSOURC = @BCHSOURC AND BACHNUMB = @BACHNUMB AND DEX_ROW_ID > @DEX_ROW_ID OR BCHSOURC = @BCHSOURC AND BACHNUMB > @BACHNUMB OR BCHSOURC > @BCHSOURC ) ORDER BY BCHSOURC ASC, BACHNUMB ASC, DEX_ROW_ID ASC END ELSE IF @BCHSOURC_RS = @BCHSOURC_RE BEGIN SELECT TOP 25  TRXSORCE, POSTEDDT, GLPOSTDT, BCHSOURC, BACHNUMB, CHEKBKID, NUMOFTRX, RECPSTGS, MSCBDINC, BACHFREQ, NOFPSTGS, BCHCOMNT, USERID, NOTEINDX, RCDSRMVD, BCHTOTAL, CNTRLTRX, CNTRLTOT, APPROVL, APPRVLDT, APRVLUSERID, Workflow_Approval_Status, Workflow_Priority, Workflow_Status, CREATDDT, TIME1, DEX_ROW_ID FROM .PM80100 WHERE BCHSOURC = @BCHSOURC_RS AND BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE AND ( BCHSOURC = @BCHSOURC AND BACHNUMB = @BACHNUMB AND DEX_ROW_ID > @DEX_ROW_ID OR BCHSOURC = @BCHSOURC AND BACHNUMB > @BACHNUMB OR BCHSOURC > @BCHSOURC ) ORDER BY BCHSOURC ASC, BACHNUMB ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  TRXSORCE, POSTEDDT, GLPOSTDT, BCHSOURC, BACHNUMB, CHEKBKID, NUMOFTRX, RECPSTGS, MSCBDINC, BACHFREQ, NOFPSTGS, BCHCOMNT, USERID, NOTEINDX, RCDSRMVD, BCHTOTAL, CNTRLTRX, CNTRLTOT, APPROVL, APPRVLDT, APRVLUSERID, Workflow_Approval_Status, Workflow_Priority, Workflow_Status, CREATDDT, TIME1, DEX_ROW_ID FROM .PM80100 WHERE BCHSOURC BETWEEN @BCHSOURC_RS AND @BCHSOURC_RE AND BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE AND ( BCHSOURC = @BCHSOURC AND BACHNUMB = @BACHNUMB AND DEX_ROW_ID > @DEX_ROW_ID OR BCHSOURC = @BCHSOURC AND BACHNUMB > @BACHNUMB OR BCHSOURC > @BCHSOURC ) ORDER BY BCHSOURC ASC, BACHNUMB ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_PM80100N_2] TO [DYNGRP]
GO
