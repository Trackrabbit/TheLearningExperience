SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7112307SI] (@BSSI_Recognition_SNumber char(25), @LNITMSEQ int, @BSSI_Recognition_Amount numeric(19,5), @STRTDATE datetime, @ENDDATE datetime, @BSSI_Facility_ID char(67), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B7112307 (BSSI_Recognition_SNumber, LNITMSEQ, BSSI_Recognition_Amount, STRTDATE, ENDDATE, BSSI_Facility_ID) VALUES ( @BSSI_Recognition_SNumber, @LNITMSEQ, @BSSI_Recognition_Amount, @STRTDATE, @ENDDATE, @BSSI_Facility_ID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7112307SI] TO [DYNGRP]
GO
