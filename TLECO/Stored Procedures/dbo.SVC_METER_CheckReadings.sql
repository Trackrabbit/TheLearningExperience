SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE Procedure [dbo].[SVC_METER_CheckReadings] (  @MeterToCheck integer,  @EquipID integer,  @Date datetime,  @Meter integer,  @Rep tinyint,  @InstallDate datetime,  @ContractNumber         char(11),   @LineNumber             numeric(19,5),  @Base integer OUTPUT,  @Daily numeric(19,5) OUTPUT,   @Delta integer OUTPUT,  @PrevRecordMeter integer OUTPUT,  @PrevRecordDate datetime OUTPUT  ) As DECLARE @SerialNumber char(21),   @ItemNumber char(31),   @Days integer,   @Failures integer,  @LastEstimatedDate datetime,  @ChangeDate tinyint,  @EstimatedAmount numeric(19,5),  @PrevMeter integer,  @PrevDate datetime,  @DexID int select @ChangeDate = 0   IF @Meter = 0 OR @Rep = 1  select @Base = 1  ELSE   select @Base = 0  IF @MeterToCheck = 1 BEGIN  select @PrevRecordMeter = Meters_1, @PrevRecordDate = LSTDTEDT from SVC00301 WITH (NOLOCK)  where Meters_1 > 0 and EQUIPID = @EquipID and Meters_1 = (select max(a.Meters_1) from SVC00301 a where a.EQUIPID = @EquipID)  select top 1  @PrevMeter = Meters_1, @PrevDate = (LSTDTEDT), @DexID = DEX_ROW_ID from SVC00301 WITH (NOLOCK)  where Meters_1 > 0 and EQUIPID = @EquipID order by DEX_ROW_ID desc      IF @PrevDate = @Date and @Base = 0  select top 1  @PrevMeter = Meters_1, @PrevDate = (LSTDTEDT) from SVC00301 WITH (NOLOCK)  where DEX_ROW_ID < @DexID and Meters_1 > 0 and @PrevDate <> LSTDTEDT and EQUIPID = @EquipID order by DEX_ROW_ID desc  END ELSE IF @MeterToCheck = 2 BEGIN  select @PrevRecordMeter = Meters_2, @PrevRecordDate = LSTDTEDT from SVC00301 WITH (NOLOCK)  where Meters_2 > 0 and EQUIPID = @EquipID and Meters_2 = (select max(a.Meters_2) from SVC00301 a where a.EQUIPID = @EquipID)  select top 1  @PrevMeter = Meters_2, @PrevDate = LSTDTEDT, @DexID = DEX_ROW_ID from SVC00301 WITH (NOLOCK)  where Meters_2 > 0 and EQUIPID = @EquipID order by DEX_ROW_ID desc   IF @PrevDate = @Date and @Base = 0  select top 1  @PrevMeter = Meters_2, @PrevDate = (LSTDTEDT) from SVC00301 WITH (NOLOCK)  where DEX_ROW_ID < @DexID and Meters_2 > 0 and @PrevDate <> LSTDTEDT and EQUIPID = @EquipID order by DEX_ROW_ID desc   END ELSE IF @MeterToCheck = 3 BEGIN  select @PrevRecordMeter = Meters_3, @PrevRecordDate = LSTDTEDT from SVC00301 WITH (NOLOCK)  where Meters_3 > 0 and EQUIPID = @EquipID and Meters_3 = (select max(a.Meters_3) from SVC00301 a where a.EQUIPID = @EquipID)  select top 1  @PrevMeter = Meters_3, @PrevDate = LSTDTEDT, @DexID = DEX_ROW_ID from SVC00301 WITH (NOLOCK)  where Meters_3 > 0 and EQUIPID = @EquipID order by DEX_ROW_ID desc   IF @PrevDate = @Date and @Base = 0  select top 1  @PrevMeter = Meters_3, @PrevDate = (LSTDTEDT) from SVC00301 WITH (NOLOCK)  where DEX_ROW_ID < @DexID and Meters_3 > 0 and @PrevDate <> LSTDTEDT and EQUIPID = @EquipID order by DEX_ROW_ID desc   END ELSE IF @MeterToCheck = 4 BEGIN  select @PrevRecordMeter = Meters_4, @PrevRecordDate = LSTDTEDT from SVC00301 WITH (NOLOCK)  where Meters_4 > 0 and EQUIPID = @EquipID and Meters_4 = (select max(a.Meters_4) from SVC00301 a where a.EQUIPID = @EquipID)  select top 1  @PrevMeter = Meters_4, @PrevDate = LSTDTEDT, @DexID = DEX_ROW_ID from SVC00301 WITH (NOLOCK)  where Meters_4 > 0 and EQUIPID = @EquipID order by DEX_ROW_ID desc   IF @PrevDate = @Date and @Base = 0  select top 1  @PrevMeter = Meters_4, @PrevDate = (LSTDTEDT) from SVC00301 WITH (NOLOCK)  where DEX_ROW_ID < @DexID and Meters_4 > 0 and @PrevDate <> LSTDTEDT and EQUIPID = @EquipID order by DEX_ROW_ID desc   END ELSE IF @MeterToCheck = 5 BEGIN  select @PrevRecordMeter = Meters_5, @PrevRecordDate = LSTDTEDT from SVC00301 WITH (NOLOCK)  where Meters_5 > 0 and EQUIPID = @EquipID and Meters_5 = (select max(a.Meters_5) from SVC00301 a where a.EQUIPID = @EquipID)  select top 1  @PrevMeter = Meters_5, @PrevDate = LSTDTEDT, @DexID = DEX_ROW_ID from SVC00301 WITH (NOLOCK)  where Meters_5 > 0 and EQUIPID = @EquipID order by DEX_ROW_ID desc   IF @PrevDate = @Date and @Base = 0  select top 1  @PrevMeter = Meters_5, @PrevDate = (LSTDTEDT) from SVC00301 WITH (NOLOCK)  where DEX_ROW_ID < @DexID and Meters_5 > 0 and @PrevDate <> LSTDTEDT and EQUIPID = @EquipID order by DEX_ROW_ID desc   END   IF @ContractNumber is not null and @ContractNumber > '' and  @LineNumber is not null and @LineNumber > 0 BEGIN   select @LastEstimatedDate = MAX(Transaction_Date)  from SVC00604  where CONSTS = 2 and  CONTNBR = @ContractNumber and  LNSEQNBR = @LineNumber and   Source_Trx_Document_Type = 'CLE' and  SUBSTRING(SourceTrxDocumentNumber,5,1) = CONVERT(varchar(1),@MeterToCheck)  IF @LastEstimatedDate is not null  BEGIN  if @LastEstimatedDate > @PrevDate  select @ChangeDate = 1  END  END   select @PrevMeter = isnull(@PrevMeter,0) select @PrevRecordMeter = ISNULL(@PrevRecordMeter, @PrevMeter)  select @PrevDate = isnull(@PrevDate,@InstallDate), @PrevRecordDate = ISNULL(@PrevRecordDate, @InstallDate)  select @Days = datedIFF(day,@PrevDate,@Date)  select @PrevDate = DATEADD(d,1,@PrevDate), @PrevRecordDate = DATEADD(d,1,@PrevRecordDate)  IF @Base = 0 and @Days <> 0  begin  if @Days < 0  select @Days = 1  select @Daily = ((@Meter - @PrevMeter) * 1.00000) / (@Days * 1.00000)  end ELSE  select @Daily = 0  IF @Base = 0  select @Delta = @Meter- @PrevMeter ELSE   select @Delta = 0  IF @Meter > 0 OR @Rep = 1  BEGIN  IF @MeterToCheck = 1  BEGIN  update SVC00300   set Meters_1 = @Meter,  Meter_Deltas_1 = Meter_Deltas_1 + @Delta,  Dailys_1 = case   when @Daily > 0 then (Dailys_1 + @Daily) / (1 + sign(abs(Dailys_1)))  else Dailys_1  end   where EQUIPID = @EquipID   END ELSE IF @MeterToCheck = 2  BEGIN  update SVC00300   set Meters_2 = @Meter,  Meter_Deltas_2 = Meter_Deltas_2 + @Delta,  Dailys_2 = case   when @Daily > 0 then (Dailys_2 + @Daily) / (1 + sign(abs(Dailys_2)))  else Dailys_2  end   where EQUIPID = @EquipID  END ELSE IF @MeterToCheck = 3  BEGIN  update SVC00300   set Meters_3 = @Meter,  Meter_Deltas_3 = Meter_Deltas_3 + @Delta,  Dailys_3 = case   when @Daily > 0 then (Dailys_3 + @Daily) / (1 + sign(abs(Dailys_3)))  else Dailys_3  end   where EQUIPID = @EquipID  END ELSE IF @MeterToCheck = 4  BEGIN  update SVC00300   set Meters_4 = @Meter,  Meter_Deltas_4 = Meter_Deltas_4 + @Delta,  Dailys_4 = case   when @Daily > 0 then (Dailys_4 + @Daily) / (1 + sign(abs(Dailys_4)))  else Dailys_4  end   where EQUIPID = @EquipID  END ELSE IF @MeterToCheck = 5  BEGIN  update SVC00300   set Meters_5 = @Meter,  Meter_Deltas_5 = Meter_Deltas_5 + @Delta,  Dailys_5 = case   when @Daily > 0 then (Dailys_5 + @Daily) / (1 + sign(abs(Dailys_5)))  else Dailys_5  end   where EQUIPID = @EquipID  END  END  IF @ChangeDate = 1  select @PrevRecordDate = DATEADD(d,1,@LastEstimatedDate)     
GO
GRANT EXECUTE ON  [dbo].[SVC_METER_CheckReadings] TO [DYNGRP]
GO
