SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Update_Equip_Customer]  (@SerialNumber char(21),  @ItemNumber char(31),  @Customer char(15),  @AddressCode char(15),  @EquipID int output ) As  declare @NowDate datetime,  @NowTime datetime,  @NowDateTime datetime,  @InstockCustomer char(15),  @ReturnCustomer char(15),  @EquipStatus char(10)  declare @ADDRESS1 char(31)  declare @ADDRESS2 char(31)  declare @ADDRESS3 char(31)  declare @CITY char(31)  declare @STATE char(30)  declare @ZIP char(11)  declare @COUNTRY char(21)  declare @CNTCPRSN char(31)   select @NowDateTime = getdate() exec SVC_util_split_datetime @NowDateTime, @NowDate output, @NowTime output  select @InstockCustomer = SVC_InStock_Customer, @ReturnCustomer = RETCSTNR,  @EquipStatus = SRLSTAT from SVC00998  if exists(select * from SVC00300 where SERLNMBR = @SerialNumber and ITEMNMBR = @ItemNumber  and CUSTNMBR = @Customer)  begin  select @EquipID = EQUIPID from SVC00300 where SERLNMBR = @SerialNumber and ITEMNMBR = @ItemNumber  and CUSTNMBR = @Customer  update SVC00300 set SRLSTAT = @EquipStatus , INSTDTE = @NowDate where EQUIPID = @EquipID  return  end else if exists(select * from SVC00300 where SERLNMBR = @SerialNumber and ITEMNMBR = @ItemNumber  and CUSTNMBR = @InstockCustomer)  select @EquipID = EQUIPID from SVC00300 where SERLNMBR = @SerialNumber and ITEMNMBR = @ItemNumber  and CUSTNMBR = @InstockCustomer else if exists(select * from SVC00300 where SERLNMBR = @SerialNumber and ITEMNMBR = @ItemNumber  and CUSTNMBR = @ReturnCustomer)  select @EquipID = EQUIPID from SVC00300 where SERLNMBR = @SerialNumber and ITEMNMBR = @ItemNumber  and CUSTNMBR = @ReturnCustomer  select @CNTCPRSN = CNTCPRSN,  @ADDRESS1 = ADDRESS1,  @ADDRESS2 = ADDRESS2,  @ADDRESS3 = ADDRESS3,  @CITY = CITY,  @STATE = STATE,  @COUNTRY = COUNTRY,  @ZIP = ZIP from RM00102 where CUSTNMBR = @Customer and ADRSCODE = @AddressCode  if @EquipID > 0  update SVC00300 set SRLSTAT = @EquipStatus,  INSTDTE = @NowDate,  Shipped_Date = @NowDate,  CUSTNMBR = @Customer,  ADRSCODE = @AddressCode,  ADDRESS1 = @ADDRESS1,  ADDRESS2 = @ADDRESS2,  ADDRESS3 = @ADDRESS3,  CITY = @CITY,  STATE = @STATE,  ZIP = @ZIP,  COUNTRY = @COUNTRY,  CNTCPRSN = @CNTCPRSN  where EQUIPID = @EquipID  return    
GO
GRANT EXECUTE ON  [dbo].[SVC_Update_Equip_Customer] TO [DYNGRP]
GO
