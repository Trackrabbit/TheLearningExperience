SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[rmpaGetBatchID]   @I_cLocboxID char(15) = NULL,  @I_CBatchID char(15) = NULL,  @I_iSearchDirection int  = NULL,  @O_CLocboxID char(15) = NULL output,  @O_CBatchID char(15) = NULL output,  @O_iErrorState      int             = NULL  output as  select  @O_CLocboxID  ='',  @O_CBatchID  ='',  @O_iErrorState  =0  if @I_iSearchDirection = 1   select top 1 @O_CLocboxID = LockboxID, @O_CBatchID = paActvty.BACHNUMB   from paActvty inner join sy00500 on paActvty.BACHNUMB = sy00500.BACHNUMB  order by LockboxID ASC, paActvty.BACHNUMB ASC  if @I_iSearchDirection = 5   select top 1 @O_CLocboxID = LockboxID, @O_CBatchID = paActvty.BACHNUMB   from paActvty inner join sy00500 on paActvty.BACHNUMB = sy00500.BACHNUMB  order by LockboxID DESC, paActvty.BACHNUMB ASC  if @I_iSearchDirection = 2   select top 1 @O_CLocboxID = LockboxID, @O_CBatchID = paActvty.BACHNUMB   from paActvty inner join sy00500 on paActvty.BACHNUMB = sy00500.BACHNUMB  where LockboxID > @I_cLocboxID  order by LockboxID ASC, paActvty.BACHNUMB ASC if @I_iSearchDirection = 4   select top 1 @O_CLocboxID = LockboxID, @O_CBatchID = paActvty.BACHNUMB   from paActvty inner join sy00500 on paActvty.BACHNUMB = sy00500.BACHNUMB  where LockboxID < @I_cLocboxID  order by LockboxID ASC, paActvty.BACHNUMB ASC   
GO
GRANT EXECUTE ON  [dbo].[rmpaGetBatchID] TO [DYNGRP]
GO
