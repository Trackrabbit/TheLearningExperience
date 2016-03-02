SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_Create_Serial_PM]  (@EquipID integer,  @PMDetailID varchar(10),  @SchedID varchar(10),  @PMStatus smallint,  @Meter1 integer,  @Meter2 integer,  @CheckDate datetime) as declare @ItemNumber    char(31),  @SerialNumber  char(21),  @CALLNBR       varchar(15),  @LastPMDate    datetime,  @Meter1Reading integer,  @Meter2Reading integer declare @MinDate datetime  exec smGetMinDate @MinDate output  select @CALLNBR = '',  @LastPMDate = isnull(@CheckDate,@MinDate),  @Meter1Reading = 0,  @Meter2Reading = 0 select @ItemNumber = ITEMNMBR,  @SerialNumber = SERLNMBR from SVC00300 where EQUIPID = @EquipID IF @ItemNumber is null  select @ItemNumber = '' IF @SerialNumber is null  select @SerialNumber = '' if exists(select * from SVC00305 where EQUIPID=@EquipID and SCHEDID=@SchedID  and PMDTLID = @PMDetailID and PMSTAT = @PMStatus and Meter_1_Level = @Meter1  and LSTPMDTE = @LastPMDate)  return(0)  insert into SVC00305  values(@EquipID,  @ItemNumber,  @SerialNumber,  @SchedID,  @PMDetailID,  @Meter1,  @Meter2,  @CALLNBR,  @LastPMDate,  @Meter1Reading,  @Meter2Reading,  @PMStatus,  @MinDate)    
GO
GRANT EXECUTE ON  [dbo].[SVC_Create_Serial_PM] TO [DYNGRP]
GO
