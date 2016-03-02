SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Does_Option_Apply](  @PRICSHED char(11),  @ITMCLSCD char(11),  @ITEMNMBR char(31),  @CUSTCLAS char(15),  @CUSTNMBR char(15),  @OPTTYPE char(11),  @Valid integer output  ) As if  @ITMCLSCD = '' and  @ITEMNMBR = '' and  @CUSTCLAS = '' and  @CUSTNMBR = ''  BEGIN  if exists (select * from SVC00651 where @OPTTYPE=OPTTYPE and @PRICSHED=PRICSHED)  BEGIN  select @Valid = 1  return (0)  END  ELSE  BEGIN  select @Valid = 0  return (0)  END  END ELSE  BEGIN  if exists (select * from SVC00651 where @OPTTYPE=OPTTYPE and   @PRICSHED=PRICSHED and  @ITMCLSCD=ITMCLSCD and  @ITEMNMBR=ITEMNMBR and  @CUSTCLAS=CUSTCLAS and  @CUSTNMBR=CUSTNMBR)  BEGIN  select @Valid = 1  return (0)  END  ELSE  BEGIN  select @Valid = 0  return (0)  END  END  return (-1)    
GO
GRANT EXECUTE ON  [dbo].[SVC_Does_Option_Apply] TO [DYNGRP]
GO
