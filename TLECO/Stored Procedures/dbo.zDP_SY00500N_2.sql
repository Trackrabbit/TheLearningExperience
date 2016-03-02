SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_SY00500N_2] (@BS int, @BACHNUMB char(15), @DEX_ROW_ID int, @BACHNUMB_RS char(15), @BACHNUMB_RE char(15)) AS /* 14.00.0084.000 */ set nocount on IF @BACHNUMB_RS IS NULL BEGIN SELECT TOP 25  GLPOSTDT, BCHSOURC, BACHNUMB, SERIES, MKDTOPST, NUMOFTRX, RECPSTGS, DELBACH, MSCBDINC, BACHFREQ, RCLPSTDT, NOFPSTGS, BCHCOMNT, BRKDNALL, CHKSPRTD, RVRSBACH, USERID, CHEKBKID, BCHTOTAL, BCHEMSG1, BCHEMSG2, BACHDATE, BCHSTRG1, BCHSTRG2, POSTTOGL, MODIFDT, CREATDDT, NOTEINDX, CURNCYID, BCHSTTUS, CNTRLTRX, CNTRLTOT, PETRXCNT, APPROVL, APPRVLDT, APRVLUSERID, ORIGIN, ERRSTATE, GLBCHVAL, Computer_Check_Doc_Date, Sort_Checks_By, SEPRMTNC, REPRNTED, CHKFRMTS, TRXSORCE, PmtMethod, EFTFileFormat, Workflow_Approval_Status, Workflow_Priority, Workflow_Status, TIME1, ClearRecAmts, PurchasingPrepaymentBch, CARDNAME, DEX_ROW_ID FROM .SY00500 WHERE ( BACHNUMB = @BACHNUMB AND DEX_ROW_ID > @DEX_ROW_ID OR BACHNUMB > @BACHNUMB ) ORDER BY BACHNUMB ASC, DEX_ROW_ID ASC END ELSE IF @BACHNUMB_RS = @BACHNUMB_RE BEGIN SELECT TOP 25  GLPOSTDT, BCHSOURC, BACHNUMB, SERIES, MKDTOPST, NUMOFTRX, RECPSTGS, DELBACH, MSCBDINC, BACHFREQ, RCLPSTDT, NOFPSTGS, BCHCOMNT, BRKDNALL, CHKSPRTD, RVRSBACH, USERID, CHEKBKID, BCHTOTAL, BCHEMSG1, BCHEMSG2, BACHDATE, BCHSTRG1, BCHSTRG2, POSTTOGL, MODIFDT, CREATDDT, NOTEINDX, CURNCYID, BCHSTTUS, CNTRLTRX, CNTRLTOT, PETRXCNT, APPROVL, APPRVLDT, APRVLUSERID, ORIGIN, ERRSTATE, GLBCHVAL, Computer_Check_Doc_Date, Sort_Checks_By, SEPRMTNC, REPRNTED, CHKFRMTS, TRXSORCE, PmtMethod, EFTFileFormat, Workflow_Approval_Status, Workflow_Priority, Workflow_Status, TIME1, ClearRecAmts, PurchasingPrepaymentBch, CARDNAME, DEX_ROW_ID FROM .SY00500 WHERE BACHNUMB = @BACHNUMB_RS AND ( BACHNUMB = @BACHNUMB AND DEX_ROW_ID > @DEX_ROW_ID OR BACHNUMB > @BACHNUMB ) ORDER BY BACHNUMB ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  GLPOSTDT, BCHSOURC, BACHNUMB, SERIES, MKDTOPST, NUMOFTRX, RECPSTGS, DELBACH, MSCBDINC, BACHFREQ, RCLPSTDT, NOFPSTGS, BCHCOMNT, BRKDNALL, CHKSPRTD, RVRSBACH, USERID, CHEKBKID, BCHTOTAL, BCHEMSG1, BCHEMSG2, BACHDATE, BCHSTRG1, BCHSTRG2, POSTTOGL, MODIFDT, CREATDDT, NOTEINDX, CURNCYID, BCHSTTUS, CNTRLTRX, CNTRLTOT, PETRXCNT, APPROVL, APPRVLDT, APRVLUSERID, ORIGIN, ERRSTATE, GLBCHVAL, Computer_Check_Doc_Date, Sort_Checks_By, SEPRMTNC, REPRNTED, CHKFRMTS, TRXSORCE, PmtMethod, EFTFileFormat, Workflow_Approval_Status, Workflow_Priority, Workflow_Status, TIME1, ClearRecAmts, PurchasingPrepaymentBch, CARDNAME, DEX_ROW_ID FROM .SY00500 WHERE BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE AND ( BACHNUMB = @BACHNUMB AND DEX_ROW_ID > @DEX_ROW_ID OR BACHNUMB > @BACHNUMB ) ORDER BY BACHNUMB ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_SY00500N_2] TO [DYNGRP]
GO
