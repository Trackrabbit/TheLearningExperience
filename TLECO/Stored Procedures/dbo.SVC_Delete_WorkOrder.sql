SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Delete_WorkOrder]  @WORecType smallint,  @WONumber as char(11) As if @WONumber >'' begin  if exists(select * from SVC06101 where WORECTYPE = @WORecType and WORKORDNUM = @WONumber and (QTYSOLD > 0 or PONMBRSTR > '' or ORDDOCID > ''))  return(99)  delete from SVC00710 where SRCDOCTYP = @WORecType and SRCDOCNUM = @WONumber   delete from SVC06101 where WORECTYPE = @WORecType and WORKORDNUM = @WONumber   delete from SVC06110 where WORECTYPE = @WORecType and WORKORDNUM = @WONumber   delete from SVC06103 where WORECTYPE = @WORecType and WORKORDNUM = @WONumber   delete from SVC06105 where WORECTYPE = @WORecType and WORKORDNUM = @WONumber   delete from SVC06300 where WORECTYPE = @WORecType and WORKORDNUM = @WONumber   delete from SVC06100 where WORECTYPE = @WORecType and WORKORDNUM = @WONumber  end  return     
GO
GRANT EXECUTE ON  [dbo].[SVC_Delete_WorkOrder] TO [DYNGRP]
GO
