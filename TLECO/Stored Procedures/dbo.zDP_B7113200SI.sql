SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7113200SI] (@BSSI_Recognition_SNumber char(25), @BSSI_Line_Item_Sequence int, @BSSI_Recognition_Type smallint, @BSSI_Recog_Frequency smallint, @BSSI_Recog_Length_Period numeric(19,5), @BSSI_Recog_Length_Months numeric(19,5), @STRTDATE datetime, @ENDDATE datetime, @DUMYRCRD tinyint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B7113200 (BSSI_Recognition_SNumber, BSSI_Line_Item_Sequence, BSSI_Recognition_Type, BSSI_Recog_Frequency, BSSI_Recog_Length_Period, BSSI_Recog_Length_Months, STRTDATE, ENDDATE, DUMYRCRD) VALUES ( @BSSI_Recognition_SNumber, @BSSI_Line_Item_Sequence, @BSSI_Recognition_Type, @BSSI_Recog_Frequency, @BSSI_Recog_Length_Period, @BSSI_Recog_Length_Months, @STRTDATE, @ENDDATE, @DUMYRCRD) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7113200SI] TO [DYNGRP]
GO
