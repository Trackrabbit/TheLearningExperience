SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7180116SS_1] (@VCHRNMBR char(21), @CNTRLTYP smallint, @APTVCHNM char(21), @SPCLDIST smallint, @DSTSQNUM int, @SQNCLINE numeric(19,5)) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  VCHRNMBR, DOCTYPE, CNTRLTYP, APTVCHNM, SPCLDIST, DSTSQNUM, SQNCLINE, BSSI_Deferrable, BSSI_DeferralStartDate, BSSI_Recog_TemplateID, BSSI_Recog_Acct_Index, BSSI_ScheduleBasedOnDate, BSSI_Recog_Frequency, BSSI_DeferralEndDate, DEX_ROW_ID FROM .B7180116 WHERE VCHRNMBR = @VCHRNMBR AND CNTRLTYP = @CNTRLTYP AND APTVCHNM = @APTVCHNM AND SPCLDIST = @SPCLDIST AND DSTSQNUM = @DSTSQNUM AND SQNCLINE = @SQNCLINE ORDER BY VCHRNMBR ASC, CNTRLTYP ASC, APTVCHNM ASC, SPCLDIST ASC, DSTSQNUM ASC, SQNCLINE ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7180116SS_1] TO [DYNGRP]
GO
