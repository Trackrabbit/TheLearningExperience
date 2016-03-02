SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE procedure [dbo].[NC_Update_NCIC5004] 	@nNewXfrRecordNumber int, 	@nXfrRecordNumber int, 	@out_err int output	 with execute as owner as  begin 	update NCIC5004 set NC_Xfr_Record_Number = @nNewXfrRecordNumber where Xfr_Record_Number = @nXfrRecordNumber 	set @out_err = 0  	 end  
GO
GRANT EXECUTE ON  [dbo].[NC_Update_NCIC5004] TO [DYNGRP]
GO
