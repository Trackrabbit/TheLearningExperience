SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[wfCheckVendorsForPayablesBatchList]  @BACHNUMB char(15),  @BCHSOURC char(15),  @can_post_vendor tinyint OUTPUT as BEGIN  set nocount on declare @vendors TABLE(  VENDORID char(15)) select @can_post_vendor=0  insert into @vendors select distinct PM.VENDORID from  (select distinct VENDORID from PM10300 where BACHNUMB=@BACHNUMB and BCHSOURC=@BCHSOURC union select distinct VENDORID from PM10400 where BACHNUMB=@BACHNUMB and BCHSOURC=@BCHSOURC union select distinct VENDORID from PM10000 where BACHNUMB=@BACHNUMB and BCHSOURC=@BCHSOURC) PM  if (select count(*) from @vendors a,PM00200 b  where a.VENDORID=b.VENDORID and b.Workflow_Status in (1,4,5,7) )=0  select @can_post_vendor=1  END   
GO
GRANT EXECUTE ON  [dbo].[wfCheckVendorsForPayablesBatchList] TO [DYNGRP]
GO
