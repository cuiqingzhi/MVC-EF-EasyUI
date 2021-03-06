/****** Object:  ForeignKey [FK_BasePermissionR_Role_Permission]    Script Date: 07/12/2013 21:45:21 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BasePermissionR_Role_Permission]') AND parent_object_id = OBJECT_ID(N'[dbo].[R_Role_Permission]'))
ALTER TABLE [dbo].[R_Role_Permission] DROP CONSTRAINT [FK_BasePermissionR_Role_Permission]
GO
/****** Object:  ForeignKey [FK_BaseRoleR_Role_Permission]    Script Date: 07/12/2013 21:45:21 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BaseRoleR_Role_Permission]') AND parent_object_id = OBJECT_ID(N'[dbo].[R_Role_Permission]'))
ALTER TABLE [dbo].[R_Role_Permission] DROP CONSTRAINT [FK_BaseRoleR_Role_Permission]
GO
/****** Object:  ForeignKey [FK_R_UserInfo_ActionInfoActionInfo]    Script Date: 07/12/2013 21:45:21 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_R_UserInfo_ActionInfoActionInfo]') AND parent_object_id = OBJECT_ID(N'[dbo].[R_User_Permission]'))
ALTER TABLE [dbo].[R_User_Permission] DROP CONSTRAINT [FK_R_UserInfo_ActionInfoActionInfo]
GO
/****** Object:  ForeignKey [FK_UserInfoR_UserInfo_ActionInfo]    Script Date: 07/12/2013 21:45:21 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserInfoR_UserInfo_ActionInfo]') AND parent_object_id = OBJECT_ID(N'[dbo].[R_User_Permission]'))
ALTER TABLE [dbo].[R_User_Permission] DROP CONSTRAINT [FK_UserInfoR_UserInfo_ActionInfo]
GO
/****** Object:  ForeignKey [FK_RoleR_UserInfo_Role]    Script Date: 07/12/2013 21:45:21 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RoleR_UserInfo_Role]') AND parent_object_id = OBJECT_ID(N'[dbo].[R_User_Role]'))
ALTER TABLE [dbo].[R_User_Role] DROP CONSTRAINT [FK_RoleR_UserInfo_Role]
GO
/****** Object:  ForeignKey [FK_UserInfoR_UserInfo_Role]    Script Date: 07/12/2013 21:45:21 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserInfoR_UserInfo_Role]') AND parent_object_id = OBJECT_ID(N'[dbo].[R_User_Role]'))
ALTER TABLE [dbo].[R_User_Role] DROP CONSTRAINT [FK_UserInfoR_UserInfo_Role]
GO
/****** Object:  Table [dbo].[R_Role_Permission]    Script Date: 07/12/2013 21:45:21 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[R_Role_Permission]') AND type in (N'U'))
DROP TABLE [dbo].[R_Role_Permission]
GO
/****** Object:  Table [dbo].[R_User_Permission]    Script Date: 07/12/2013 21:45:21 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[R_User_Permission]') AND type in (N'U'))
DROP TABLE [dbo].[R_User_Permission]
GO
/****** Object:  Table [dbo].[R_User_Role]    Script Date: 07/12/2013 21:45:21 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[R_User_Role]') AND type in (N'U'))
DROP TABLE [dbo].[R_User_Role]
GO
/****** Object:  Table [dbo].[BasePermission]    Script Date: 07/12/2013 21:45:21 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BasePermission]') AND type in (N'U'))
DROP TABLE [dbo].[BasePermission]
GO
/****** Object:  Table [dbo].[BaseRole]    Script Date: 07/12/2013 21:45:21 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BaseRole]') AND type in (N'U'))
DROP TABLE [dbo].[BaseRole]
GO
/****** Object:  Table [dbo].[BaseUser]    Script Date: 07/12/2013 21:45:21 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BaseUser]') AND type in (N'U'))
DROP TABLE [dbo].[BaseUser]
GO
/****** Object:  Table [dbo].[BaseUser]    Script Date: 07/12/2013 21:45:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BaseUser]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BaseUser](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[UserName] [nvarchar](32) COLLATE Chinese_PRC_CI_AS NULL,
	[UserPassword] [nvarchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[RealName] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[QuickQuery] [nvarchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[SecurityLevel] [int] NULL,
	[UserFrom] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[CompanyID] [int] NULL,
	[CompanyName] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[SubCompanyID] [int] NULL,
	[SubCompanyName] [nvarchar](max) COLLATE Chinese_PRC_CI_AS NULL,
	[DepartmentID] [int] NULL,
	[DepartmentName] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[WorkgroupID] [int] NULL,
	[WorkgroupName] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[WorkCategory] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[ChangePasswordDate] [datetime] NULL,
	[Duty] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[Title] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[Email] [nvarchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[Lang] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[Gender] [nvarchar](8) COLLATE Chinese_PRC_CI_AS NULL,
	[Birthday] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[Mobile] [nvarchar](32) COLLATE Chinese_PRC_CI_AS NULL,
	[Telephone] [nvarchar](32) COLLATE Chinese_PRC_CI_AS NULL,
	[QICQ] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[HomeAddress] [nvarchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[Theme] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[IsStaff] [int] NULL,
	[IsVisible] [int] NULL,
	[UserAddRessID] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[Enabled] [int] NULL,
	[AuditStatus] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[DeletionStateCode] [int] NULL,
	[Signature] [nvarchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[SortCode] [int] NULL,
	[Description] [nvarchar](800) COLLATE Chinese_PRC_CI_AS NULL,
	[CreateOn] [datetime] NULL,
	[CreateUserID] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[CreateBy] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[ModifirdOn] [datetime] NULL,
	[ModifiedUserID] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[ModifiedBy] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_BaseUser] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[BaseUser] ON
INSERT [dbo].[BaseUser] ([ID], [Code], [UserName], [UserPassword], [RealName], [QuickQuery], [SecurityLevel], [UserFrom], [CompanyID], [CompanyName], [SubCompanyID], [SubCompanyName], [DepartmentID], [DepartmentName], [WorkgroupID], [WorkgroupName], [WorkCategory], [ChangePasswordDate], [Duty], [Title], [Email], [Lang], [Gender], [Birthday], [Mobile], [Telephone], [QICQ], [HomeAddress], [Theme], [IsStaff], [IsVisible], [UserAddRessID], [Enabled], [AuditStatus], [DeletionStateCode], [Signature], [SortCode], [Description], [CreateOn], [CreateUserID], [CreateBy], [ModifirdOn], [ModifiedUserID], [ModifiedBy]) VALUES (1, N'430e39b5-0034-48be-bceb-543661dd3fe5', N'hyl', N'hyl', N'韩迎龙', N'hyl', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'934532778@qq.com', NULL, N'女', N'2013-06-03', N'363', N'345', N'53534', NULL, NULL, 1, 1, NULL, 1, N'已审核', 0, NULL, 1, N'韩迎龙', NULL, NULL, N'hyl', CAST(0x0000A1E400C625C8 AS DateTime), N'430e39b5-0034-48be-bceb-543661dd3fe5', N'hyl')
INSERT [dbo].[BaseUser] ([ID], [Code], [UserName], [UserPassword], [RealName], [QuickQuery], [SecurityLevel], [UserFrom], [CompanyID], [CompanyName], [SubCompanyID], [SubCompanyName], [DepartmentID], [DepartmentName], [WorkgroupID], [WorkgroupName], [WorkCategory], [ChangePasswordDate], [Duty], [Title], [Email], [Lang], [Gender], [Birthday], [Mobile], [Telephone], [QICQ], [HomeAddress], [Theme], [IsStaff], [IsVisible], [UserAddRessID], [Enabled], [AuditStatus], [DeletionStateCode], [Signature], [SortCode], [Description], [CreateOn], [CreateUserID], [CreateBy], [ModifirdOn], [ModifiedUserID], [ModifiedBy]) VALUES (2, N'430e39b5-0034-48be-bceb-543661dd3fe5', N'kencery', N'kencery', N'kencery', N'kencery', 1, N'添加', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'2232@qq.com', N'汉语', N'男', N'2013-06-27', N'23232', N'323', N'23232', NULL, NULL, 1, 1, NULL, 1, N'已审核', 0, NULL, 2323, N'234323232', CAST(0x0000A1D100E459D0 AS DateTime), NULL, N'hyl', NULL, NULL, NULL)
INSERT [dbo].[BaseUser] ([ID], [Code], [UserName], [UserPassword], [RealName], [QuickQuery], [SecurityLevel], [UserFrom], [CompanyID], [CompanyName], [SubCompanyID], [SubCompanyName], [DepartmentID], [DepartmentName], [WorkgroupID], [WorkgroupName], [WorkCategory], [ChangePasswordDate], [Duty], [Title], [Email], [Lang], [Gender], [Birthday], [Mobile], [Telephone], [QICQ], [HomeAddress], [Theme], [IsStaff], [IsVisible], [UserAddRessID], [Enabled], [AuditStatus], [DeletionStateCode], [Signature], [SortCode], [Description], [CreateOn], [CreateUserID], [CreateBy], [ModifirdOn], [ModifiedUserID], [ModifiedBy]) VALUES (3, N'9a62d6c6-dc35-482c-96f5-56812f47b06e', N'111', N'1111', N'11', N'111', 1, N'添加', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'111@qq.com', N'汉语', N'男', N'2013-06-25', N'23232', N'32', N'2323', NULL, NULL, 1, 1, NULL, 1, N'已审核', 0, NULL, 323, N'23232', CAST(0x0000A1D100E47974 AS DateTime), NULL, N'hyl', NULL, NULL, NULL)
INSERT [dbo].[BaseUser] ([ID], [Code], [UserName], [UserPassword], [RealName], [QuickQuery], [SecurityLevel], [UserFrom], [CompanyID], [CompanyName], [SubCompanyID], [SubCompanyName], [DepartmentID], [DepartmentName], [WorkgroupID], [WorkgroupName], [WorkCategory], [ChangePasswordDate], [Duty], [Title], [Email], [Lang], [Gender], [Birthday], [Mobile], [Telephone], [QICQ], [HomeAddress], [Theme], [IsStaff], [IsVisible], [UserAddRessID], [Enabled], [AuditStatus], [DeletionStateCode], [Signature], [SortCode], [Description], [CreateOn], [CreateUserID], [CreateBy], [ModifirdOn], [ModifiedUserID], [ModifiedBy]) VALUES (4, N'851c0b62-bc4d-4bbf-b2b5-c388e115f62c', N'222', N'22', N'222', N'222', 1, N'添加', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'222@qq.com', N'汉语', N'未知', N'2013-06-02', N'232', N'232', N'23232', NULL, NULL, 1, 1, NULL, 1, N'已审核', 0, NULL, 323, N'23232', CAST(0x0000A1D100E4DD10 AS DateTime), NULL, N'hyl', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[BaseUser] OFF
/****** Object:  Table [dbo].[BaseRole]    Script Date: 07/12/2013 21:45:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BaseRole]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BaseRole](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrganizeId] [int] NULL,
	[CategoryCode] [int] NULL,
	[Code] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[Realname] [nvarchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[AllowEdit] [int] NULL,
	[AllowDelete] [int] NULL,
	[IsVisible] [int] NULL,
	[SortCode] [int] NULL,
	[DeletionStateCode] [int] NULL,
	[Enabled] [int] NULL,
	[Description] [nvarchar](800) COLLATE Chinese_PRC_CI_AS NULL,
	[CreateOn] [datetime] NULL,
	[CreateUserID] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[CreateBy] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedUserID] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[ModifiedBy] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_BaseRole] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[BaseRole] ON
INSERT [dbo].[BaseRole] ([ID], [OrganizeId], [CategoryCode], [Code], [Realname], [AllowEdit], [AllowDelete], [IsVisible], [SortCode], [DeletionStateCode], [Enabled], [Description], [CreateOn], [CreateUserID], [CreateBy], [ModifiedOn], [ModifiedUserID], [ModifiedBy]) VALUES (1, NULL, 1, N'45e96253-bc3e-46d6-b20f-97d641f1ea48', N'超级管理员', 1, 1, 1, 4, 0, 1, N'超级管理员', CAST(0x0000A1D100E3E5CC AS DateTime), NULL, N'hyl', CAST(0x0000A1DC014C0EA4 AS DateTime), N'430e39b5-0034-48be-bceb-543661dd3fe5', N'hyl')
INSERT [dbo].[BaseRole] ([ID], [OrganizeId], [CategoryCode], [Code], [Realname], [AllowEdit], [AllowDelete], [IsVisible], [SortCode], [DeletionStateCode], [Enabled], [Description], [CreateOn], [CreateUserID], [CreateBy], [ModifiedOn], [ModifiedUserID], [ModifiedBy]) VALUES (2, NULL, 0, N'b26f3db2-3a43-41fc-b768-c53c023b5c83', N'一般管理员', 1, 1, 1, 2, 0, 1, N'石帆胜丰但是', CAST(0x0000A1D100E3F634 AS DateTime), NULL, N'hyl', NULL, NULL, NULL)
INSERT [dbo].[BaseRole] ([ID], [OrganizeId], [CategoryCode], [Code], [Realname], [AllowEdit], [AllowDelete], [IsVisible], [SortCode], [DeletionStateCode], [Enabled], [Description], [CreateOn], [CreateUserID], [CreateBy], [ModifiedOn], [ModifiedUserID], [ModifiedBy]) VALUES (3, NULL, 0, N'65d24818-a1e8-4a18-941e-4db9fdb198c3', N'查看信息', 1, 1, 1, 3, 0, 1, N'查看信息', CAST(0x0000A1D100E49A44 AS DateTime), NULL, N'hyl', NULL, NULL, NULL)
INSERT [dbo].[BaseRole] ([ID], [OrganizeId], [CategoryCode], [Code], [Realname], [AllowEdit], [AllowDelete], [IsVisible], [SortCode], [DeletionStateCode], [Enabled], [Description], [CreateOn], [CreateUserID], [CreateBy], [ModifiedOn], [ModifiedUserID], [ModifiedBy]) VALUES (4, NULL, 0, N'95dab3e3-15c0-4684-9769-988a43a724de', N'前台', 1, 1, 1, 234, 0, 1, N'2423', CAST(0x0000A1D100FA3908 AS DateTime), NULL, N'hyl', CAST(0x0000A1D300001518 AS DateTime), N'430e39b5-0034-48be-bceb-543661dd3fe5', N'kencery')
INSERT [dbo].[BaseRole] ([ID], [OrganizeId], [CategoryCode], [Code], [Realname], [AllowEdit], [AllowDelete], [IsVisible], [SortCode], [DeletionStateCode], [Enabled], [Description], [CreateOn], [CreateUserID], [CreateBy], [ModifiedOn], [ModifiedUserID], [ModifiedBy]) VALUES (5, NULL, 2, N'30d3e529-d3d3-4831-ad21-d33ece173d1b', N'秘书长', 1, 1, 1, 32, 0, 1, N'秘书长', CAST(0x0000A1D3012EE5CC AS DateTime), NULL, N'hyl', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[BaseRole] OFF
/****** Object:  Table [dbo].[BasePermission]    Script Date: 07/12/2013 21:45:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BasePermission]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BasePermission](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[RequestURL] [varchar](256) COLLATE Chinese_PRC_CI_AS NULL,
	[RequestHttpType] [int] NULL,
	[PerMission] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[AllowEdit] [int] NULL,
	[AllowDelete] [int] NULL,
	[IsVisible] [int] NULL,
	[SortCode] [int] NULL,
	[DeletionStateCode] [smallint] NULL,
	[Enabled] [int] NULL,
	[Description] [nvarchar](800) COLLATE Chinese_PRC_CI_AS NULL,
	[CreateOn] [datetime] NULL,
	[CreateUserID] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[CreateBy] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedUserID] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[ModifiedBy] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_BasePermission] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[BasePermission] ON
INSERT [dbo].[BasePermission] ([ID], [Code], [RequestURL], [RequestHttpType], [PerMission], [AllowEdit], [AllowDelete], [IsVisible], [SortCode], [DeletionStateCode], [Enabled], [Description], [CreateOn], [CreateUserID], [CreateBy], [ModifiedOn], [ModifiedUserID], [ModifiedBy]) VALUES (2, N'3a7a0949-6329-4c41-a7cb-4a743a43b46f', N'http://localhost:6941/Home/Index', 1, N'网站首页', NULL, NULL, NULL, 1, NULL, NULL, NULL, CAST(0x0000A1D100FB63DC AS DateTime), NULL, N'hyl', CAST(0x0000806800000000 AS DateTime), NULL, N'hyl')
INSERT [dbo].[BasePermission] ([ID], [Code], [RequestURL], [RequestHttpType], [PerMission], [AllowEdit], [AllowDelete], [IsVisible], [SortCode], [DeletionStateCode], [Enabled], [Description], [CreateOn], [CreateUserID], [CreateBy], [ModifiedOn], [ModifiedUserID], [ModifiedBy]) VALUES (3, N'3a7a0949-6329-4c41-a7cb-4a743a43b46f', N'345', 0, N'34', 1, 1, 1, 3454, 1, 0, N'3535', CAST(0x0000A1D100FB63DC AS DateTime), NULL, N'hyl', NULL, NULL, NULL)
INSERT [dbo].[BasePermission] ([ID], [Code], [RequestURL], [RequestHttpType], [PerMission], [AllowEdit], [AllowDelete], [IsVisible], [SortCode], [DeletionStateCode], [Enabled], [Description], [CreateOn], [CreateUserID], [CreateBy], [ModifiedOn], [ModifiedUserID], [ModifiedBy]) VALUES (4, N'4527c0e6-7f82-4fa2-b590-4c1250b7166f', N'http://localhost:6941/Home/Index', 0, N'查看用户', 1, 1, 1, 11, 0, 0, N'http://localhost:6941/Home/Index', CAST(0x0000A1D100FBB710 AS DateTime), NULL, N'hyl', NULL, NULL, NULL)
INSERT [dbo].[BasePermission] ([ID], [Code], [RequestURL], [RequestHttpType], [PerMission], [AllowEdit], [AllowDelete], [IsVisible], [SortCode], [DeletionStateCode], [Enabled], [Description], [CreateOn], [CreateUserID], [CreateBy], [ModifiedOn], [ModifiedUserID], [ModifiedBy]) VALUES (5, N'c8ed82dc-8c6d-4bdc-b7c6-791ccea5f3c8', N'http://localhost:6941/Home/Index', 0, N'删除用户', 1, 1, 1, 232, 0, 0, N'http://localhost:6941/Home/Index', CAST(0x0000A1D100FBC9D0 AS DateTime), NULL, N'hyl', NULL, NULL, NULL)
INSERT [dbo].[BasePermission] ([ID], [Code], [RequestURL], [RequestHttpType], [PerMission], [AllowEdit], [AllowDelete], [IsVisible], [SortCode], [DeletionStateCode], [Enabled], [Description], [CreateOn], [CreateUserID], [CreateBy], [ModifiedOn], [ModifiedUserID], [ModifiedBy]) VALUES (6, N'9ae1595e-e4b3-407e-8fcf-9bfe7bc4238d', N'http://localhost:6941/Home/Index', 0, N'修改用户', 1, 1, 1, 11, 0, 0, N'http://localhost:6941/Home/Index', CAST(0x0000A1D100FBDDBC AS DateTime), NULL, N'hyl', NULL, NULL, NULL)
INSERT [dbo].[BasePermission] ([ID], [Code], [RequestURL], [RequestHttpType], [PerMission], [AllowEdit], [AllowDelete], [IsVisible], [SortCode], [DeletionStateCode], [Enabled], [Description], [CreateOn], [CreateUserID], [CreateBy], [ModifiedOn], [ModifiedUserID], [ModifiedBy]) VALUES (7, N'1850f1a5-8f67-491c-80d5-54d5f0957966', N'http://localhost:6941/Home/Index', 0, N'添加角色', 1, 1, 1, 232, 0, 0, N'http://localhost:6941/Home/Index', CAST(0x0000A1D100FBECF8 AS DateTime), NULL, N'hyl', NULL, NULL, NULL)
INSERT [dbo].[BasePermission] ([ID], [Code], [RequestURL], [RequestHttpType], [PerMission], [AllowEdit], [AllowDelete], [IsVisible], [SortCode], [DeletionStateCode], [Enabled], [Description], [CreateOn], [CreateUserID], [CreateBy], [ModifiedOn], [ModifiedUserID], [ModifiedBy]) VALUES (8, N'fb345cfd-9981-46f2-ae20-22413172ffb0', N'http://localhost:6941/Home/Index', 0, N'删除角色', 1, 1, 1, 232, 0, 0, N'http://localhost:6941/Home/Index', CAST(0x0000A1D1017254B0 AS DateTime), NULL, N'hyl', NULL, NULL, NULL)
INSERT [dbo].[BasePermission] ([ID], [Code], [RequestURL], [RequestHttpType], [PerMission], [AllowEdit], [AllowDelete], [IsVisible], [SortCode], [DeletionStateCode], [Enabled], [Description], [CreateOn], [CreateUserID], [CreateBy], [ModifiedOn], [ModifiedUserID], [ModifiedBy]) VALUES (9, N'9f3c9788-1677-4788-a4dd-84a4b8a7687f', N'http://localhost:6941/Home/Index', 1, N'添加角色', 1, 1, 1, 232, 0, 0, N'http://localhost:6941/Home/Index', CAST(0x0000A1D101727904 AS DateTime), NULL, N'hyl', NULL, NULL, NULL)
INSERT [dbo].[BasePermission] ([ID], [Code], [RequestURL], [RequestHttpType], [PerMission], [AllowEdit], [AllowDelete], [IsVisible], [SortCode], [DeletionStateCode], [Enabled], [Description], [CreateOn], [CreateUserID], [CreateBy], [ModifiedOn], [ModifiedUserID], [ModifiedBy]) VALUES (10, N'4d5f04a6-b221-438f-82fb-b3b683c62247', N'http://localhost:8080/Home/Index', 0, N'修改角色', 1, 1, 1, 343, 0, 0, N'http://localhost:8080/Home/Index', CAST(0x0000A1D201602D08 AS DateTime), NULL, N'hyl', NULL, NULL, NULL)
INSERT [dbo].[BasePermission] ([ID], [Code], [RequestURL], [RequestHttpType], [PerMission], [AllowEdit], [AllowDelete], [IsVisible], [SortCode], [DeletionStateCode], [Enabled], [Description], [CreateOn], [CreateUserID], [CreateBy], [ModifiedOn], [ModifiedUserID], [ModifiedBy]) VALUES (11, N'797cbd86-8229-4e74-a594-34a5d114c57c', N'http://localhost:8080/Home/Index', 0, N'修改角色', 1, 1, 1, 343, 0, 0, N'http://localhost:8080/Home/Index', CAST(0x0000A1D20160308C AS DateTime), NULL, N'hyl', NULL, NULL, NULL)
INSERT [dbo].[BasePermission] ([ID], [Code], [RequestURL], [RequestHttpType], [PerMission], [AllowEdit], [AllowDelete], [IsVisible], [SortCode], [DeletionStateCode], [Enabled], [Description], [CreateOn], [CreateUserID], [CreateBy], [ModifiedOn], [ModifiedUserID], [ModifiedBy]) VALUES (12, N'06586324-9ab3-4a7d-bffc-ee252ca69c28', N'http://localhost:8080/Home/Index', 0, N'修改角色', 1, 1, 1, 343, 0, 0, N'http://localhost:8080/Home/Index', CAST(0x0000A1D20160308C AS DateTime), NULL, N'hyl', NULL, NULL, NULL)
INSERT [dbo].[BasePermission] ([ID], [Code], [RequestURL], [RequestHttpType], [PerMission], [AllowEdit], [AllowDelete], [IsVisible], [SortCode], [DeletionStateCode], [Enabled], [Description], [CreateOn], [CreateUserID], [CreateBy], [ModifiedOn], [ModifiedUserID], [ModifiedBy]) VALUES (13, N'838e2d4f-e4ac-475d-b671-cc484136d127', N'http://localhost:8080/Home/Index', 1, N'韩迎龙', 1, 1, 1, 333, 0, 1, N'3343', CAST(0x0000A1D201696788 AS DateTime), NULL, N'hyl', CAST(0x0000A1D201796868 AS DateTime), NULL, N'hyl')
SET IDENTITY_INSERT [dbo].[BasePermission] OFF
/****** Object:  Table [dbo].[R_User_Role]    Script Date: 07/12/2013 21:45:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[R_User_Role]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[R_User_Role](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[RoleID] [int] NOT NULL,
	[Enable] [int] NULL,
	[Description] [nvarchar](800) COLLATE Chinese_PRC_CI_AS NULL,
	[SortCode] [int] NULL,
	[DeletionStateCode] [int] NULL,
	[CreateOn] [datetime] NULL,
	[CreateUserID] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[CreateBy] [nvarchar](max) COLLATE Chinese_PRC_CI_AS NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedUserID] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[ModifiedBy] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_R_User_Role] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[R_User_Role]') AND name = N'IX_FK_RoleR_UserInfo_Role')
CREATE NONCLUSTERED INDEX [IX_FK_RoleR_UserInfo_Role] ON [dbo].[R_User_Role] 
(
	[RoleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[R_User_Role]') AND name = N'IX_FK_UserInfoR_UserInfo_Role')
CREATE NONCLUSTERED INDEX [IX_FK_UserInfoR_UserInfo_Role] ON [dbo].[R_User_Role] 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
SET IDENTITY_INSERT [dbo].[R_User_Role] ON
INSERT [dbo].[R_User_Role] ([ID], [UserID], [RoleID], [Enable], [Description], [SortCode], [DeletionStateCode], [CreateOn], [CreateUserID], [CreateBy], [ModifiedOn], [ModifiedUserID], [ModifiedBy]) VALUES (10, 3, 5, 1, NULL, NULL, 0, CAST(0x0000A1D30184BF24 AS DateTime), NULL, N'50', NULL, NULL, NULL)
INSERT [dbo].[R_User_Role] ([ID], [UserID], [RoleID], [Enable], [Description], [SortCode], [DeletionStateCode], [CreateOn], [CreateUserID], [CreateBy], [ModifiedOn], [ModifiedUserID], [ModifiedBy]) VALUES (26, 2, 2, 1, NULL, NULL, 0, CAST(0x0000A1DC01453A34 AS DateTime), N'430e39b5-0034-48be-bceb-543661dd3fe5', N'hyl', NULL, NULL, NULL)
INSERT [dbo].[R_User_Role] ([ID], [UserID], [RoleID], [Enable], [Description], [SortCode], [DeletionStateCode], [CreateOn], [CreateUserID], [CreateBy], [ModifiedOn], [ModifiedUserID], [ModifiedBy]) VALUES (27, 2, 3, 1, NULL, NULL, 0, CAST(0x0000A1DC01453A34 AS DateTime), N'430e39b5-0034-48be-bceb-543661dd3fe5', N'hyl', NULL, NULL, NULL)
INSERT [dbo].[R_User_Role] ([ID], [UserID], [RoleID], [Enable], [Description], [SortCode], [DeletionStateCode], [CreateOn], [CreateUserID], [CreateBy], [ModifiedOn], [ModifiedUserID], [ModifiedBy]) VALUES (1031, 1, 1, 1, NULL, NULL, 0, CAST(0x0000A1F001812F6C AS DateTime), N'430e39b5-0034-48be-bceb-543661dd3fe5', N'hyl', NULL, NULL, NULL)
INSERT [dbo].[R_User_Role] ([ID], [UserID], [RoleID], [Enable], [Description], [SortCode], [DeletionStateCode], [CreateOn], [CreateUserID], [CreateBy], [ModifiedOn], [ModifiedUserID], [ModifiedBy]) VALUES (1032, 1, 3, 1, NULL, NULL, 0, CAST(0x0000A1F001812F6C AS DateTime), N'430e39b5-0034-48be-bceb-543661dd3fe5', N'hyl', NULL, NULL, NULL)
INSERT [dbo].[R_User_Role] ([ID], [UserID], [RoleID], [Enable], [Description], [SortCode], [DeletionStateCode], [CreateOn], [CreateUserID], [CreateBy], [ModifiedOn], [ModifiedUserID], [ModifiedBy]) VALUES (1033, 1, 4, 1, NULL, NULL, 0, CAST(0x0000A1F001812F6C AS DateTime), N'430e39b5-0034-48be-bceb-543661dd3fe5', N'hyl', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[R_User_Role] OFF
/****** Object:  Table [dbo].[R_User_Permission]    Script Date: 07/12/2013 21:45:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[R_User_Permission]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[R_User_Permission](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[PermissionID] [int] NOT NULL,
	[Enable] [int] NULL,
	[Description] [nvarchar](800) COLLATE Chinese_PRC_CI_AS NULL,
	[SortCode] [int] NULL,
	[DeletionStateCode] [int] NULL,
	[CreateOn] [datetime] NULL,
	[CreateUserID] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[CreateBy] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedUserID] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[ModifiedBy] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_R_User_Permission] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[R_User_Permission]') AND name = N'IX_FK_R_UserInfo_ActionInfoActionInfo')
CREATE NONCLUSTERED INDEX [IX_FK_R_UserInfo_ActionInfoActionInfo] ON [dbo].[R_User_Permission] 
(
	[PermissionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[R_User_Permission]') AND name = N'IX_FK_UserInfoR_UserInfo_ActionInfo')
CREATE NONCLUSTERED INDEX [IX_FK_UserInfoR_UserInfo_ActionInfo] ON [dbo].[R_User_Permission] 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
/****** Object:  Table [dbo].[R_Role_Permission]    Script Date: 07/12/2013 21:45:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[R_Role_Permission]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[R_Role_Permission](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RoleID] [int] NOT NULL,
	[PermissionID] [int] NOT NULL,
	[Enable] [int] NULL,
	[Description] [nvarchar](800) COLLATE Chinese_PRC_CI_AS NULL,
	[SortCode] [int] NULL,
	[DeletionStateCode] [int] NULL,
	[CreateOn] [datetime] NULL,
	[CreateUserID] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[CreateBy] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedUserID] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[ModifiedBy] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_R_Role_Permission] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[R_Role_Permission]') AND name = N'IX_FK_BasePermissionR_Role_Permission')
CREATE NONCLUSTERED INDEX [IX_FK_BasePermissionR_Role_Permission] ON [dbo].[R_Role_Permission] 
(
	[PermissionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[R_Role_Permission]') AND name = N'IX_FK_BaseRoleR_Role_Permission')
CREATE NONCLUSTERED INDEX [IX_FK_BaseRoleR_Role_Permission] ON [dbo].[R_Role_Permission] 
(
	[RoleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
/****** Object:  ForeignKey [FK_BasePermissionR_Role_Permission]    Script Date: 07/12/2013 21:45:21 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BasePermissionR_Role_Permission]') AND parent_object_id = OBJECT_ID(N'[dbo].[R_Role_Permission]'))
ALTER TABLE [dbo].[R_Role_Permission]  WITH CHECK ADD  CONSTRAINT [FK_BasePermissionR_Role_Permission] FOREIGN KEY([PermissionID])
REFERENCES [dbo].[BasePermission] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BasePermissionR_Role_Permission]') AND parent_object_id = OBJECT_ID(N'[dbo].[R_Role_Permission]'))
ALTER TABLE [dbo].[R_Role_Permission] CHECK CONSTRAINT [FK_BasePermissionR_Role_Permission]
GO
/****** Object:  ForeignKey [FK_BaseRoleR_Role_Permission]    Script Date: 07/12/2013 21:45:21 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BaseRoleR_Role_Permission]') AND parent_object_id = OBJECT_ID(N'[dbo].[R_Role_Permission]'))
ALTER TABLE [dbo].[R_Role_Permission]  WITH CHECK ADD  CONSTRAINT [FK_BaseRoleR_Role_Permission] FOREIGN KEY([RoleID])
REFERENCES [dbo].[BaseRole] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BaseRoleR_Role_Permission]') AND parent_object_id = OBJECT_ID(N'[dbo].[R_Role_Permission]'))
ALTER TABLE [dbo].[R_Role_Permission] CHECK CONSTRAINT [FK_BaseRoleR_Role_Permission]
GO
/****** Object:  ForeignKey [FK_R_UserInfo_ActionInfoActionInfo]    Script Date: 07/12/2013 21:45:21 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_R_UserInfo_ActionInfoActionInfo]') AND parent_object_id = OBJECT_ID(N'[dbo].[R_User_Permission]'))
ALTER TABLE [dbo].[R_User_Permission]  WITH CHECK ADD  CONSTRAINT [FK_R_UserInfo_ActionInfoActionInfo] FOREIGN KEY([PermissionID])
REFERENCES [dbo].[BasePermission] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_R_UserInfo_ActionInfoActionInfo]') AND parent_object_id = OBJECT_ID(N'[dbo].[R_User_Permission]'))
ALTER TABLE [dbo].[R_User_Permission] CHECK CONSTRAINT [FK_R_UserInfo_ActionInfoActionInfo]
GO
/****** Object:  ForeignKey [FK_UserInfoR_UserInfo_ActionInfo]    Script Date: 07/12/2013 21:45:21 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserInfoR_UserInfo_ActionInfo]') AND parent_object_id = OBJECT_ID(N'[dbo].[R_User_Permission]'))
ALTER TABLE [dbo].[R_User_Permission]  WITH CHECK ADD  CONSTRAINT [FK_UserInfoR_UserInfo_ActionInfo] FOREIGN KEY([UserID])
REFERENCES [dbo].[BaseUser] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserInfoR_UserInfo_ActionInfo]') AND parent_object_id = OBJECT_ID(N'[dbo].[R_User_Permission]'))
ALTER TABLE [dbo].[R_User_Permission] CHECK CONSTRAINT [FK_UserInfoR_UserInfo_ActionInfo]
GO
/****** Object:  ForeignKey [FK_RoleR_UserInfo_Role]    Script Date: 07/12/2013 21:45:21 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RoleR_UserInfo_Role]') AND parent_object_id = OBJECT_ID(N'[dbo].[R_User_Role]'))
ALTER TABLE [dbo].[R_User_Role]  WITH CHECK ADD  CONSTRAINT [FK_RoleR_UserInfo_Role] FOREIGN KEY([RoleID])
REFERENCES [dbo].[BaseRole] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RoleR_UserInfo_Role]') AND parent_object_id = OBJECT_ID(N'[dbo].[R_User_Role]'))
ALTER TABLE [dbo].[R_User_Role] CHECK CONSTRAINT [FK_RoleR_UserInfo_Role]
GO
/****** Object:  ForeignKey [FK_UserInfoR_UserInfo_Role]    Script Date: 07/12/2013 21:45:21 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserInfoR_UserInfo_Role]') AND parent_object_id = OBJECT_ID(N'[dbo].[R_User_Role]'))
ALTER TABLE [dbo].[R_User_Role]  WITH CHECK ADD  CONSTRAINT [FK_UserInfoR_UserInfo_Role] FOREIGN KEY([UserID])
REFERENCES [dbo].[BaseUser] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserInfoR_UserInfo_Role]') AND parent_object_id = OBJECT_ID(N'[dbo].[R_User_Role]'))
ALTER TABLE [dbo].[R_User_Role] CHECK CONSTRAINT [FK_UserInfoR_UserInfo_Role]
GO
