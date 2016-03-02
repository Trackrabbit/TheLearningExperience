SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 create proc [dbo].[sopTrxDuplicateTrackNumbers]  (@SourceSopType smallint=NULL, @SourceSopNumber char(21)=NULL, @TargetSopType smallint=NULL, @TargetSopNumber char(21)=NULL,  @XferUserDefined smallint=NULL, @iErrorState int=NULL output)  AS  declare @tTransaction tinyint BEGIN  SET nocount on  SELECT @iErrorState = 0 IF @SourceSopType=NULL or @SourceSopNumber=NULL or @TargetSopType=NULL or @TargetSopNumber=NULL BEGIN  SELECT @iErrorState = 21036  RETURN END  set nocount on if @@trancount = 0  begin   select @tTransaction = 1   begin transaction  end   IF @XferUserDefined = 3 BEGIN  INSERT INTO SOP10106  (SOPTYPE, SOPNUMBE, USRDAT01, USRDAT02, USRTAB01, USRTAB09, USRTAB03,  USERDEF1, USERDEF2, USRDEF03, USRDEF04, USRDEF05,   COMMENT_1, COMMENT_2, COMMENT_3, COMMENT_4, CMMTTEXT)  SELECT   @TargetSopType, @TargetSopNumber, USRDAT01, USRDAT02, USRTAB01, USRTAB09, USRTAB03,  USERDEF1, USERDEF2, USRDEF03, USRDEF04, USRDEF05,   COMMENT_1, COMMENT_2, COMMENT_3, COMMENT_4, CMMTTEXT   FROM   SOP10106  WHERE   SOPTYPE=@SourceSopType   AND SOPNUMBE = @SourceSopNumber  END  IF @TargetSopType <> 5 BEGIN  INSERT INTO SOP10107   (SOPTYPE, SOPNUMBE, Tracking_Number)  SELECT   @TargetSopType, @TargetSopNumber, Tracking_Number  FROM   SOP10107  WHERE   SOPTYPE=@SourceSopType   AND SOPNUMBE = @SourceSopNumber  END  if @tTransaction = 1  begin  commit transaction  end  END    
GO
GRANT EXECUTE ON  [dbo].[sopTrxDuplicateTrackNumbers] TO [DYNGRP]
GO
