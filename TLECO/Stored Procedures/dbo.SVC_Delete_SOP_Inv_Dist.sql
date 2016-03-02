SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Delete_SOP_Inv_Dist]  @SOP_Type smallint,  @SOP_Number char(21) As  if exists(select * from SOP10200 where (SOPTYPE = 4 or SOPTYPE = 3) and SOPNUMBE = @SOP_Number and DROPSHIP = 1 and CONTITEMNBR > '')  begin  delete from SOP10102 where SOPTYPE = @SOP_Type and SOPNUMBE = @SOP_Number and DISTTYPE = 14  delete from SOP10102 where SOPTYPE = @SOP_Type and SOPNUMBE = @SOP_Number and DISTTYPE = 15  end return    
GO
GRANT EXECUTE ON  [dbo].[SVC_Delete_SOP_Inv_Dist] TO [DYNGRP]
GO
