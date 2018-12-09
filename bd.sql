USE [BDCARROONLINE]
GO
/****** Object:  Table [dbo].[Estados]    Script Date: 06/03/2014 22:29:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Estados](
	[Id_estado] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_estado] [varchar](100) NULL,
 CONSTRAINT [PK_Estados] PRIMARY KEY CLUSTERED 
(
	[Id_estado] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Estados] ON
INSERT [dbo].[Estados] ([Id_estado], [Nombre_estado]) VALUES (1, N'Estado_Separado')
INSERT [dbo].[Estados] ([Id_estado], [Nombre_estado]) VALUES (2, N'Estado_Comprado')
INSERT [dbo].[Estados] ([Id_estado], [Nombre_estado]) VALUES (3, N'Estado_Liberado')
SET IDENTITY_INSERT [dbo].[Estados] OFF
/****** Object:  Table [dbo].[Categorias]    Script Date: 06/03/2014 22:29:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categorias](
	[Id_categoria] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_categoria] [varchar](100) NULL,
 CONSTRAINT [PK_Categorias] PRIMARY KEY CLUSTERED 
(
	[Id_categoria] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Categorias] ON
INSERT [dbo].[Categorias] ([Id_categoria], [Nombre_categoria]) VALUES (1, N'computadoras personales')
INSERT [dbo].[Categorias] ([Id_categoria], [Nombre_categoria]) VALUES (2, N'computadoras de escritorio')
INSERT [dbo].[Categorias] ([Id_categoria], [Nombre_categoria]) VALUES (3, N'camaras')
INSERT [dbo].[Categorias] ([Id_categoria], [Nombre_categoria]) VALUES (4, N'accesorios para computadoras')
INSERT [dbo].[Categorias] ([Id_categoria], [Nombre_categoria]) VALUES (5, N'equipos de sonido')
INSERT [dbo].[Categorias] ([Id_categoria], [Nombre_categoria]) VALUES (6, N'televisores')
INSERT [dbo].[Categorias] ([Id_categoria], [Nombre_categoria]) VALUES (7, N'impresoras')
INSERT [dbo].[Categorias] ([Id_categoria], [Nombre_categoria]) VALUES (8, N'tablets')
INSERT [dbo].[Categorias] ([Id_categoria], [Nombre_categoria]) VALUES (9, N'componentes para computadoras')
SET IDENTITY_INSERT [dbo].[Categorias] OFF
/****** Object:  Table [dbo].[Registros]    Script Date: 06/03/2014 22:29:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Registros](
	[Id_registro] [int] IDENTITY(1,1) NOT NULL,
	[Nombres] [varchar](200) NULL,
	[Apellidos] [varchar](200) NULL,
	[Correo] [varchar](200) NULL,
	[sexo] [char](1) NULL,
 CONSTRAINT [PK_Registros] PRIMARY KEY CLUSTERED 
(
	[Id_registro] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Registros] ON
INSERT [dbo].[Registros] ([Id_registro], [Nombres], [Apellidos], [Correo], [sexo]) VALUES (1, N'gilmer alcides', N'melgarejo limas', N'chico_pipers@hotmail.com', N'1')
SET IDENTITY_INSERT [dbo].[Registros] OFF
/****** Object:  Table [dbo].[Promociones]    Script Date: 06/03/2014 22:29:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 06/03/2014 22:29:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuarios](
	[id_usuario] [int] IDENTITY(1,1) NOT NULL,
	[categoria] [varchar](20) NOT NULL,
	[correo electronico] [varchar](50) NOT NULL,
	[nombre] [varchar](50) NULL,
	[apellidos] [varchar](50) NULL,		      			      
	[contraseña] [varchar](50) NOT NULL,
	[telefono] [int] NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[Id_usuario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Usuarios] ON
INSERT [dbo].[Usuarios] ([Id_usuario], [codigo], [clave], [Id_registro]) VALUES (1, N'gimeli', N'admin', 1)
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
/****** Object:  Table [dbo].[Productos]    Script Date: 06/03/2014 22:29:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Productos](
	[Id_producto] [int] IDENTITY(1,1) NOT NULL,
	[cantidad] [int] NULL,
	[Nombre_producto] [varchar](100) NULL,
	[Id_categoria] [int] NULL,
	[Precio] [decimal](18, 2) NULL,
	[Id_promo] [int] NULL,
	[Imagen] [varchar](200) NULL,
	[Id_estado] [int] NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[Id_producto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Productos] ON
INSERT [dbo].[Productos] ([Id_producto], [cantidad], [Nombre_producto], [Id_categoria], [Precio], [Id_promo], [Imagen], [Id_estado]) VALUES (1, 10, N'ASUS R570ZD-DM107', 1, CAST(3645.00 AS Decimal(18, 2)), NULL, N'~/Imagenes/chompa3.png', 3)
INSERT [dbo].[Productos] ([Id_producto], [cantidad], [Nombre_producto], [Id_categoria], [Precio], [Id_promo], [Imagen], [Id_estado]) VALUES (2, 10, N'ACER NITRO 5 AN515-52-5336', 1, CAST(4000.00 AS Decimal(18, 2)), NULL, N'~/Imagenes/chompa4.jpg', 3)
INSERT [dbo].[Productos] ([Id_producto], [cantidad], [Nombre_producto], [Id_categoria], [Precio], [Id_promo], [Imagen], [Id_estado]) VALUES (3, 10, N'HP PABILION 15-BC402NS', 1, CAST(3500.00 AS Decimal(18, 2)), NULL, N'~/Imagenes/chompa5.jpg', 3)
INSERT [dbo].[Productos] ([Id_producto], [cantidad], [Nombre_producto], [Id_categoria], [Precio], [Id_promo], [Imagen], [Id_estado]) VALUES (4, 10, N'LENOVO IDEAPAD330-15ICH', 1, CAST(4500.00 AS Decimal(18, 2)), NULL, N'~/Imagenes/chompa6.jpg', 3)
INSERT [dbo].[Productos] ([Id_producto], [cantidad], [Nombre_producto], [Id_categoria], [Precio], [Id_promo], [Imagen], [Id_estado]) VALUES (5, 10, N'SAMSUNG GALAXY NOTE TAB', 8, CAST(845.00 AS Decimal(18, 2)), NULL, N'~/Imagenes/chompa7.jpg', 3)
INSERT [dbo].[Productos] ([Id_producto], [cantidad], [Nombre_producto], [Id_categoria], [Precio], [Id_promo], [Imagen], [Id_estado]) VALUES (6, 10, N'HUAWEI MEDIA PAD T5', 8, CAST(1010.00 AS Decimal(18, 2)), NULL, N'~/Imagenes/chompa8.jpg', 3)
INSERT [dbo].[Productos] ([Id_producto], [cantidad], [Nombre_producto], [Id_categoria], [Precio], [Id_promo], [Imagen], [Id_estado]) VALUES (7, 10, N'SAMSUNG T580 TAP A 10.1', 8, CAST(930.00 AS Decimal(18, 2)), NULL, N'~/Imagenes/chompa9.jpg', 3)
INSERT [dbo].[Productos] ([Id_producto], [cantidad], [Nombre_producto], [Id_categoria], [Precio], [Id_promo], [Imagen], [Id_estado]) VALUES (8, 10, N'SAMSUNG SMT590NZKADBT GALAXY TAP A 10.5 WIFI', 8, CAST(1550.00 AS Decimal(18, 2)), NULL, N'~/Imagenes/chompa10.jpg', 3)
INSERT [dbo].[Productos] ([Id_producto], [cantidad], [Nombre_producto], [Id_categoria], [Precio], [Id_promo], [Imagen], [Id_estado]) VALUES (9, 10, N'LOGITEC K400 PLUS', 4, CAST(149.05 AS Decimal(18, 2)), NULL, N'~/Imagenes/pantalon1.png', 3)
INSERT [dbo].[Productos] ([Id_producto], [cantidad], [Nombre_producto], [Id_categoria], [Precio], [Id_promo], [Imagen], [Id_estado]) VALUES (10, 50, N'RYY X8', 4, CAST(109.95 AS Decimal(18, 2)), NULL, N'~/Imagenes/pantalon2.jpg', 3)
SET IDENTITY_INSERT [dbo].[Productos] OFF
/****** Object:  Table [dbo].[Facturas]    Script Date: 06/03/2014 22:29:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Facturas](
	[Id_factura] [int] IDENTITY(1,1) NOT NULL,
	[Id_producto] [int] NULL,
	[Precio] [decimal](18, 2) NULL,
	[Cantidad] [int] NULL,
	[Total] [decimal](18, 2) NULL,
	[Id_estado] [int] NULL,
	[Id_usuario] [int] NULL,
 CONSTRAINT [PK_Facturas] PRIMARY KEY CLUSTERED 
(
	[Id_factura] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Facturas] ON
INSERT [dbo].[Facturas] ([Id_factura], [Id_producto], [Precio], [Cantidad], [Total], [Id_estado], [Id_usuario]) VALUES (60, 1, CAST(120.00 AS Decimal(18, 2)), 1, CAST(120.00 AS Decimal(18, 2)), 2, 1)
INSERT [dbo].[Facturas] ([Id_factura], [Id_producto], [Precio], [Cantidad], [Total], [Id_estado], [Id_usuario]) VALUES (61, 24, CAST(100.00 AS Decimal(18, 2)), 1, CAST(100.00 AS Decimal(18, 2)), 2, 1)
INSERT [dbo].[Facturas] ([Id_factura], [Id_producto], [Precio], [Cantidad], [Total], [Id_estado], [Id_usuario]) VALUES (62, 1, CAST(120.00 AS Decimal(18, 2)), 5, CAST(600.00 AS Decimal(18, 2)), 2, 1)
INSERT [dbo].[Facturas] ([Id_factura], [Id_producto], [Precio], [Cantidad], [Total], [Id_estado], [Id_usuario]) VALUES (63, 1, CAST(120.00 AS Decimal(18, 2)), 44, CAST(5280.00 AS Decimal(18, 2)), 2, 1)
INSERT [dbo].[Facturas] ([Id_factura], [Id_producto], [Precio], [Cantidad], [Total], [Id_estado], [Id_usuario]) VALUES (66, 2, CAST(125.00 AS Decimal(18, 2)), 50, CAST(6250.00 AS Decimal(18, 2)), 2, 1)
INSERT [dbo].[Facturas] ([Id_factura], [Id_producto], [Precio], [Cantidad], [Total], [Id_estado], [Id_usuario]) VALUES (70, 3, CAST(100.00 AS Decimal(18, 2)), 50, CAST(5000.00 AS Decimal(18, 2)), 2, 1)
SET IDENTITY_INSERT [dbo].[Facturas] OFF
/****** Object:  ForeignKey [FK_Facturas_Estados]    Script Date: 06/03/2014 22:29:17 ******/
ALTER TABLE [dbo].[Facturas]  WITH CHECK ADD  CONSTRAINT [FK_Facturas_Estados] FOREIGN KEY([Id_estado])
REFERENCES [dbo].[Estados] ([Id_estado])
GO
ALTER TABLE [dbo].[Facturas] CHECK CONSTRAINT [FK_Facturas_Estados]
GO
/****** Object:  ForeignKey [FK_Facturas_Productos]    Script Date: 06/03/2014 22:29:17 ******/
ALTER TABLE [dbo].[Facturas]  WITH CHECK ADD  CONSTRAINT [FK_Facturas_Productos] FOREIGN KEY([Id_producto])
REFERENCES [dbo].[Productos] ([Id_producto])
GO
ALTER TABLE [dbo].[Facturas] CHECK CONSTRAINT [FK_Facturas_Productos]
GO
/****** Object:  ForeignKey [FK_Facturas_Usuarios]    Script Date: 06/03/2014 22:29:17 ******/
ALTER TABLE [dbo].[Facturas]  WITH CHECK ADD  CONSTRAINT [FK_Facturas_Usuarios] FOREIGN KEY([Id_usuario])
REFERENCES [dbo].[Usuarios] ([Id_usuario])
GO
ALTER TABLE [dbo].[Facturas] CHECK CONSTRAINT [FK_Facturas_Usuarios]
GO
/****** Object:  ForeignKey [FK_Productos_Categorias]    Script Date: 06/03/2014 22:29:17 ******/
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_Productos_Categorias] FOREIGN KEY([Id_categoria])
REFERENCES [dbo].[Categorias] ([Id_categoria])
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK_Productos_Categorias]
GO
/****** Object:  ForeignKey [FK_Productos_Estados]    Script Date: 06/03/2014 22:29:17 ******/
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_Productos_Estados] FOREIGN KEY([Id_estado])
REFERENCES [dbo].[Estados] ([Id_estado])
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK_Productos_Estados]
GO
/****** Object:  ForeignKey [FK_Productos_Promociones]    Script Date: 06/03/2014 22:29:17 ******/
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_Productos_Promociones] FOREIGN KEY([Id_promo])
REFERENCES [dbo].[Promociones] ([Id_promocion])
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK_Productos_Promociones]
GO
/****** Object:  ForeignKey [FK_Usuarios_Registros]    Script Date: 06/03/2014 22:29:17 ******/
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_Registros] FOREIGN KEY([Id_registro])
REFERENCES [dbo].[Registros] ([Id_registro])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Usuarios_Registros]
GO
