SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_SOP_Get_Total_Selected_Lots]  (@SOP_Type smallint,  @SOP_Number char(15),  @LineSeq bigint,  @ComponentSeq bigint,  @QtyType smallint,  @SerialSeq bigint,  @TotalQty numeric(19,2) output) AS begin  SET @TotalQty = 0  IF @SOP_Type = 0 OR @SOP_Number = '' OR @LineSeq = 0  RETURN   SELECT @TotalQty = isnull(SUM(SERLTQTY),0) FROM SVC05250 WHERE SOPNUMBE = @SOP_Number AND SOPTYPE = @SOP_Type  AND LNITMSEQ = @LineSeq AND CMPNTSEQ = @ComponentSeq  AND QTYTYPE = @QtyType AND SLTSQNUM = @SerialSeq end   
GO
GRANT EXECUTE ON  [dbo].[SVC_SOP_Get_Total_Selected_Lots] TO [DYNGRP]
GO
