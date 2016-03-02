SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[taAnalyticsDistributionPost]  @I_vDOCNMBR varchar(50),       @I_vDOCTYPE smallint,      @I_vAMOUNT numeric (19,5),    @I_vaaAssignedPercent numeric(5,2),    @I_vDistSequence int,     @I_vACTNUMST varchar(75),    @I_vACTINDX int,     @I_vDistRef char (31),      @I_vNOTETEXT varchar(8000),    @I_vaaTrxDim char(31),     @I_vaaTrxDimCode char(31),    @I_vaaTrxDimCodeNum numeric(19,5),   @I_vaaTrxDimCodeBool smallint,    @I_vaaTrxDimCodeDate datetime,    @I_vaaTrxDimID int,     @I_vaaTrxCodeID int,     @I_vaaSubLedgerHdrID int,    @I_vaaSubLedgerDistID int,    @I_vaaSubLedgerAssignID int,    @I_vUpdateIfExists smallint,    @I_vRequesterTrx smallint,    @I_vUSRDEFND1  char(50),    @I_vUSRDEFND2  char(50),    @I_vUSRDEFND3  char(50),    @I_vUSRDEFND4  varchar(8000),    @I_vUSRDEFND5  varchar(8000),    @I_vSeries smallint,      @O_iErrorState int output,    @oErrString varchar(255) output   as set nocount on select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taAnalyticsDistributionPost] TO [DYNGRP]
GO
