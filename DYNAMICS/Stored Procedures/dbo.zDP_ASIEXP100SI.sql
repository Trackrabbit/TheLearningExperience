SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ASIEXP100SI] (@CMPANYID smallint, @USERID char(15), @FORMNAME char(79), @ASI_Field_Number smallint, @ASI_Field_Number_Dict_ID smallint, @ASI_Ascending smallint, @ASI_Sequence smallint, @DEX_ROW_ID int OUT) AS /* 14.00.0084.000 */ set nocount on BEGIN INSERT INTO .ASIEXP100 (CMPANYID, USERID, FORMNAME, ASI_Field_Number, ASI_Field_Number_Dict_ID, ASI_Ascending, ASI_Sequence) VALUES ( @CMPANYID, @USERID, @FORMNAME, @ASI_Field_Number, @ASI_Field_Number_Dict_ID, @ASI_Ascending, @ASI_Sequence) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ASIEXP100SI] TO [DYNGRP]
GO
