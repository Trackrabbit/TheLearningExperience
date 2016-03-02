SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_GetFiscalPeriod] (  @I_dDate datetime ,  @IO_sYear smallint = 0 OUTPUT,  @IO_sPeriod smallint = 0 OUTPUT,  @O_iErrorState int = 0 OUTPUT ) As set nocount on   declare  @I_sSeries smallint ,  @I_cOrigin char(50) ,  @I_dUserDate datetime ,  @IO_sClosingYear smallint ,  @IO_tClosed tinyint ,  @IO_iError int ,  @O_tPostingToHistory tinyint ,  @O_tPostBackToHistOver1Year tinyint ,  @O_tOpenYearExists tinyint ,  @O_tFirstTwoOpenYears tinyint   select @I_dUserDate = @I_dDate,  @I_sSeries = 0,   @I_cOrigin = '',  @IO_sPeriod = 0,  @IO_sYear = 0,  @IO_sClosingYear = 0,  @IO_tClosed = 0,  @IO_iError = 0,  @O_tPostingToHistory = 0,  @O_tPostBackToHistOver1Year = 0,  @O_tOpenYearExists = 0,  @O_tFirstTwoOpenYears = 0,  @O_iErrorState = 0  exec glVerifyTRXDate @I_sSeries ,@I_cOrigin , @I_dDate , @I_dUserDate , @IO_sPeriod output,  @IO_sYear output, @IO_sClosingYear  output, @IO_tClosed  output, @IO_iError  output,  @O_tPostingToHistory  output, @O_tPostBackToHistOver1Year output, @O_tOpenYearExists output,  @O_tFirstTwoOpenYears  output, @O_iErrorState output  return     
GO
GRANT EXECUTE ON  [dbo].[SVC_GetFiscalPeriod] TO [DYNGRP]
GO
