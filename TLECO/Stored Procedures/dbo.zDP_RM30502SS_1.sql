SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_RM30502SS_1] (@BCHSOURC char(15), @BACHNUMB char(15)) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  NOTEINDX, GLPOSTDT, TRXSORCE, BCHSOURC, BACHNUMB, REPRNTNT, TRXMISNG, CHEKBKID, NUMOFTRX, BACHFREQ, BCHCOMNT, USERID, APPROVL, APPRVLDT, APRVLUSERID, CNTRLTOT, CNTRLTRX, BCHTOTAL, Workflow_Approval_Status, Workflow_Priority, Workflow_Status, CREATDDT, TIME1, DEX_ROW_ID FROM .RM30502 WHERE BCHSOURC = @BCHSOURC AND BACHNUMB = @BACHNUMB ORDER BY BCHSOURC ASC, BACHNUMB ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_RM30502SS_1] TO [DYNGRP]
GO
