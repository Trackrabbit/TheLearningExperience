SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7112306SI] (@BSSI_Recognition_SNumber char(25), @LNITMSEQ int, @BSSI_Line_Item_Sequence int, @BSSI_Recognition_Type smallint, @BSSI_Recog_Frequency smallint, @BSSI_Recog_Length_Period numeric(19,5), @BSSI_Recog_Length_Months numeric(19,5), @STRTDATE datetime, @ENDDATE datetime, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B7112306 (BSSI_Recognition_SNumber, LNITMSEQ, BSSI_Line_Item_Sequence, BSSI_Recognition_Type, BSSI_Recog_Frequency, BSSI_Recog_Length_Period, BSSI_Recog_Length_Months, STRTDATE, ENDDATE) VALUES ( @BSSI_Recognition_SNumber, @LNITMSEQ, @BSSI_Line_Item_Sequence, @BSSI_Recognition_Type, @BSSI_Recog_Frequency, @BSSI_Recog_Length_Period, @BSSI_Recog_Length_Months, @STRTDATE, @ENDDATE) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7112306SI] TO [DYNGRP]
GO
