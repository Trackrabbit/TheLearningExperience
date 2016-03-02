SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE  PROCEDURE [dbo].[DE_ECONN_CREATECUSTOMER]  
@DEXROWID int,  
@O_iErrorState int OUTPUT,  
@oErrString varchar(255) OUTPUT  
AS  
  
  
  
DECLARE @RC int  
DECLARE @I_vCUSTNMBR char(15)  
DECLARE @I_vHOLD tinyint  
DECLARE @I_vINACTIVE tinyint  
DECLARE @I_vCUSTNAME char(64)  
DECLARE @I_vSHRTNAME char(15)  
DECLARE @I_vSTMTNAME char(64)  
DECLARE @I_vCUSTCLAS char(15)  
DECLARE @I_vCUSTPRIORITY smallint  
DECLARE @I_vADRSCODE char(15)  
DECLARE @I_vCNTCPRSN char(60)  
DECLARE @I_vADDRESS1 char(60)  
DECLARE @I_vADDRESS2 char(60)  
DECLARE @I_vADDRESS3 char(60)  
DECLARE @I_vCITY char(35)  
DECLARE @I_vSTATE char(29)  
DECLARE @I_vZIPCODE char(10)  
DECLARE @I_vCCode char(6)  
DECLARE @I_vCOUNTRY char(60)  
DECLARE @I_vPHNUMBR1 char(21)  
DECLARE @I_vPHNUMBR2 char(21)  
DECLARE @I_vPHNUMBR3 char(21)  
DECLARE @I_vFAX char(21)  
DECLARE @I_vUPSZONE char(3)  
DECLARE @I_vSHIPMTHD char(15)  
DECLARE @I_vTAXSCHID char(15)  
DECLARE @I_vSHIPCOMPLETE tinyint  
DECLARE @I_vPRSTADCD char(15)  
DECLARE @I_vPRBTADCD char(15)  
DECLARE @I_vSTADDRCD char(15)  
DECLARE @I_vSLPRSNID char(15)  
DECLARE @I_vSALSTERR char(15)  
DECLARE @I_vUSERDEF1 char(20)  
DECLARE @I_vUSERDEF2 char(20)  
DECLARE @I_vCOMMENT1 char(30)  
DECLARE @I_vCOMMENT2 char(30)  
DECLARE @I_vCUSTDISC numeric(19,2)  
DECLARE @I_vPYMTRMID char(20)  
DECLARE @I_vDISGRPER smallint  
DECLARE @I_vDUEGRPER smallint  
DECLARE @I_vPRCLEVEL char(10)  
DECLARE @I_vNOTETEXT varchar(8000)  
DECLARE @I_vBALNCTYP tinyint  
DECLARE @I_vFNCHATYP smallint  
DECLARE @I_vFNCHPCNT numeric(19,2)  
DECLARE @I_vFINCHDLR numeric(19,5)  
DECLARE @I_vMINPYTYP smallint  
DECLARE @I_vMINPYPCT numeric(19,2)  
DECLARE @I_vMINPYDLR numeric(19,5)  
DECLARE @I_vCRLMTTYP smallint  
DECLARE @I_vCRLMTAMT numeric(19,5)  
DECLARE @I_vCRLMTPER smallint  
DECLARE @I_vCRLMTPAM numeric(19,5)  
DECLARE @I_vMXWOFTYP smallint  
DECLARE @I_vMXWROFAM numeric(19,5)  
DECLARE @I_vRevalue_Customer tinyint  
DECLARE @I_vPost_Results_To smallint  
DECLARE @I_vORDERFULFILLDEFAULT tinyint  
DECLARE @I_vINCLUDEINDP tinyint  
DECLARE @I_vCRCARDID char(15)  
DECLARE @I_vCRCRDNUM char(20)  
DECLARE @I_vCCRDXPDT datetime  
DECLARE @I_vBANKNAME char(30)  
DECLARE @I_vBNKBRNCH char(20)  
DECLARE @I_vUSERLANG smallint  
DECLARE @I_vTAXEXMT1 char(25)  
DECLARE @I_vTAXEXMT2 char(25)  
DECLARE @I_vTXRGNNUM char(25)  
DECLARE @I_vCURNCYID char(15)  
DECLARE @I_vRATETPID char(15)  
DECLARE @I_vSTMTCYCL smallint  
DECLARE @I_vKPCALHST tinyint  
DECLARE @I_vKPERHIST tinyint  
DECLARE @I_vKPTRXHST tinyint  
DECLARE @I_vKPDSTHST tinyint  
DECLARE @I_vSend_Email_Statements tinyint  
DECLARE @I_vToEmail_Recipient char(80)  
DECLARE @I_vCcEmail_Recipient char(80)  
DECLARE @I_vBccEmail_Recipient char(80)  
DECLARE @I_vCHEKBKID char(15)  
DECLARE @I_vDEFCACTY smallint  
DECLARE @I_vRMCSHACTNUMST varchar(75)  
DECLARE @I_vRMARACTNUMST varchar(75)  
DECLARE @I_vRMSLSACTNUMST varchar(75)  
DECLARE @I_vRMCOSACTNUMST varchar(75)  
DECLARE @I_vRMIVACTNUMST varchar(75)  
DECLARE @I_vRMTAKACTNUMST varchar(75)  
DECLARE @I_vRMAVACTNUMST varchar(75)  
DECLARE @I_vRMFCGACTNUMST varchar(75)  
DECLARE @I_vRMWRACTNUMST varchar(75)  
DECLARE @I_vRMSORACTNUMST varchar(75)  
DECLARE @I_vRMOvrpymtWrtoffACTNUMST varchar(75)  
DECLARE @I_vGPSFOINTEGRATIONID char(30)  
DECLARE @I_vINTEGRATIONSOURCE smallint  
DECLARE @I_vINTEGRATIONID char(30)  
DECLARE @I_vUseCustomerClass tinyint  
DECLARE @I_vCreateAddress tinyint  
DECLARE @I_vUpdateIfExists tinyint  
DECLARE @I_vRequesterTrx smallint  
DECLARE @I_vUSRDEFND1 char(50)  
DECLARE @I_vUSRDEFND2 char(50)  
DECLARE @I_vUSRDEFND3 char(50)  
DECLARE @I_vUSRDEFND4 varchar(8000)  
DECLARE @I_vUSRDEFND5 varchar(8000)  
  

  
SELECT   
 @I_vCUSTNMBR = CUSTID  
