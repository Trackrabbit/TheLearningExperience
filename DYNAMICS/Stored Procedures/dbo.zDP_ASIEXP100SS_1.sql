SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ASIEXP100SS_1] (@CMPANYID smallint, @USERID char(15), @FORMNAME char(79), @ASI_Sequence smallint) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  CMPANYID, USERID, FORMNAME, ASI_Field_Number, ASI_Field_Number_Dict_ID, ASI_Ascending, ASI_Sequence, DEX_ROW_ID FROM .ASIEXP100 WHERE CMPANYID = @CMPANYID AND USERID = @USERID AND FORMNAME = @FORMNAME AND ASI_Sequence = @ASI_Sequence ORDER BY CMPANYID ASC, USERID ASC, FORMNAME ASC, ASI_Sequence ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ASIEXP100SS_1] TO [DYNGRP]
GO
