SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_RMA_Update_Line_Customer] (  @RMANumber char(15) ) AS  declare @Customer char(15) declare @AddressCode char(15) declare @Contact char(30) declare @custname varchar(65) declare @address1 varchar(31) declare @address2 varchar(31) declare @address3 varchar(31) declare @city varchar(31) declare @statecd varchar(30) declare @zip varchar(11) declare @Country char(21) declare @BILLTOCUST char(15) declare @BILLTOADDRESS char(15)  select  @Customer = CUSTNMBR, @custname = CUSTNAME, @AddressCode = ADRSCODE, @Contact = CONTACT,   @address1 = ADDRESS1, @address2 = ADDRESS2, @address3 = ADDRESS3, @city = CITY, @statecd = STATE,  @zip = ZIPCODE, @Country = COUNTRY, @BILLTOCUST = Bill_To_Customer, @BILLTOADDRESS = SVC_Bill_To_Address_Code  from SVC05000 where Return_Record_Type = 1 and RETDOCID = @RMANumber update SVC05200 with (rowlock) set CUSTNMBR = @Customer, CUSTNAME = @custname, ADRSCODE = @AddressCode, CONTACT = isnull(@Contact,''),  ADDRESS1 = isnull(@address1,''), ADDRESS2 = isnull(@address2,''), ADDRESS3 = isnull(@address3,''), CITY = isnull(@city,''), STATE = isnull(@statecd,''), ZIPCODE = isnull(@zip,''),  COUNTRY = isnull(@Country,''), Bill_To_Customer = isnull(@BILLTOCUST,''), SVC_Bill_To_Address_Code = isnull(@BILLTOADDRESS,'')  where Return_Record_Type = 1 and RETDOCID = @RMANumber  return    
GO
GRANT EXECUTE ON  [dbo].[SVC_RMA_Update_Line_Customer] TO [DYNGRP]
GO
