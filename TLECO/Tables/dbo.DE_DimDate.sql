CREATE TABLE [dbo].[DE_DimDate]
(
[PK_Date] [datetime] NULL,
[SK_Date] [int] NULL,
[Date_Name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Year] [datetime] NULL,
[Year_Name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Quarter] [datetime] NULL,
[Quarter_Name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Month] [datetime] NULL,
[Month_Name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Week] [datetime] NULL,
[Week_Name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Day_Of_Year] [int] NULL,
[Day_Of_Year_Name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Day_Of_Quarter] [int] NULL,
[Day_Of_Quarter_Name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Day_Of_Month] [int] NULL,
[Day_Of_Month_Name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Day_Of_Week] [int] NULL,
[Day_Of_Week_Name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Week_Of_Year] [int] NULL,
[Week_Of_Year_Name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Month_Of_Year] [int] NULL,
[Month_Of_Year_Name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Month_Of_Quarter] [int] NULL,
[Month_Of_Quarter_Name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Quarter_Of_Year] [int] NULL,
[Quarter_Of_Year_Name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[DE_DimDate] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[DE_DimDate] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[DE_DimDate] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[DE_DimDate] TO [DYNGRP]
GO
