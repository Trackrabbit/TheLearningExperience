SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_SY00500UN_4] (@BS int, @SERIES smallint, @BCHSOURC char(15), @SERIES_RS smallint, @BCHSOURC_RS char(15), @SERIES_RE smallint, @BCHSOURC_RE char(15)) AS /* 14.00.0084.000 */ set nocount on IF @SERIES_RS IS NULL BEGIN SELECT TOP 25  GLPOSTDT, BCHSOURC, BACHNUMB, SERIES, MKDTOPST, NUMOFTRX, RECPSTGS, DELBACH, MSCBDINC, BACHFREQ, RCLPSTDT, NOFPSTGS, BCHCOMNT, BRKDNALL, CHKSPRTD, RVRSBACH, USERID, CHEKBKID, BCHTOTAL, BCHEMSG1, BCHEMSG2, BACHDATE, BCHSTRG1, BCHSTRG2, POSTTOGL, MODIFDT, CREATDDT, NOTEINDX, CURNCYID, BCHSTTUS, CNTRLTRX, CNTRLTOT, PETRXCNT, APPROVL, APPRVLDT, APRVLUSERID, ORIGIN, ERRSTATE, GLBCHVAL, Computer_Check_Doc_Date, Sort_Checks_By, SEPRMTNC, REPRNTED, CHKFRMTS, TRXSORCE, PmtMethod, EFTFileFormat, Workflow_Approval_Status, Workflow_Priority, Workflow_Status, TIME1, ClearRecAmts, PurchasingPrepaymentBch, CARDNAME, DEX_ROW_ID FROM .SY00500 WHERE ( SERIES = @SERIES AND BCHSOURC > @BCHSOURC OR SERIES > @SERIES ) ORDER BY SERIES ASC, BCHSOURC ASC, DEX_ROW_ID ASC END ELSE IF @SERIES_RS = @SERIES_RE BEGIN SELECT TOP 25  GLPOSTDT, BCHSOURC, BACHNUMB, SERIES, MKDTOPST, NUMOFTRX, RECPSTGS, DELBACH, MSCBDINC, BACHFREQ, RCLPSTDT, NOFPSTGS, BCHCOMNT, BRKDNALL, CHKSPRTD, RVRSBACH, USERID, CHEKBKID, BCHTOTAL, BCHEMSG1, BCHEMSG2, BACHDATE, BCHSTRG1, BCHSTRG2, POSTTOGL, MODIFDT, CREATDDT, NOTEINDX, CURNCYID, BCHSTTUS, CNTRLTRX, CNTRLTOT, PETRXCNT, APPROVL, APPRVLDT, APRVLUSERID, ORIGIN, ERRSTATE, GLBCHVAL, Computer_Check_Doc_Date, Sort_Checks_By, SEPRMTNC, REPRNTED, CHKFRMTS, TRXSORCE, PmtMethod, EFTFileFormat, Workflow_Approval_Status, Workflow_Priority, Workflow_Status, TIME1, ClearRecAmts, PurchasingPrepaymentBch, CARDNAME, DEX_ROW_ID FROM .SY00500 WHERE SERIES = @SERIES_RS AND BCHSOURC BETWEEN @BCHSOURC_RS AND @BCHSOURC_RE AND ( SERIES = @SERIES AND BCHSOURC > @BCHSOURC OR SERIES > @SERIES ) ORDER BY SERIES ASC, BCHSOURC ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  GLPOSTDT, BCHSOURC, BACHNUMB, SERIES, MKDTOPST, NUMOFTRX, RECPSTGS, DELBACH, MSCBDINC, BACHFREQ, RCLPSTDT, NOFPSTGS, BCHCOMNT, BRKDNALL, CHKSPRTD, RVRSBACH, USERID, CHEKBKID, BCHTOTAL, BCHEMSG1, BCHEMSG2, BACHDATE, BCHSTRG1, BCHSTRG2, POSTTOGL, MODIFDT, CREATDDT, NOTEINDX, CURNCYID, BCHSTTUS, CNTRLTRX, CNTRLTOT, PETRXCNT, APPROVL, APPRVLDT, APRVLUSERID, ORIGIN, ERRSTATE, GLBCHVAL, Computer_Check_Doc_Date, Sort_Checks_By, SEPRMTNC, REPRNTED, CHKFRMTS, TRXSORCE, PmtMethod, EFTFileFormat, Workflow_Approval_Status, Workflow_Priority, Workflow_Status, TIME1, ClearRecAmts, PurchasingPrepaymentBch, CARDNAME, DEX_ROW_ID FROM .SY00500 WHERE SERIES BETWEEN @SERIES_RS AND @SERIES_RE AND BCHSOURC BETWEEN @BCHSOURC_RS AND @BCHSOURC_RE AND ( SERIES = @SERIES AND BCHSOURC > @BCHSOURC OR SERIES > @SERIES ) ORDER BY SERIES ASC, BCHSOURC ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_SY00500UN_4] TO [DYNGRP]
GO