--,@I_vHOLD=0  
--,@I_vINACTIVE=0  
,@I_vCUSTNAME=LEFT(CUSTNAME,64)  
,@I_vSHRTNAME=LEFT(CUSTNAME,15)  
,@I_vSTMTNAME=LEFT(CUSTNAME,64)  
,@I_vCUSTCLAS='BRCUSTOMER' --CLASS  
--,@I_vCUSTPRIORITY=1  
,@I_vADRSCODE='PRIMARY'  
,@I_vCNTCPRSN=BILLCONTACT  
,@I_vADDRESS1=BILLADDRESS1  
,@I_vADDRESS2=BILLADDRESS2  
,@I_vADDRESS3=BILLADDRESS3  
,@I_vCITY=BILLCITY  
,@I_vSTATE=BILLSTATE  
,@I_vZIPCODE=BILLZIP  
--,@I_vCCode=''  
,@I_vCOUNTRY=BILLCOUNTRY  
,@I_vPHNUMBR1=BILLPHONE1  
,@I_vPHNUMBR2=BILLPHONE2  
,@I_vPHNUMBR3=BILLPHONE3  
--,@I_vFAX=''  
--,@I_vUPSZONE=''  
--,@I_vSHIPMTHD=''  
--,@I_vTAXSCHID=''  
--,@I_vSHIPCOMPLETE=''  
--,@I_vPRSTADCD=''  
--,@I_vPRBTADCD=''  
--,@I_vSTADDRCD=''  
--,@I_vSLPRSNID=''  
--,@I_vSALSTERR=''  
--,@I_vUSERDEF1=''  
--,@I_vUSERDEF2=''  
--,@I_vCOMMENT1=''  
--,@I_vCOMMENT2=''  
--,@I_vCUSTDISC=0  
  ,@I_vPYMTRMID='Prepayment'  
