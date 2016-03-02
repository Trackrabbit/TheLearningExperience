SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE     PROCEDURE [dbo].[aagValidateIsFullAssignment]  @HdrID   int, @IsFullAssignment int=1 output as begin  set nocount on   declare   @GPSeries  int,  @aaOption  int,   @DocNumber  varchar(50),  @DocType  int,  @BMSeriesType int,  @EBM_Enabled  int,  @CB_Type      int,  @CHEKBKID      char(15),  @CB_TransType varchar(3) ,  @Series  int   select @GPSeries=SERIES from AAG20000 where aaSubLedgerHdrID=@HdrID  select @aaOption=CASE @GPSeries  when 2 then 7   when 3 then 9   when 4 then 11   when 11 then 8   when 12 then 10   when 6 then 17  END    if @GPSeries<>58  begin   select @IsFullAssignment=aaIsOptionSet from AAG00700 where aaOption=@aaOption  end  else  begin  select @DocNumber=DOCNUMBR ,@DocType=DOCTYPE,@CHEKBKID=Master_ID from AAG20000 where aaSubLedgerHdrID=@HdrID   end   if exists(select TABLE_NAME from INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME='CBEU1001')   begin  select @EBM_Enabled=CB_Euro_Enabled from CBEU1001  if @EBM_Enabled = 1 and  @DocType < 7  begin   IF @DocType=1 or @DocType=2  set @CB_Type=1   IF @DocType=3 or @DocType=4  set @CB_Type=2   IF @DocType=5 or @DocType=6  set @CB_Type=3   select @CB_TransType = dbo.aagBMDocTypeEBM(@DocNumber, @CHEKBKID, @CB_Type)   end  else   begin  exec aagGetTypeAndSeries @CB_TransType output,@Series output,@DocType  end   if @Series is NULL or @Series=0  select top 1 @BMSeriesType=SERIES from CB100000 where ORDOCNUM=@DocNumber and CB_Trans_Type=@CB_TransType  else  select top 1 @BMSeriesType=SERIES from CB100000 where ORDOCNUM=@DocNumber and CB_Trans_Type=@CB_TransType and SERIES=@Series  select @aaOption=CASE @BMSeriesType  when 0 then 6   when 3 then 9   when 4 then 11   END   select @IsFullAssignment=aaIsOptionSet from AAG00700 where aaOption=@aaOption   end  set nocount off end    
GO
GRANT EXECUTE ON  [dbo].[aagValidateIsFullAssignment] TO [DYNGRP]
GO