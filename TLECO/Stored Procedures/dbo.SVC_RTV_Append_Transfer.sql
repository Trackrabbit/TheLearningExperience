SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[SVC_RTV_Append_Transfer] (  @FromLocation char(11),  @ToLocation char(11),  @IntransitLocation char(11),  @RTV char(15),  @TransferNumber char(15) output,  @TransferLine int output,  @Found tinyint output ) AS  select @Found = 0  if exists(select * from SVC00700 left join SVC00701 on SVC00700.ORDDOCID = SVC00701.ORDDOCID  where RTV_Number = @RTV and SVC00700.STATUS < 2 and SVC00700.TRNSFLOC = @FromLocation and SVC00700.ITLOCN = @IntransitLocation and SVC00700.LOCNCODE =  @ToLocation)  begin  select @TransferNumber = SVC00700.ORDDOCID from SVC00700 left join SVC00701 on SVC00700.ORDDOCID = SVC00701.ORDDOCID  where RTV_Number = @RTV and SVC00700.STATUS < 2   and SVC00700.TRNSFLOC = @FromLocation and SVC00700.ITLOCN = @IntransitLocation and SVC00700.LOCNCODE =  @ToLocation  select @Found = 1  select @TransferLine = max(LNITMSEQ) + 16384 from SVC00701 where ORDDOCID = @TransferNumber  end   return    
GO
GRANT EXECUTE ON  [dbo].[SVC_RTV_Append_Transfer] TO [DYNGRP]
GO
