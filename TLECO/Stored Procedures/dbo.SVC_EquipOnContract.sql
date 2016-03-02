SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_EquipOnContract]   (@EquipID integer,  @CheckDate datetime,  @Exists tinyint OUTPUT,  @ContractType smallint OUTPUT,  @Contract char(11) OUTPUT,  @ContractLine numeric(19,5) OUTPUT,  @ContractStart datetime OUTPUT,  @ContractEnd datetime OUTPUT,  @ResponseTime varchar(10) OUTPUT) AS select @Exists = 0,  @ContractType = 0,  @Contract = '',  @ContractLine = 0,  @ContractStart = '01/01/1900 00:00:00',  @ContractEnd = '01/01/1900 00:00:00',  @ResponseTime = '' IF EXISTS (select * from SVC00601 where CONSTS = 2 and EQUIPID = @EquipID and   STRTDATE <= @CheckDate and ENDDATE >= @CheckDate) BEGIN  select @Exists = 1  select @ContractType = CONSTS,  @Contract = CONTNBR,  @ContractLine = LNSEQNBR,  @ContractStart = STRTDATE,  @ContractEnd = ENDDATE,  @ResponseTime = Contract_Response_Time   from SVC00601 where CONSTS = 2 and EQUIPID = @EquipID and   STRTDATE <= @CheckDate and ENDDATE >= @CheckDate END    
GO
GRANT EXECUTE ON  [dbo].[SVC_EquipOnContract] TO [DYNGRP]
GO
