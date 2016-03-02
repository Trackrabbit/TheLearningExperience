SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
Create PROCEDURE [dbo].[DE_EXP_ECONN_CREATEADDRESS]  

 
@CUSTNMBR char(15)   
,@ADRSCODE char(15)   
,@ADDRESS1 char(60)  
,@ADDRESS2 char(60)  
,@ADDRESS3 char(60)  
,@CITY char(35)  
,@STATE char(29)  
,@ZIPCODE char(10)   
,@COUNTRY char(60)  
,@PHNUMBR1 char(21)  
,@PHNUMBR2 char(21)  
,@PHNUMBR3 char(21)
,@CNTCPRSN char(60)=''  
AS  
Declare @RC int
Declare @ErrorState int
DECLARE @ErrorString varchar(255) 
DECLARE @ErrorMessage nvarchar(max) 
  
DECLARE @I_O_iErrorState int
DECLARE @I_oErrString varchar(255)

Begin 
EXECUTE @RC = [taCreateCustomerAddress]   
@I_vCUSTNMBR=@CUSTNMBR
,@I_vADRSCODE=@ADRSCODE
,@I_vADDRESS1=@ADDRESS1
,@I_vADDRESS2=@ADDRESS2
,@I_vADDRESS3=@ADDRESS3
,@I_vCOUNTRY=@COUNTRY
,@I_vCITY=@CITY
,@I_vSTATE=@STATE
,@I_vZIPCODE=@ZIPCODE
,@I_vPHNUMBR1=@PHNUMBR1
,@I_vPHNUMBR2=@PHNUMBR2
,@I_vPHNUMBR3=@PHNUMBR3
,@I_vCCode='US'
,@I_vCNTCPRSN=@CNTCPRSN
,@O_iErrorState=@I_O_iErrorState OUTPUT  
,@oErrString=@I_oErrString OUTPUT 
END
GO
GRANT EXECUTE ON  [dbo].[DE_EXP_ECONN_CREATEADDRESS] TO [DYNGRP]
GO
