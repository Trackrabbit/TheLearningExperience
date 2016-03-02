SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_BS466000SI] (@BSSI_Template_ID char(25), @BSSI_Description2 char(51), @BSSI_Allocation_Method smallint, @BSSI_Charge_ID char(25), @BSSI_MarkUp_MarkDown numeric(19,5), @BSSI_Default_ numeric(19,5), @NOTEINDX numeric(19,5), @BSSI_Facility_ID char(67), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .BS466000 (BSSI_Template_ID, BSSI_Description2, BSSI_Allocation_Method, BSSI_Charge_ID, BSSI_MarkUp_MarkDown, BSSI_Default_, NOTEINDX, BSSI_Facility_ID) VALUES ( @BSSI_Template_ID, @BSSI_Description2, @BSSI_Allocation_Method, @BSSI_Charge_ID, @BSSI_MarkUp_MarkDown, @BSSI_Default_, @NOTEINDX, @BSSI_Facility_ID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_BS466000SI] TO [DYNGRP]
GO
