SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_Check_Dupe_Return_Call]  @srvrectype int ,  @callnbr varchar(11) ,  @EquipLine integer,  @Line integer,  @LineType char(3),  @This_RMA char(15)   AS if exists(  select * from SVC05000 inner join SVC05501 on (SVC05000.RETTYPE = SVC05501.RETTYPE)  where RETPATH <> 1  and RETDOCID <> @This_RMA  and SRVRECTYPE = @srvrectype and CALLNBR = @callnbr  and EQPLINE=@EquipLine and LNITMSEQ = @Line  )  begin  return 1  end else  begin  return 0  end    
GO
GRANT EXECUTE ON  [dbo].[SVC_Check_Dupe_Return_Call] TO [DYNGRP]
GO
