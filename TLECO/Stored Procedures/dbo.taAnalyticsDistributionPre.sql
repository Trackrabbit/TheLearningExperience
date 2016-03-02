SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[taAnalyticsDistributionPre]  @I_vDOCNMBR varchar(50) output,       @I_vDOCTYPE smallint output,     @I_vAMOUNT numeric (19,5) output,   @I_vaaAssignedPercent numeric(5,2) output,   @I_vDistSequence int output,    @I_vACTNUMST varchar(75) output,   @I_vACTINDX int output,     @I_vDistRef char (31) output,     @I_vNOTETEXT varchar(8000) output,   @I_vaaTrxDim char(31) output,    @I_vaaTrxDimCode char(31) output,   @I_vaaTrxDimCodeNum numeric(19,5)output,  @I_vaaTrxDimCodeBool smallint output,   @I_vaaTrxDimCodeDate datetime output,   @I_vaaTrxDimID int output,    @I_vaaTrxCodeID int output,    @I_vaaSubLedgerHdrID int output,   @I_vaaSubLedgerDistID int output,   @I_vaaSubLedgerAssignID int output,   @I_vUpdateIfExists smallint output,   @I_vRequesterTrx smallint output,   @I_vUSRDEFND1  char(50) output,   @I_vUSRDEFND2  char(50) output,   @I_vUSRDEFND3  char(50) output,   @I_vUSRDEFND4  varchar(8000) output,   @I_vUSRDEFND5  varchar(8000) output,   @I_vSeries smallint output,      @O_iErrorState int output,    @oErrString varchar(255) output   as set nocount on select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taAnalyticsDistributionPre] TO [DYNGRP]
GO
