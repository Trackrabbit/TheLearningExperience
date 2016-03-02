SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[SVC_Check_Dupe_Return] (  @SOP_Number char(21),  @SOP_Line int,  @This_RMA char(15)  ) as IF exists(select * from sysobjects where name = 'SVC05200')  BEGIN   if exists(  select * from SVC05200 inner join SVC05501 on (SVC05200.RETTYPE = SVC05501.RETTYPE)  where RETPATH <> 1  and RETDOCID <> @This_RMA  and SOPNUMBE = @SOP_Number  and SOP_Line_Item_Sequence = @SOP_Line  )  begin  return 1  end  else  begin  if exists(  select * from SVC35200 inner join SVC05501 on (SVC35200.RETTYPE = SVC05501.RETTYPE)  where RETPATH <> 1  and RETDOCID <> @This_RMA  and SOPNUMBE = @SOP_Number  and SOP_Line_Item_Sequence = @SOP_Line  )  begin  return 1  end  else  BEGIN   if exists(select * from SOP10100 where ORIGNUMB = @SOP_Number and ORIGTYPE = 3) or  exists(select * from SOP30200 where ORIGNUMB = @SOP_Number and ORIGTYPE = 3)  begin  return 2  end  else  return 0  END  end END  else BEGIN   if exists(select * from SOP10100 where ORIGNUMB = @SOP_Number and ORIGTYPE = 3) or  exists(select * from SOP30200 where ORIGNUMB = @SOP_Number and ORIGTYPE = 3)  begin  return 2  end  else  return 0 END    
GO
GRANT EXECUTE ON  [dbo].[SVC_Check_Dupe_Return] TO [DYNGRP]
GO
