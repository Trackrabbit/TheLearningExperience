SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Replace_Equipment_Customer] (   @SopType smallint,   @SopNumber char(15),  @ItemNumber char(30),   @SerialNumber char(20),   @Customer char(15)  )  as  declare @ReturnCustomer char(15),   @addresscode char(15),   @address1 char(31),   @address2 char(31),   @address3 char(31),   @city char(31),   @statecd char(30),   @zip char(11),   @country char(21),   @cntcprsn char(31),   @timezone char(3),   @EquipID int,   @OldEquipID int,  @UserID char(15),   @FromCustomer char(15),   @ReturnStatus char(11),   @SerialStatus char(11),   @InstockCustomer char(15),   @ServiceArea char(10),   @OfficeID char(10),   @TechID char(10) ,  @CallNumber char(12),  @SRVRecType smallint,  @ReturnDoc char(15),  @CustOwned tinyint  select @InstockCustomer = SVC_InStock_Customer, @ReturnCustomer = RETCSTNR, @ReturnStatus= RETSTATUS, @SerialStatus=SRLSTAT from SVC00998 select @UserID = system_user if @SopType = 3   begin  select @OldEquipID = EQUIPID from SVC00300 where ITEMNMBR = @ItemNumber and SERLNMBR = @SerialNumber and CUSTNMBR = @Customer  if exists(select * from SVC00300 where ITEMNMBR = @ItemNumber and SERLNMBR = @SerialNumber and CUSTNMBR = @ReturnCustomer)  begin  if @OldEquipID > 0  delete from SVC00300 where EQUIPID = @OldEquipID   select @addresscode = RM00101.ADRSCODE,@address1=ADDRESS1,@address2=ADDRESS2,@address3=ADDRESS3,@city=CITY,@statecd=STATE,  @zip=ZIP,@country=COUNTRY,@cntcprsn=CNTCPRSN,@timezone=TIMEZONE, @ServiceArea= SVCAREA,@OfficeID= OFFID, @TechID=TECHID  from RM00101 left join SVC00950 on   RM00101.CUSTNMBR = SVC00950.CUSTNMBR and RM00101.ADRSCODE = SVC00950.ADRSCODE where RM00101.CUSTNMBR = @Customer  update SVC00300 set  SRLSTAT = @SerialStatus,  CUSTNMBR = @Customer,  ADRSCODE = isnull(@addresscode,''),  ADDRESS1 = isnull(@address1,''),  ADDRESS2 = isnull(@address2,''),  ADDRESS3 = isnull(@address3,''),  CITY = isnull(@city,''),  STATE = isnull(@statecd,''),  ZIP = isnull(@zip,''),  COUNTRY = isnull(@country,''),  CNTCPRSN = isnull(@cntcprsn,''),  TIMEZONE = isnull(@timezone,''),  SVCAREA = isnull(@ServiceArea, SVCAREA),  OFFID = isnull(@OfficeID,OFFID),  TECHID = isnull(@TechID,TECHID)  where ITEMNMBR = @ItemNumber and SERLNMBR = @SerialNumber and CUSTNMBR = @ReturnCustomer  select @EquipID = EQUIPID from SVC00300 where ITEMNMBR = @ItemNumber and SERLNMBR = @SerialNumber and CUSTNMBR = @Customer  select @FromCustomer = @ReturnCustomer  exec SVC_Create_Serial_Audit @EquipID,@FromCustomer,@SerialNumber,@ItemNumber,'Replace Customer-SOP Posting',@UserID  end  else if exists(select * from SVC00300 where ITEMNMBR = @ItemNumber and SERLNMBR = @SerialNumber and CUSTNMBR = @InstockCustomer)   begin  if @OldEquipID > 0  delete from SVC00300 where EQUIPID = @OldEquipID   select @addresscode = RM00101.ADRSCODE,@address1=ADDRESS1,@address2=ADDRESS2,@address3=ADDRESS3,@city=CITY,@statecd=STATE,  @zip=ZIP,@country=COUNTRY,@cntcprsn=CNTCPRSN,@timezone=TIMEZONE, @ServiceArea= SVCAREA,@OfficeID= OFFID, @TechID=TECHID  from RM00101 left join SVC00950 on   RM00101.CUSTNMBR = SVC00950.CUSTNMBR and RM00101.ADRSCODE = SVC00950.ADRSCODE where RM00101.CUSTNMBR = @Customer  update SVC00300 set  SRLSTAT = @SerialStatus,  CUSTNMBR = @Customer,  ADRSCODE = isnull(@addresscode,''),  ADDRESS1 = isnull(@address1,''),  ADDRESS2 = isnull(@address2,''),  ADDRESS3 = isnull(@address3,''),  CITY = isnull(@city,''),  STATE = isnull(@statecd,''),  ZIP = isnull(@zip,''),  COUNTRY = isnull(@country,''),  CNTCPRSN = isnull(@cntcprsn,''),  TIMEZONE = isnull(@timezone,''),  SVCAREA = isnull(@ServiceArea, SVCAREA),  OFFID = isnull(@OfficeID,OFFID),  TECHID = isnull(@TechID,TECHID)  where ITEMNMBR = @ItemNumber and SERLNMBR = @SerialNumber and CUSTNMBR = @InstockCustomer  select @EquipID = EQUIPID from SVC00300 where ITEMNMBR = @ItemNumber and SERLNMBR = @SerialNumber and CUSTNMBR = @Customer  select @FromCustomer = @InstockCustomer  exec SVC_Create_Serial_Audit @EquipID,@FromCustomer,@SerialNumber,@ItemNumber,'Replace Customer-SOP Posting',@UserID  end  end else   begin  if exists(select * from SVC00300 where ITEMNMBR = @ItemNumber and SERLNMBR = @SerialNumber)  begin  SET @CustOwned = 0  SELECT TOP 1 @SRVRecType = SRVRECTYPE, @CallNumber =  CALLNBR FROM SVC00220 WHERE SOPTYPE = @SopType AND SOPNUMBE = @SopNumber  IF @CallNumber <> ''  BEGIN  SELECT TOP 1 @ReturnDoc = SVC05200.RETDOCID, @CustOwned = SVC05200.CUSTOWN FROM SVC05200, SVC05000, SVC05255  WHERE (SVC05000.CALLNBR = @CallNumber AND SVC05000.SRVRECTYPE = @SRVRecType)  AND (SVC05200.RETDOCID = SVC05000.RETDOCID AND SVC05200.Return_Record_Type = SVC05000.Return_Record_Type)  AND (SVC05200.ITEMNMBR = @ItemNumber)  AND (SVC05200.RETDOCID = SVC05255.RETDOCID AND SVC05200.Return_Record_Type = SVC05255.Return_Record_Type  AND SVC05255.Return_Item_Number = @ItemNumber AND SVC05255.Return_Serial_Number = @SerialNumber  AND SVC05200.LNSEQNBR = SVC05255.LNSEQNBR)  END  IF @CustOwned = 0  BEGIN  select @addresscode = RM00101.ADRSCODE,@address1=ADDRESS1,@address2=ADDRESS2,@address3=ADDRESS3,  @city=CITY,@statecd=STATE, @zip=ZIP,@country=COUNTRY,@cntcprsn=CNTCPRSN,@timezone=TIMEZONE   from RM00101 left join SVC00950 on RM00101.CUSTNMBR = SVC00950.CUSTNMBR and RM00101.ADRSCODE = SVC00950.ADRSCODE   where RM00101.CUSTNMBR = @ReturnCustomer   update SVC00300 set SRLSTAT = @ReturnStatus, CUSTNMBR = @ReturnCustomer, ADRSCODE = isnull(@addresscode,''),   ADDRESS1 = isnull(@address1,''), ADDRESS2 = isnull(@address2,''), ADDRESS3 = isnull(@address3,''),   CITY = isnull(@city,''), STATE = isnull(@statecd,''), ZIP = isnull(@zip,''), COUNTRY = isnull(@country,''),   CNTCPRSN = isnull(@cntcprsn,''), TIMEZONE = isnull(@timezone,'')   where ITEMNMBR = @ItemNumber and SERLNMBR = @SerialNumber   select @EquipID = EQUIPID from SVC00300 where ITEMNMBR = @ItemNumber and SERLNMBR = @SerialNumber and CUSTNMBR = @ReturnCustomer   select @FromCustomer = @Customer   exec SVC_Create_Serial_Audit @EquipID,@FromCustomer,@SerialNumber,@ItemNumber,'Replace Customer-SOP Posting',@UserID   END  end end return    
GO
GRANT EXECUTE ON  [dbo].[SVC_Replace_Equipment_Customer] TO [DYNGRP]
GO