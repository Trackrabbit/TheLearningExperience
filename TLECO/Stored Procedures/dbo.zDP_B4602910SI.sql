SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602910SI] (@BSSI_Ground_Lease_Number char(25), @LNITMSEQ int, @BSSI_Period smallint, @BSSI_Period_Begin datetime, @BSSI_Period_End datetime, @BSSI_Renewal_Type smallint, @BSSI_Lead_Time smallint, @BSSI_Notice_Deadline datetime, @BSSI_Actual_Notice_Date datetime, @BSSI_Sent_Notice tinyint, @BSSI_Received_Notice tinyint, @BSSI_Notice_Requirements char(255), @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4602910 (BSSI_Ground_Lease_Number, LNITMSEQ, BSSI_Period, BSSI_Period_Begin, BSSI_Period_End, BSSI_Renewal_Type, BSSI_Lead_Time, BSSI_Notice_Deadline, BSSI_Actual_Notice_Date, BSSI_Sent_Notice, BSSI_Received_Notice, BSSI_Notice_Requirements, NOTEINDX) VALUES ( @BSSI_Ground_Lease_Number, @LNITMSEQ, @BSSI_Period, @BSSI_Period_Begin, @BSSI_Period_End, @BSSI_Renewal_Type, @BSSI_Lead_Time, @BSSI_Notice_Deadline, @BSSI_Actual_Notice_Date, @BSSI_Sent_Notice, @BSSI_Received_Notice, @BSSI_Notice_Requirements, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602910SI] TO [DYNGRP]
GO
