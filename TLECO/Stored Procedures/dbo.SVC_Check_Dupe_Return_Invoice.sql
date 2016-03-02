SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[SVC_Check_Dupe_Return_Invoice](  @SOP_Number char(21),  @SOP_Line int,  @This_RMA char(15),  @Is_Dupe int output  ) as if exists(  select * from SVC05000, SVC05501  where SVC05000.RETTYPE = SVC05501.RETTYPE   and RETPATH <> 1  and RETDOCID <> @This_RMA  and SOPNUMBE = @SOP_Number  and SOP_Line_Item_Sequence = @SOP_Line  )  begin  select @Is_Dupe = 1  end else  begin  select @Is_Dupe = 0  end return 1    
GO
GRANT EXECUTE ON  [dbo].[SVC_Check_Dupe_Return_Invoice] TO [DYNGRP]
GO
