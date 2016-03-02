SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE function [dbo].[de_UnCamelCase](@Text as varchar(max))
returns varchar(max)
as
begin
   declare @Reset bit;
   declare @Ret varchar(8000);
   declare @i int;
   declare @c char(1);

   select @Reset = 1, @i=1, @Ret = '';

   while (@i <= len(@Text))
    select @c= substring(@Text,@i,1),
               @Ret = @Ret + case when ASCII(@c) between 65 AND 90 then space(1) + @c else @c end,
               @i = @i +1
   return @Ret
end
GO
