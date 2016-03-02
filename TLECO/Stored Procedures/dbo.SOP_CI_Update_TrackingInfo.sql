SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE  PROCEDURE [dbo].[SOP_CI_Update_TrackingInfo]   @FulFill_Number VARCHAR(25),   @NewINV_Number varchar(25)  As   DECLARE @DISTTYPE SMALLINT,   @SOPNUMBE varchar(25),   @SOPTYPE INT,   @Tracking_Number varchar(41)   DECLARE Cur_Trackinfo cursor for   select  SOPNUMBE,  SOPTYPE,  Tracking_Number   from SOP10107   where SOPNUMBE=@FulFill_Number   and SOPTYPE=6   OPEN Cur_Trackinfo   FETCH NEXT FROM Cur_Trackinfo INTO @SOPNUMBE,@SOPTYPE,@Tracking_Number   while @@FETCH_STATUS = 0   BEGIN   BEGIN TRY   if (select count(*) from SOP10107 where SOPNUMBE=@NewINV_Number and SOPTYPE=3 and Tracking_Number=@Tracking_Number)=0   Insert   into SOP10107   ( SOPNUMBE,  SOPTYPE,  Tracking_Number)   values (@NewINV_Number,  3,  @Tracking_Number)  END TRY   BEGIN CATCH   END CATCH   FETCH NEXT FROM Cur_Trackinfo INTO @SOPNUMBE,@SOPTYPE,@Tracking_Number   END   DEALLOCATE Cur_Trackinfo     
GO
GRANT EXECUTE ON  [dbo].[SOP_CI_Update_TrackingInfo] TO [DYNGRP]
GO