--,@I_vDISGRPER=''  
--,@I_vDUEGRPER=''  
--,@I_vPRCLEVEL=''  
--,@I_vNOTETEXT=''  
--,@I_vBALNCTYP=0  
--,@I_vFNCHATYP=0  
--,@I_vFNCHPCNT=0  
--,@I_vFINCHDLR=0  
--,@I_vMINPYTYP=0  
--,@I_vMINPYPCT=0  
--,@I_vMINPYDLR=0  
--,@I_vCRLMTTYP=0  
--,@I_vCRLMTAMT=0  
--,@I_vCRLMTPER=0  
--,@I_vCRLMTPAM=0  
--,@I_vMXWOFTYP=0  
--,@I_vMXWROFAM=0  
--,@I_vRevalue_Customer=0  
--,@I_vPost_Results_To=0  
--,@I_vORDERFULFILLDEFAULT=1  
--,@I_vINCLUDEINDP=0  
--,@I_vCRCARDID=''  
--,@I_vCRCRDNUM=''  
--,@I_vCCRDXPDT=''  
--,@I_vBANKNAME=''  
--,@I_vBNKBRNCH=''  
--,@I_vUSERLANG=''  
--,@I_vTAXEXMT1=''  
--,@I_vTAXEXMT2=''  
--,@I_vTXRGNNUM=''  
--,@I_vCURNCYID=''  
--,@I_vRATETPID=''  
--,@I_vSTMTCYCL=5  
--,@I_vKPCALHST=1  
--,@I_vKPERHIST=1  
--,@I_vKPTRXHST=1  
--,@I_vKPDSTHST=1  
--,@I_vSend_Email_Statements=0  
--,@I_vToEmail_Recipient=''  
--,@I_vCcEmail_Recipient=''  
--,@I_vBccEmail_Recipient=''  
--,@I_vCHEKBKID=''  
--,@I_vDEFCACTY=0  
--,@I_vRMCSHACTNUMST=''  
--,@I_vRMARACTNUMST=''  
--,@I_vRMSLSACTNUMST=''  
--,@I_vRMCOSACTNUMST=''  
--,@I_vRMIVACTNUMST=''  
--,@I_vRMTAKACTNUMST=''  
--,@I_vRMAVACTNUMST=''  
--,@I_vRMFCGACTNUMST=''  
--,@I_vRMWRACTNUMST=''  
--,@I_vRMSORACTNUMST=''  
--,@I_vRMOvrpymtWrtoffACTNUMST=''  
--,@I_vGPSFOINTEGRATIONID=''  
--,@I_vINTEGRATIONSOURCE=''  
--,@I_vINTEGRATIONID=''  
,@I_vUseCustomerClass=CLASSROLLDOWN  
,@I_vCreateAddress=1  
,@I_vUpdateIfExists=1  
,@I_vRequesterTrx=1
,@I_vUSRDEFND1=''  
,@I_vUSRDEFND2=''  
,@I_vUSRDEFND3=''  
,@I_vUSRDEFND4=''  
,@I_vUSRDEFND5=''  
FROM ORDERHEADER WHERE DEX_ROW_ID = @DEXROWID  


 
--Retain payment terms if customer exists
IF EXISTS (SELECT * FROM dbo.RM00101 WHERE CUSTNMBR = @I_vCUSTNMBR)
SELECT @I_vPYMTRMID = PYMTRMID FROM dbo.RM00101 WHERE CUSTNMBR = @I_vCUSTNMBR


   
  
  
EXECUTE @RC = [dbo].[taUpdateCreateCustomerRcd]   
@I_vCUSTNMBR=@I_vCUSTNMBR
--,@I_vHOLD  
--,@I_vINACTIVE  
,@I_vCUSTNAME=@I_vCUSTNAME
,@I_vSHRTNAME=@I_vSHRTNAME
,@I_vSTMTNAME=@I_vSTMTNAME
,@I_vCUSTCLAS=@I_vCUSTCLAS
--,@I_vCUSTPRIORITY  
,@I_vADRSCODE=@I_vADRSCODE  
,@I_vCNTCPRSN=@I_vCNTCPRSN 
,@I_vADDRESS1=@I_vADDRESS1  
,@I_vADDRESS2=@I_vADDRESS2  
,@I_vADDRESS3=@I_vADDRESS3  
,@I_vCITY=@I_vCITY  
,@I_vSTATE=@I_vSTATE  
,@I_vZIPCODE=@I_vZIPCODE  
--,@I_vCCode  
,@I_vCOUNTRY=@I_vCOUNTRY  
,@I_vPHNUMBR1=@I_vPHNUMBR1  
,@I_vPHNUMBR2=@I_vPHNUMBR2  
,@I_vPHNUMBR3=@I_vPHNUMBR3  
--,@I_vFAX  
--,@I_vUPSZONE  
--,@I_vSHIPMTHD  
--,@I_vTAXSCHID  
--,@I_vSHIPCOMPLETE  
--,@I_vPRSTADCD  
--,@I_vPRBTADCD  
--,@I_vSTADDRCD  
--,@I_vSLPRSNID  
--,@I_vSALSTERR  
--,@I_vUSERDEF1  
--,@I_vUSERDEF2  
--,@I_vCOMMENT1  
--,@I_vCOMMENT2  
--,@I_vCUSTDISC  
  ,@I_vPYMTRMID=@I_vPYMTRMID
