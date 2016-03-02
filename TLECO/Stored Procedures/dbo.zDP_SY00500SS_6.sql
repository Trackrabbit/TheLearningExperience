SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_SY00500SS_6] (@SERIES smallint, @BACHFREQ smallint) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  GLPOSTDT, BCHSOURC, BACHNUMB, SERIES, MKDTOPST, NUMOFTRX, RECPSTGS, DELBACH, MSCBDINC, BACHFREQ, RCLPSTDT, NOFPSTGS, BCHCOMNT, BRKDNALL, CHKSPRTD, RVRSBACH, USERID, CHEKBKID, BCHTOTAL, BCHEMSG1, BCHEMSG2, BACHDATE, BCHSTRG1, BCHSTRG2, POSTTOGL, MODIFDT, CREATDDT, NOTEINDX, CURNCYID, BCHSTTUS, CNTRLTRX, CNTRLTOT, PETRXCNT, APPROVL, APPRVLDT, APRVLUSERID, ORIGIN, ERRSTATE, GLBCHVAL, Computer_Check_Doc_Date, Sort_Checks_By, SEPRMTNC, REPRNTED, CHKFRMTS, TRXSORCE, PmtMethod, EFTFileFormat, Workflow_Approval_Status, Workflow_Priority, Workflow_Status, TIME1, ClearRecAmts, PurchasingPrepaymentBch, CARDNAME, DEX_ROW_ID FROM .SY00500 WHERE SERIES = @SERIES AND BACHFREQ = @BACHFREQ ORDER BY SERIES ASC, BACHFREQ ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_SY00500SS_6] TO [DYNGRP]
GO
