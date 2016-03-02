SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROCEDURE [dbo].[SOP_MultipleBinFulfillment]   @SOPNumber char(21),   @SOPType smallint,  @lLIS int,  @lCS int,  @MultipleBins int output,  @O_iErrorState int = NULL output  AS  select @MultipleBins=0  if (SELECT COUNT(DISTINCT BIN) FROM SOP10203 WHERE SOPNUMBE = @SOPNumber AND SOPTYPE = @SOPType AND LNITMSEQ = @lLIS AND CMPNTSEQ = @lCS) > 1 BEGIN  select @MultipleBins=1 END   set nocount OFF RETURN    
GO
GRANT EXECUTE ON  [dbo].[SOP_MultipleBinFulfillment] TO [DYNGRP]
GO
