USE [EBricksDB]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 17-04-2019 17:29:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Gender] [nvarchar](10) NULL,
	[ContactNo] [nvarchar](15) NULL,
	[Address] [nvarchar](200) NULL,
	[ImagePath] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[Username] [nvarchar](100) NULL,
	[UserRole] [nvarchar](15) NULL,
	[Password] [nvarchar](max) NULL,
	[Salt] [nvarchar](max) NULL,
	[ResetCode] [nvarchar](max) NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bookings]    Script Date: 17-04-2019 17:29:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bookings](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[BookingDate] [date] NULL,
	[Quantity] [int] NULL,
	[ProductId] [bigint] NULL,
	[CustomerId] [int] NULL,
	[AddressId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Categories]    Script Date: 17-04-2019 17:29:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductImages]    Script Date: 17-04-2019 17:29:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImages](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ImagePath] [nvarchar](100) NULL,
	[ProductId] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 17-04-2019 17:29:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductCode] [nvarchar](100) NULL,
	[ProductName] [nvarchar](200) NULL,
	[CompanyName] [nvarchar](200) NULL,
	[Price] [int] NULL,
	[Unit] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[IsAvailable] [bit] NULL,
	[PostedBy] [int] NULL,
	[CategoryId] [int] NULL,
	[MRP] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ShippingAddress]    Script Date: 17-04-2019 17:29:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShippingAddress](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PostalCode] [nvarchar](20) NULL,
	[Locality] [nvarchar](250) NULL,
	[City] [nvarchar](50) NULL,
	[District] [nvarchar](50) NULL,
	[AccountId] [int] NULL,
	[ContactNo] [nvarchar](15) NULL,
	[Landmark] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Accounts] ON 

INSERT [dbo].[Accounts] ([Id], [Name], [Gender], [ContactNo], [Address], [ImagePath], [Email], [Username], [UserRole], [Password], [Salt], [ResetCode], [IsActive]) VALUES (1, N'Furqan', N'Male', N'788987998799', N'Rajbagh', N'/Images/DP/070420190200541919.jpg', N'furqan@gmail.com', N'furqan', N'Admin', N'swXxBe5hngovLpEfUygo5iq/vAlo/HzwGCsR97nQ340=', N'sSUExIScfoFmXequBLPA3PzsltU=', NULL, 1)
INSERT [dbo].[Accounts] ([Id], [Name], [Gender], [ContactNo], [Address], [ImagePath], [Email], [Username], [UserRole], [Password], [Salt], [ResetCode], [IsActive]) VALUES (2, N'Shahid', N'Male', N'8989898987', N'Rajbagh', N'/Images/DP/080420190542264223.jpg', N'wizshahid@gmail.com', N'Shahid', N'User', N'v0btIEYy4FA8ksUkX4yJA75raKfzNFlXrfOMHgh8c0w=', N'SRaxlxjgh/aTIqkSO6ANRrcNOZI=', NULL, 1)
SET IDENTITY_INSERT [dbo].[Accounts] OFF
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [CategoryName]) VALUES (1, N'Bricks')
INSERT [dbo].[Categories] ([Id], [CategoryName]) VALUES (2, N'Sand')
INSERT [dbo].[Categories] ([Id], [CategoryName]) VALUES (3, N'Marble')
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[ProductImages] ON 

INSERT [dbo].[ProductImages] ([Id], [ImagePath], [ProductId]) VALUES (10008, N'/Images/ProductImages/120420190429328658.jpg', 4)
INSERT [dbo].[ProductImages] ([Id], [ImagePath], [ProductId]) VALUES (10009, N'/Images/ProductImages/120420190429328768.jpg', 4)
INSERT [dbo].[ProductImages] ([Id], [ImagePath], [ProductId]) VALUES (10010, N'/Images/ProductImages/120420190429328857.jpg', 4)
INSERT [dbo].[ProductImages] ([Id], [ImagePath], [ProductId]) VALUES (10011, N'/Images/ProductImages/120420190429328938.jpg', 4)
SET IDENTITY_INSERT [dbo].[ProductImages] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [ProductCode], [ProductName], [CompanyName], [Price], [Unit], [Description], [IsAvailable], [PostedBy], [CategoryId], [MRP]) VALUES (4, N'Sand21', N'A1  Sand', N'Al Furqan Sand', 7000, N'per Truck', N'Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. Buy Sand at cheapest Rate. ', 1, 1, 2, 8000)
SET IDENTITY_INSERT [dbo].[Products] OFF
ALTER TABLE [dbo].[Bookings]  WITH CHECK ADD FOREIGN KEY([AddressId])
REFERENCES [dbo].[ShippingAddress] ([Id])
GO
ALTER TABLE [dbo].[Bookings]  WITH CHECK ADD FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Accounts] ([Id])
GO
ALTER TABLE [dbo].[Bookings]  WITH CHECK ADD FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[ProductImages]  WITH CHECK ADD FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([PostedBy])
REFERENCES [dbo].[Accounts] ([Id])
GO
ALTER TABLE [dbo].[ShippingAddress]  WITH CHECK ADD FOREIGN KEY([AccountId])
REFERENCES [dbo].[Accounts] ([Id])
GO
