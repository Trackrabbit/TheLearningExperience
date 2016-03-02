SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[glGetAccountSegmentColumns] (  @I_cTablePrefix char(30),  @I_tAddIsNullWrapper tinyint = 0 ) RETURNS char(1000) AS BEGIN  DECLARE @SQL varchar(4000) DECLARE @NUMBER_OF_SEGMENTS smallint DECLARE @SEGMENT smallint DECLARE @LOOP tinyint declare @PRE varchar(31) declare @ADDSTR varchar(50)  select @NUMBER_OF_SEGMENTS = MXNUMSEG from DYNAMICS.dbo.SY003001 set @PRE = ltrim(rtrim(isnull(@I_cTablePrefix, ''))) set @SQL = ''  if @PRE <> '' begin  set @PRE = @PRE + '.' end  SET @SEGMENT = 1 WHILE @SEGMENT <= @NUMBER_OF_SEGMENTS BEGIN  SET @ADDSTR = @PRE + 'ACTNUMBR_' + ltrim(rtrim(str(@SEGMENT)))  if @I_tAddIsNullWrapper = 1  begin  SET @ADDSTR = 'ISNULL(' + @ADDSTR + ','' '')'  end  SET @SQL = @SQL + @ADDSTR + ', '  SET @SEGMENT = @SEGMENT + 1 END  return @SQL END   
GO
GRANT EXECUTE ON  [dbo].[glGetAccountSegmentColumns] TO [DYNGRP]
GO
