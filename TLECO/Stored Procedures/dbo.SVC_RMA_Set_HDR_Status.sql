SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_RMA_Set_HDR_Status] (@RMANumber char(15)) as declare @EntryStatus char(3),  @ReceivedStatus char(3),  @DiscpStatus char(3),  @PartialReceivedStatus char(3),  @ReadyToCloseStatus char(3),  @ClosedStatus char(3),  @HeaderStatus char(3),  @RMAStatus int,  @ClosedDate datetime,  @ClosedTime datetime,  @ClosedDateTime datetime,  @ReturnDateTime datetime,  @ReturnDate datetime,  @ReturnTime datetime,  @Received tinyint,  @RecType smallint,  @MinDate datetime  exec smGetMinDate @MinDate output  select @EntryStatus = SVC05501.RETSTAT, @ReceivedStatus = SVC05501.Received_Status,   @PartialReceivedStatus = SVC05501.SVC_Partial_Received_Sta,  @DiscpStatus = SVC_Discrepancy_Status, @ClosedStatus = Close_Status,  @ReadyToCloseStatus = SVC05501.SVC_Ready_To_Close_Statu, @HeaderStatus = SVC05000.RETSTAT  from SVC05501 left join SVC05000 on  SVC05000.RETTYPE = SVC05501.RETTYPE where SVC05000.RETDOCID = @RMANumber if not exists(select * from SVC05200 where RETDOCID = @RMANumber) return if not exists(select * from SVC05200 where RETDOCID = @RMANumber and RMA_Status > 0) return  if @HeaderStatus > @EntryStatus  begin  if exists(select * from SVC05200 where RETDOCID = @RMANumber and RETSTAT = @EntryStatus)  select @HeaderStatus = @PartialReceivedStatus  else if exists(select * from SVC05200 where RETDOCID = @RMANumber and (RETSTAT = @DiscpStatus or RETSTAT = @ReceivedStatus))  select @HeaderStatus = @ReceivedStatus  end else if exists(select * from SVC05200 where RETDOCID = @RMANumber and (RETSTAT = @DiscpStatus or RETSTAT = @ReceivedStatus))  begin  if exists(select * from SVC05200 where RETDOCID = @RMANumber and RETSTAT = @EntryStatus)  select @HeaderStatus = @PartialReceivedStatus  else  select @HeaderStatus = @ReceivedStatus  end if @HeaderStatus = @EntryStatus   select @Received = 0 else  select @Received = 1 select @RMAStatus = min(RMA_Status), @RecType = min(Return_Record_Type),   @ClosedDateTime = max(dateadd(Minute,datepart(Minute,COMPTME),dateadd(Hour,datepart(Hour,COMPTME),COMPDTE))),   @ReturnDateTime = max(dateadd(Minute,datepart(Minute,Return_Time),dateadd(Hour,datepart(Hour,Return_Time),RETUDATE)))   from SVC05200 where RETDOCID = @RMANumber and RMA_Status > 0 if @RMAStatus is null  select @RMAStatus = min(RMA_Status), @RecType = min(Return_Record_Type),   @ClosedDateTime = max(dateadd(Minute,datepart(Minute,COMPTME),dateadd(Hour,datepart(Hour,COMPTME),COMPDTE))),   @ReturnDateTime = max(dateadd(Minute,datepart(Minute,Return_Time),dateadd(Hour,datepart(Hour,Return_Time),RETUDATE)))   from SVC05200 where RETDOCID = @RMANumber if not exists(select * from SVC05200 where RETDOCID = @RMANumber and (RMA_Status = 0 or  RMA_Status = 7))  select @RMAStatus = 8 if not exists(select * from SVC05200 where RETDOCID = @RMANumber and RMA_Status < 9)  select @RMAStatus = 9, @HeaderStatus = @ReadyToCloseStatus if not exists(select * from SVC05200 where RETDOCID = @RMANumber and RMA_Status < 10)  select @RMAStatus = 10, @HeaderStatus = @ClosedStatus exec SVC_util_split_datetime @ReturnDateTime, @ReturnDate output, @ReturnTime output exec SVC_util_split_datetime @ClosedDateTime, @ClosedDate output, @ClosedTime output update SVC05000 with (rowlock)   set Return_Record_Type = isnull(@RecType,1), RETSTAT = isnull(@HeaderStatus,'') , RMA_Status = isnull(@RMAStatus,0),   Received = isnull(@Received,0), RETUDATE = isnull(@ReturnDate, @MinDate), Return_Time = isnull(@ReturnTime, @MinDate),  COMPDTE = isnull(@ClosedDate, @MinDate), COMPTME = isnull(@ClosedTime, @MinDate)  where RETDOCID = @RMANumber  if @HeaderStatus = @ClosedStatus  Begin  update SVC05000 with (rowLock) set Return_Record_Type = 2 where RETDOCID = @RMANumber  update SVC05001 with (rowLock) set Return_Record_Type = 2 where RETDOCID = @RMANumber  update SVC05030 with (rowLock) set Return_Record_Type = 2 where RETDOCID = @RMANumber  update SVC05200 with (rowLock) set Return_Record_Type = 2 where RETDOCID = @RMANumber  update SVC05210 with (rowLock) set Return_Record_Type = 2 where RETDOCID = @RMANumber  update SVC05255 with (rowLock) set Return_Record_Type = 2 where RETDOCID = @RMANumber  update SVC05256 with (rowLock) set Return_Record_Type = 2 where RETDOCID = @RMANumber  update SVC05212 with (rowLock) set Return_Record_Type = 2 where RETDOCID = @RMANumber  End return    
GO
GRANT EXECUTE ON  [dbo].[SVC_RMA_Set_HDR_Status] TO [DYNGRP]
GO