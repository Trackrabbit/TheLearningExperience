SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_PM80100UN_6] (@BS int, @BACHNUMB char(15), @BCHSOURC char(15), @CREATDDT datetime, @TIME1 datetime, @BACHNUMB_RS char(15), @BCHSOURC_RS char(15), @CREATDDT_RS datetime, @TIME1_RS datetime, @BACHNUMB_RE char(15), @BCHSOURC_RE char(15), @CREATDDT_RE datetime, @TIME1_RE datetime) AS /* 14.00.0084.000 */ set nocount on IF @BACHNUMB_RS IS NULL BEGIN SELECT TOP 25  TRXSORCE, POSTEDDT, GLPOSTDT, BCHSOURC, BACHNUMB, CHEKBKID, NUMOFTRX, RECPSTGS, MSCBDINC, BACHFREQ, NOFPSTGS, BCHCOMNT, USERID, NOTEINDX, RCDSRMVD, BCHTOTAL, CNTRLTRX, CNTRLTOT, APPROVL, APPRVLDT, APRVLUSERID, Workflow_Approval_Status, Workflow_Priority, Workflow_Status, CREATDDT, TIME1, DEX_ROW_ID FROM .PM80100 WHERE ( BACHNUMB = @BACHNUMB AND BCHSOURC = @BCHSOURC AND CREATDDT = @CREATDDT AND TIME1 > @TIME1 OR BACHNUMB = @BACHNUMB AND BCHSOURC = @BCHSOURC AND CREATDDT > @CREATDDT OR BACHNUMB = @BACHNUMB AND BCHSOURC > @BCHSOURC OR BACHNUMB > @BACHNUMB ) ORDER BY BACHNUMB ASC, BCHSOURC ASC, CREATDDT ASC, TIME1 ASC, DEX_ROW_ID ASC END ELSE IF @BACHNUMB_RS = @BACHNUMB_RE BEGIN SELECT TOP 25  TRXSORCE, POSTEDDT, GLPOSTDT, BCHSOURC, BACHNUMB, CHEKBKID, NUMOFTRX, RECPSTGS, MSCBDINC, BACHFREQ, NOFPSTGS, BCHCOMNT, USERID, NOTEINDX, RCDSRMVD, BCHTOTAL, CNTRLTRX, CNTRLTOT, APPROVL, APPRVLDT, APRVLUSERID, Workflow_Approval_Status, Workflow_Priority, Workflow_Status, CREATDDT, TIME1, DEX_ROW_ID FROM .PM80100 WHERE BACHNUMB = @BACHNUMB_RS AND BCHSOURC BETWEEN @BCHSOURC_RS AND @BCHSOURC_RE AND CREATDDT BETWEEN @CREATDDT_RS AND @CREATDDT_RE AND TIME1 BETWEEN @TIME1_RS AND @TIME1_RE AND ( BACHNUMB = @BACHNUMB AND BCHSOURC = @BCHSOURC AND CREATDDT = @CREATDDT AND TIME1 > @TIME1 OR BACHNUMB = @BACHNUMB AND BCHSOURC = @BCHSOURC AND CREATDDT > @CREATDDT OR BACHNUMB = @BACHNUMB AND BCHSOURC > @BCHSOURC OR BACHNUMB > @BACHNUMB ) ORDER BY BACHNUMB ASC, BCHSOURC ASC, CREATDDT ASC, TIME1 ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  TRXSORCE, POSTEDDT, GLPOSTDT, BCHSOURC, BACHNUMB, CHEKBKID, NUMOFTRX, RECPSTGS, MSCBDINC, BACHFREQ, NOFPSTGS, BCHCOMNT, USERID, NOTEINDX, RCDSRMVD, BCHTOTAL, CNTRLTRX, CNTRLTOT, APPROVL, APPRVLDT, APRVLUSERID, Workflow_Approval_Status, Workflow_Priority, Workflow_Status, CREATDDT, TIME1, DEX_ROW_ID FROM .PM80100 WHERE BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE AND BCHSOURC BETWEEN @BCHSOURC_RS AND @BCHSOURC_RE AND CREATDDT BETWEEN @CREATDDT_RS AND @CREATDDT_RE AND TIME1 BETWEEN @TIME1_RS AND @TIME1_RE AND ( BACHNUMB = @BACHNUMB AND BCHSOURC = @BCHSOURC AND CREATDDT = @CREATDDT AND TIME1 > @TIME1 OR BACHNUMB = @BACHNUMB AND BCHSOURC = @BCHSOURC AND CREATDDT > @CREATDDT OR BACHNUMB = @BACHNUMB AND BCHSOURC > @BCHSOURC OR BACHNUMB > @BACHNUMB ) ORDER BY BACHNUMB ASC, BCHSOURC ASC, CREATDDT ASC, TIME1 ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_PM80100UN_6] TO [DYNGRP]
GO