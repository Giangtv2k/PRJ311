USE [DemoPRJ]
GO
/****** Object:  Table [dbo].[Items]    Script Date: 3/8/2021 6:02:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Items](
	[ItemCode] [nchar](5) NOT NULL,
	[ItemName] [nvarchar](50) NULL,
	[SupCode] [nvarchar](5) NULL,
	[Unit] [nvarchar](10) NULL,
	[Price] [int] NULL,
	[supplying] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ItemCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 3/8/2021 6:02:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[SupCode] [nvarchar](5) NOT NULL,
	[SupName] [nvarchar](50) NULL,
	[Address] [nvarchar](100) NULL,
	[Colloborating] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[SupCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Items] ([ItemCode], [ItemName], [SupCode], [Unit], [Price], [supplying]) VALUES (N'E002 ', N'Keyboard', N'HT', N'block-1', 30, 0)
INSERT [dbo].[Items] ([ItemCode], [ItemName], [SupCode], [Unit], [Price], [supplying]) VALUES (N'E003 ', N'Labtop Asus', N'MT', N'1-unit', 500, 1)
GO
INSERT [dbo].[Suppliers] ([SupCode], [SupName], [Address], [Colloborating]) VALUES (N'HT', N'Hoang Tuan Co.', N'452, Tran Hung Dao, Q5, HCM', 1)
INSERT [dbo].[Suppliers] ([SupCode], [SupName], [Address], [Colloborating]) VALUES (N'MT', N'Minh Trang', N'37, Hai Ba Trung, Q1', 1)
INSERT [dbo].[Suppliers] ([SupCode], [SupName], [Address], [Colloborating]) VALUES (N'TA', N'Thien An Co.', N'123, Le Loi, Q1', 1)
GO
ALTER TABLE [dbo].[Items]  WITH CHECK ADD FOREIGN KEY([SupCode])
REFERENCES [dbo].[Suppliers] ([SupCode])
GO
