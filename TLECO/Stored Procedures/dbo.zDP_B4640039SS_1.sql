SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640039SS_1] (@BSSI_Building_ID char(25), @BSSI_PropertyAttribute smallint, @LNSEQNBR numeric(19,5)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Building_ID, BSSI_PropertyAttribute, BSSI_PropertyAttrOldVal, BSSI_PropertyAttrNewVal, DATE1, USERID, LNSEQNBR, BSSI_Comment, Effective_Date, DEX_ROW_ID FROM .B4640039 WHERE BSSI_Building_ID = @BSSI_Building_ID AND BSSI_PropertyAttribute = @BSSI_PropertyAttribute AND LNSEQNBR = @LNSEQNBR ORDER BY BSSI_Building_ID ASC, BSSI_PropertyAttribute ASC, LNSEQNBR ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640039SS_1] TO [DYNGRP]
GO
