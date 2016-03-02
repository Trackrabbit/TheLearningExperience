SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IF000002SI] (@SGMNTID char(67), @if_fund_account_index int, @if_cfct_account_index int, @ACTDESCR char(51), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .IF000002 (SGMNTID, if_fund_account_index, if_cfct_account_index, ACTDESCR) VALUES ( @SGMNTID, @if_fund_account_index, @if_cfct_account_index, @ACTDESCR) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IF000002SI] TO [DYNGRP]
GO
