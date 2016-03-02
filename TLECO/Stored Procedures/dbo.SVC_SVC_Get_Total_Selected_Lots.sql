SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_SVC_Get_Total_Selected_Lots]  (@SVC_Type smallint,  @Call_Number char(15),  @EquipSeq int,  @LineSeq int,  @QtyType smallint,  @SerialSeq int,  @TotalQty numeric(19,2) output) AS begin   SELECT @TotalQty = isnull(SUM(SERLTQTY),0) FROM SVC05251 WHERE   SRVRECTYPE = @SVC_Type and  CALLNBR = @Call_Number and  EQPLINE = @EquipSeq and LINITMTYP = 'P' and LNITMSEQ = @LineSeq  AND QTYTYPE = @QtyType AND SLTSQNUM = @SerialSeq end   
GO
GRANT EXECUTE ON  [dbo].[SVC_SVC_Get_Total_Selected_Lots] TO [DYNGRP]
GO