--,@I_vDISGRPER  
--,@I_vDUEGRPER  
--,@I_vPRCLEVEL  
--,@I_vNOTETEXT  
--,@I_vBALNCTYP  
--,@I_vFNCHATYP  
--,@I_vFNCHPCNT  
--,@I_vFINCHDLR  
--,@I_vMINPYTYP  
--,@I_vMINPYPCT  
--,@I_vMINPYDLR  
--,@I_vCRLMTTYP  
--,@I_vCRLMTAMT  
--,@I_vCRLMTPER  
--,@I_vCRLMTPAM  
--,@I_vMXWOFTYP  
--,@I_vMXWROFAM  
--,@I_vRevalue_Customer  
--,@I_vPost_Results_To  
--,@I_vORDERFULFILLDEFAULT  
--,@I_vINCLUDEINDP  
--,@I_vCRCARDID  
--,@I_vCRCRDNUM  
--,@I_vCCRDXPDT  
--,@I_vBANKNAME  
--,@I_vBNKBRNCH  
--,@I_vUSERLANG  
--,@I_vTAXEXMT1  
--,@I_vTAXEXMT2  
--,@I_vTXRGNNUM  
--,@I_vCURNCYID  
--,@I_vRATETPID  
--,@I_vSTMTCYCL  
--,@I_vKPCALHST  
--,@I_vKPERHIST  
--,@I_vKPTRXHST  
--,@I_vKPDSTHST  
--,@I_vSend_Email_Statements  
--,@I_vToEmail_Recipient  
--,@I_vCcEmail_Recipient  
--,@I_vBccEmail_Recipient  
--,@I_vCHEKBKID  
--,@I_vDEFCACTY  
--,@I_vRMCSHACTNUMST  
--,@I_vRMARACTNUMST  
--,@I_vRMSLSACTNUMST  
--,@I_vRMCOSACTNUMST  
--,@I_vRMIVACTNUMST  
--,@I_vRMTAKACTNUMST  
--,@I_vRMAVACTNUMST  
--,@I_vRMFCGACTNUMST  
--,@I_vRMWRACTNUMST  
--,@I_vRMSORACTNUMST  
--,@I_vRMOvrpymtWrtoffACTNUMST  
--,@I_vGPSFOINTEGRATIONID  
--,@I_vINTEGRATIONSOURCE  
--,@I_vINTEGRATIONID  
,@I_vUseCustomerClass=@I_vUseCustomerClass  
,@I_vCreateAddress=@I_vCreateAddress  
,@I_vUpdateIfExists=@I_vUpdateIfExists  
,@I_vRequesterTrx=@I_vRequesterTrx  
,@I_vUSRDEFND1=@I_vUSRDEFND1  
,@I_vUSRDEFND2=@I_vUSRDEFND2  
,@I_vUSRDEFND3=@I_vUSRDEFND3  
,@I_vUSRDEFND4=@I_vUSRDEFND4  
,@I_vUSRDEFND5=@I_vUSRDEFND5  
,@O_iErrorState=@O_iErrorState OUTPUT  
,@oErrString=@oErrString OUTPUT  



GO
GRANT EXECUTE ON  [dbo].[DE_ECONN_CREATECUSTOMER] TO [DYNGRP]
GO
