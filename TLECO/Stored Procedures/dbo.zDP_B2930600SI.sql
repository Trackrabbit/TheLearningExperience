SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2930600SI] (@SCHEDULE_NUMBER char(21), @Schedule_Payment_Number smallint, @BSSI_Journal_Entry int, @BSSI_Journal_Entry_Accru int, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B2930600 (SCHEDULE_NUMBER, Schedule_Payment_Number, BSSI_Journal_Entry, BSSI_Journal_Entry_Accru) VALUES ( @SCHEDULE_NUMBER, @Schedule_Payment_Number, @BSSI_Journal_Entry, @BSSI_Journal_Entry_Accru) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2930600SI] TO [DYNGRP]
GO
