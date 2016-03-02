SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Update_Transfer_LotSequence]  @OrdDocID  varchar(15) ,  @TransLineSeq  integer,  @LotSeq integer  AS  update SVC00702 set SLTSQNUM = SLTSQNUM + 1 where ORDDOCID = @OrdDocID and TRANSLINESEQ = @TransLineSeq and SLTSQNUM > @LotSeq  return    
GO
GRANT EXECUTE ON  [dbo].[SVC_Update_Transfer_LotSequence] TO [DYNGRP]
GO
