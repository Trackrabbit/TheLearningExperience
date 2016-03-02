CREATE TABLE [dbo].[CO00123]
(
[FieldsListGuid] [char] (37) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ConditionsGuid] [char] (37) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[FromTable] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FromField] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FromDictID] [smallint] NOT NULL,
[FromFieldListSequence] [int] NOT NULL,
[ToTable] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ToField] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ToDictID] [smallint] NOT NULL,
[ToFieldListSequence] [int] NOT NULL,
[FieldDataType] [smallint] NOT NULL,
[FieldComparison] [tinyint] NOT NULL,
[QueryOperator] [smallint] NOT NULL,
[QueryConditon] [smallint] NOT NULL,
[StringFilter_1] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[StringFilter_2] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IntegerFilter_1] [int] NOT NULL,
[IntegerFilter_2] [int] NOT NULL,
[NumericFilter_1] [numeric] (19, 5) NOT NULL,
[NumericFilter_2] [numeric] (19, 5) NOT NULL,
[DateFilter_1] [datetime] NOT NULL,
[DateFilter_2] [datetime] NOT NULL,
[TimeFilter_1] [datetime] NOT NULL,
[TimeFilter_2] [datetime] NOT NULL,
[EnumFilter] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO00123] ADD CONSTRAINT [CK__CO00123__TimeFil__727A8EA3] CHECK ((datepart(day,[TimeFilter_1])=(1) AND datepart(month,[TimeFilter_1])=(1) AND datepart(year,[TimeFilter_1])=(1900)))
GO
ALTER TABLE [dbo].[CO00123] ADD CONSTRAINT [CK__CO00123__TimeFil__736EB2DC] CHECK ((datepart(day,[TimeFilter_2])=(1) AND datepart(month,[TimeFilter_2])=(1) AND datepart(year,[TimeFilter_2])=(1900)))
GO
ALTER TABLE [dbo].[CO00123] ADD CONSTRAINT [CK__CO00123__DateFil__70924631] CHECK ((datepart(hour,[DateFilter_1])=(0) AND datepart(minute,[DateFilter_1])=(0) AND datepart(second,[DateFilter_1])=(0) AND datepart(millisecond,[DateFilter_1])=(0)))
GO
ALTER TABLE [dbo].[CO00123] ADD CONSTRAINT [CK__CO00123__DateFil__71866A6A] CHECK ((datepart(hour,[DateFilter_2])=(0) AND datepart(minute,[DateFilter_2])=(0) AND datepart(second,[DateFilter_2])=(0) AND datepart(millisecond,[DateFilter_2])=(0)))
GO
ALTER TABLE [dbo].[CO00123] ADD CONSTRAINT [PKCO00123] PRIMARY KEY NONCLUSTERED  ([FieldsListGuid], [ConditionsGuid], [SEQNUMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CO00123].[FieldsListGuid]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CO00123].[ConditionsGuid]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO00123].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CO00123].[FromTable]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CO00123].[FromField]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO00123].[FromDictID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO00123].[FromFieldListSequence]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CO00123].[ToTable]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CO00123].[ToField]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO00123].[ToDictID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO00123].[ToFieldListSequence]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO00123].[FieldDataType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO00123].[FieldComparison]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO00123].[QueryOperator]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO00123].[QueryConditon]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CO00123].[StringFilter_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CO00123].[StringFilter_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO00123].[IntegerFilter_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO00123].[IntegerFilter_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CO00123].[NumericFilter_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CO00123].[NumericFilter_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CO00123].[DateFilter_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CO00123].[DateFilter_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CO00123].[TimeFilter_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CO00123].[TimeFilter_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CO00123].[EnumFilter]'
GO
GRANT SELECT ON  [dbo].[CO00123] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[CO00123] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[CO00123] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[CO00123] TO [DYNGRP]
GO
