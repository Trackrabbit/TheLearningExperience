SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[sopIsStatusActiveForFulfillmentOrders]  @I_tSOPStatus tinyint,  @O_tStatusActive tinyint  = NULL  output  AS  declare  @TypeCount    int,  @TRUE tinyint,  @FALSE tinyint  select @TRUE = 1,  @FALSE = 0,  @TypeCount = 0  if @I_tSOPStatus is NULL or @I_tSOPStatus = 1 begin  return 1 end  else if @I_tSOPStatus = 2  begin  select @TypeCount = count(DOCID) from SOP40200  where SOPTYPE = 3 and WORKFLOWENABLED = 1 and SOPSTATUSACTIVE_2 = 1 end  else if @I_tSOPStatus = 3  begin  select @TypeCount = count(DOCID) from SOP40200  where SOPTYPE = 3 and WORKFLOWENABLED = 1 and SOPSTATUSACTIVE_3 = 1 end  else if @I_tSOPStatus = 4  begin  select @TypeCount = count(DOCID) from SOP40200  where SOPTYPE = 3 and WORKFLOWENABLED = 1 and SOPSTATUSACTIVE_4 = 1 end  else if @I_tSOPStatus = 5  begin  select @TypeCount = count(DOCID) from SOP40200  where SOPTYPE = 3 and WORKFLOWENABLED = 1 and SOPSTATUSACTIVE_5 = 1 end  else if @I_tSOPStatus = 6  begin  select @TypeCount = count(DOCID) from SOP40200  where SOPTYPE = 3 and WORKFLOWENABLED = 1 and SOPSTATUSACTIVE_6 = 1 end  else if @I_tSOPStatus = 7  begin  select @TypeCount = count(DOCID) from SOP40200  where SOPTYPE = 3 and WORKFLOWENABLED = 1 and SOPSTATUSACTIVE_7 = 1 end  if @TypeCount > 0  select @O_tStatusActive = @TRUE else  select @O_tStatusActive = @FALSE  return    
GO
GRANT EXECUTE ON  [dbo].[sopIsStatusActiveForFulfillmentOrders] TO [DYNGRP]
GO
