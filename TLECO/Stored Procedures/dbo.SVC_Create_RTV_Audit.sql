SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
  CREATE Procedure [dbo].[SVC_Create_RTV_Audit](  @RTV_Number char(15),  @LineNumber numeric(19,5),  @From_Status char(3),  @To_Status  char(3),  @Description char(100),  @User char(15),  @UserDate datetime,  @UserTime datetime ) AS  declare @L_datetime datetime,  @L_date datetime,  @L_time datetime,  @L_User char(11),  @L_stat char(3),  @L_line int,  @LNSEQNBR numeric(19,5),  @Item char(30)  select @L_datetime = getdate()  exec SVC_util_split_datetime @L_datetime,  @L_date output,  @L_time output   select @L_User = @User, @L_stat = @To_Status  if @L_stat is null  select @L_stat = ''  IF @L_User is null  select @L_User = '' select @LNSEQNBR =max(IsNull(LNSEQNBR,0)) + 1   from SVC05620 where RTV_Number = @RTV_Number if @LineNumber > 0 and exists(select * from SVC05601 where  RTV_Number = @RTV_Number and RTV_Line = @LineNumber)  begin  select @Item = ITEMNMBR from SVC05601 where RTV_Number = @RTV_Number and RTV_Line = @LineNumber  select @Description = Rtrim(@Item) + '-' + substring(@Description, 1, 70)  end  select @LNSEQNBR = IsNull(@LNSEQNBR,1)    Insert into SVC05620   select  @RTV_Number,  @LineNumber,  @LNSEQNBR,  @From_Status,  @L_stat,  @Description ,  @L_User,  @L_date,   @L_time  return   
GO
GRANT EXECUTE ON  [dbo].[SVC_Create_RTV_Audit] TO [DYNGRP]
GO
