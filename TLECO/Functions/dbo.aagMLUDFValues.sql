SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create    function [dbo].[aagMLUDFValues] (@aaTrxDimID int, @aaTrxDimCodeID int, @aaUDFID int,@aaUDFString nvarchar(500)) returns nvarchar(500) as  begin declare @aaUDFStr nvarchar(500), @aaUDFText nvarchar(100),  @aaUDFDate datetime, @aaUDFNumeric numeric(19,5), @aaUDFBoolean tinyint  if @aaUDFID in (1,2,3,4,5)  begin  select @aaUDFText = aaUDFText from AAG01002 where aaTrxDimID = @aaTrxDimID and  aaTrxDimCodeID = @aaTrxDimCodeID and aaUDFID = @aaUDFID  set @aaUDFStr =  rtrim(@aaUDFString) + space(1)+':'+space(1)+rtrim(@aaUDFText) end if @aaUDFID in (6,7,8,9,10) begin select @aaUDFDate = aaUDFDate from AAG01002 where aaTrxDimID = @aaTrxDimID and  aaTrxDimCodeID = @aaTrxDimCodeID and aaUDFID = @aaUDFID set @aaUDFStr =  rtrim(@aaUDFString) + space(1)+':'+space(1)+ltrim(convert(char(11),@aaUDFDate,13))  end if @aaUDFID in (11,12,13,14,15)  begin select @aaUDFNumeric = aaUDFNumeric from AAG01002 where aaTrxDimID = @aaTrxDimID and  aaTrxDimCodeID = @aaTrxDimCodeID and aaUDFID = @aaUDFID set @aaUDFStr =  rtrim(@aaUDFString) + space(1)+':'+space(1)+ltrim(convert(nvarchar,@aaUDFNumeric)) end  if @aaUDFID in (16,17,18,19,20)  begin select @aaUDFBoolean =  aaUDFBoolean   from AAG01002 where aaTrxDimID = @aaTrxDimID and  aaTrxDimCodeID = @aaTrxDimCodeID and aaUDFID = @aaUDFID set @aaUDFStr =  rtrim(@aaUDFString) + space(1)+':'+space(1)+ltrim(convert(nvarchar,case @aaUDFBoolean when 1 then 'Yes' else 'No' end )) end  return @aaUDFStr end    
GO
GRANT EXECUTE ON  [dbo].[aagMLUDFValues] TO [DYNGRP]
GO
