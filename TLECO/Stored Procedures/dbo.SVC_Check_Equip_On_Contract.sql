SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_Check_Equip_On_Contract] (@EquipID int,  @UserDate datetime,  @ContractType smallint output,  @ContractNumber char(11) output,  @Line numeric(19,5) output)  as  select @ContractType = CONSTS, @ContractNumber = CONTNBR, @Line = LNSEQNBR from SVC00601  where EQUIPID = @EquipID and @UserDate < ENDDATE and Contract_Line_Status <> 'C'  and Contract_Line_Status <> 'E' select @ContractType = isnull(@ContractType,0), @ContractNumber = isnull(@ContractNumber,'') return     
GO
GRANT EXECUTE ON  [dbo].[SVC_Check_Equip_On_Contract] TO [DYNGRP]
GO
