USE [master]
GO
/****** Object:  Database [QUANLYKHACHSANKIMANH]    Script Date: 6/24/2020 12:26:47 AM ******/
CREATE DATABASE [QUANLYKHACHSANKIMANH]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QUANLYKHACHSANKIMANH', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QUANLYKHACHSANKIMANH.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QUANLYKHACHSANKIMANH_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QUANLYKHACHSANKIMANH_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QUANLYKHACHSANKIMANH] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QUANLYKHACHSANKIMANH].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QUANLYKHACHSANKIMANH] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QUANLYKHACHSANKIMANH] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QUANLYKHACHSANKIMANH] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QUANLYKHACHSANKIMANH] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QUANLYKHACHSANKIMANH] SET ARITHABORT OFF 
GO
ALTER DATABASE [QUANLYKHACHSANKIMANH] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QUANLYKHACHSANKIMANH] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QUANLYKHACHSANKIMANH] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QUANLYKHACHSANKIMANH] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QUANLYKHACHSANKIMANH] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QUANLYKHACHSANKIMANH] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QUANLYKHACHSANKIMANH] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QUANLYKHACHSANKIMANH] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QUANLYKHACHSANKIMANH] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QUANLYKHACHSANKIMANH] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QUANLYKHACHSANKIMANH] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QUANLYKHACHSANKIMANH] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QUANLYKHACHSANKIMANH] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QUANLYKHACHSANKIMANH] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QUANLYKHACHSANKIMANH] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QUANLYKHACHSANKIMANH] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QUANLYKHACHSANKIMANH] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QUANLYKHACHSANKIMANH] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QUANLYKHACHSANKIMANH] SET  MULTI_USER 
GO
ALTER DATABASE [QUANLYKHACHSANKIMANH] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QUANLYKHACHSANKIMANH] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QUANLYKHACHSANKIMANH] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QUANLYKHACHSANKIMANH] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QUANLYKHACHSANKIMANH] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QUANLYKHACHSANKIMANH] SET QUERY_STORE = OFF
GO
USE [QUANLYKHACHSANKIMANH]
GO
/****** Object:  Table [dbo].[BAO_CAO_DOANH_THU]    Script Date: 6/24/2020 12:26:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BAO_CAO_DOANH_THU](
	[MaDoanhThu] [varchar](10) NOT NULL,
	[Thang] [datetime] NULL,
	[TongDoanhThu] [float] NULL,
 CONSTRAINT [PK_BAO_CAO_DOANH_THU] PRIMARY KEY CLUSTERED 
(
	[MaDoanhThu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHI_TIET_BAO_CAO_DOANH_THU]    Script Date: 6/24/2020 12:26:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHI_TIET_BAO_CAO_DOANH_THU](
	[Thang] [int] NOT NULL,
	[Nam] [int] NULL,
	[MaPhong] [varchar](3) NOT NULL,
	[DoanhThu] [float] NULL,
	[TyLe] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHI_TIET_HOA_DON]    Script Date: 6/24/2020 12:26:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHI_TIET_HOA_DON](
	[MaHoaDon] [varchar](3) NOT NULL,
	[MaPhong] [varchar](3) NOT NULL,
	[MaSuDungDichVu] [varchar](4) NOT NULL,
	[MaChinhSach] [varchar](5) NOT NULL,
	[PhuThu] [float] NULL,
	[TienPhong] [float] NULL,
	[TienDichVu] [float] NULL,
	[GiamGiaKH] [float] NULL,
	[HinhThucThanhToan] [nvarchar](50) NULL,
	[SoNgay] [int] NULL,
	[ThanhTien] [float] NULL,
 CONSTRAINT [PK_CHI_TIET_HOA_DON] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC,
	[MaPhong] ASC,
	[MaSuDungDichVu] ASC,
	[MaChinhSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHI_TIET_MAT_DO_SU_DUNG_PHONG]    Script Date: 6/24/2020 12:26:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHI_TIET_MAT_DO_SU_DUNG_PHONG](
	[MaChiTietMatDo] [varchar](10) NOT NULL,
	[MaMatDo] [varchar](10) NOT NULL,
	[MaPhong] [varchar](10) NOT NULL,
	[SoNgayThue] [int] NULL,
	[TyLe] [float] NULL,
 CONSTRAINT [PK_CHI_TIET_MAT_DO_SU_DUNG_PHONG] PRIMARY KEY CLUSTERED 
(
	[MaChiTietMatDo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHI_TIET_PHIEU_NHAN_PHONG]    Script Date: 6/24/2020 12:26:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHI_TIET_PHIEU_NHAN_PHONG](
	[MaNhanPhong] [varchar](5) NOT NULL,
	[MaPhong] [varchar](3) NOT NULL,
	[HoTenKhachHang] [nvarchar](50) NULL,
	[CMND] [nvarchar](15) NULL,
	[NgayNhan] [datetime] NULL,
	[NgayTraDuKien] [datetime] NULL,
	[NgayTraThucTe] [datetime] NULL,
 CONSTRAINT [PK_CHI_TIET_PHIEU_NHAN_PHONG] PRIMARY KEY CLUSTERED 
(
	[MaNhanPhong] ASC,
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHI_TIET_PHIEU_THUE_PHONG]    Script Date: 6/24/2020 12:26:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHI_TIET_PHIEU_THUE_PHONG](
	[MaPhieuThue] [varchar](10) NOT NULL,
	[MaPhong] [varchar](3) NOT NULL,
	[NgayDangKy] [datetime] NULL,
	[NgayNhan] [datetime] NULL,
 CONSTRAINT [PK_CHI_TIET_PHIEU_THUE_PHONG] PRIMARY KEY CLUSTERED 
(
	[MaPhieuThue] ASC,
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHINH_SACH_TRA_PHONG]    Script Date: 6/24/2020 12:26:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHINH_SACH_TRA_PHONG](
	[MaChinhSach] [varchar](5) NOT NULL,
	[ThoiGianQuiDinh] [nvarchar](50) NULL,
	[PhuThu] [float] NULL,
 CONSTRAINT [PK_CHINH_SACH_TRA_PHONG] PRIMARY KEY CLUSTERED 
(
	[MaChinhSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DANH_SACH_SU_DUNG_DICH_VU]    Script Date: 6/24/2020 12:26:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DANH_SACH_SU_DUNG_DICH_VU](
	[MaSuDungDvu] [varchar](4) NOT NULL,
	[MaDichVu] [varchar](5) NOT NULL,
	[MaNhanPhong] [varchar](5) NOT NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_DANH_SACH_SU_DUNG_DICH_VU] PRIMARY KEY CLUSTERED 
(
	[MaSuDungDvu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DICH_VU]    Script Date: 6/24/2020 12:26:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DICH_VU](
	[MaDichVu] [varchar](5) NOT NULL,
	[MaLoaiDichVu] [varchar](5) NOT NULL,
	[MaDonVi] [varchar](3) NOT NULL,
	[DonGia] [float] NULL,
 CONSTRAINT [PK_DICH_VU] PRIMARY KEY CLUSTERED 
(
	[MaDichVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DON_VI]    Script Date: 6/24/2020 12:26:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DON_VI](
	[MaDonVi] [varchar](3) NOT NULL,
	[TenDonVi] [nvarchar](50) NULL,
 CONSTRAINT [PK_DON_VI] PRIMARY KEY CLUSTERED 
(
	[MaDonVi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOA_DON]    Script Date: 6/24/2020 12:26:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOA_DON](
	[MaHoaDon] [varchar](3) NOT NULL,
	[NhanVienLap] [nvarchar](50) NULL,
	[MaKhachHang] [varchar](3) NOT NULL,
	[MaNhanPhong] [varchar](5) NOT NULL,
	[TongTien] [float] NOT NULL,
	[NgayLap] [datetime] NOT NULL,
 CONSTRAINT [PK_HOA_DON] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACH_HANG]    Script Date: 6/24/2020 12:26:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACH_HANG](
	[MaKhachHang] [varchar](3) NOT NULL,
	[TenKhachHang] [nvarchar](50) NULL,
	[CMND] [nvarchar](15) NOT NULL,
	[GioiTinh] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[DienThoai] [int] NULL,
	[QuocTich] [nvarchar](50) NULL,
 CONSTRAINT [PK_KHACH_HANG] PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAI_DICH_VU]    Script Date: 6/24/2020 12:26:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAI_DICH_VU](
	[MaLoaiDichVu] [varchar](5) NOT NULL,
	[TenLoaiDichVu] [nvarchar](50) NULL,
 CONSTRAINT [PK_LOAI_DICH_VU] PRIMARY KEY CLUSTERED 
(
	[MaLoaiDichVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAI_NGUOI_DUNG]    Script Date: 6/24/2020 12:26:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAI_NGUOI_DUNG](
	[LoaiNguoiDung] [int] NOT NULL,
	[TenLoaiNguoiDung] [nvarchar](50) NULL,
 CONSTRAINT [PK_LOAI_NGUOI_DUNG] PRIMARY KEY CLUSTERED 
(
	[LoaiNguoiDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAI_PHONG]    Script Date: 6/24/2020 12:26:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAI_PHONG](
	[MaLoaiPhong] [varchar](3) NOT NULL,
	[TenLoaiPhong] [nvarchar](50) NULL,
	[DonGia] [float] NULL,
	[SoNguoiChuan] [int] NULL,
	[SoNguoiToiDa] [int] NULL,
	[TyLeTang] [float] NULL,
 CONSTRAINT [PK_LOAI_PHONG] PRIMARY KEY CLUSTERED 
(
	[MaLoaiPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAI_TINH_TRANG]    Script Date: 6/24/2020 12:26:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAI_TINH_TRANG](
	[MaLoaiTinhTrangPhong] [int] NOT NULL,
	[TenLoaiTinhTrang] [nvarchar](50) NULL,
 CONSTRAINT [PK_LOAI_TINH_TRANG] PRIMARY KEY CLUSTERED 
(
	[MaLoaiTinhTrangPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MAT_DO_SU_DUNG_PHONG]    Script Date: 6/24/2020 12:26:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MAT_DO_SU_DUNG_PHONG](
	[MaMatDo] [varchar](10) NOT NULL,
	[Ngay] [datetime] NULL,
	[Thang] [datetime] NULL,
	[Nam] [datetime] NULL,
 CONSTRAINT [PK_MAT_DO_SU_DUNG_PHONG] PRIMARY KEY CLUSTERED 
(
	[MaMatDo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NGUOI_DUNG]    Script Date: 6/24/2020 12:26:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NGUOI_DUNG](
	[TenDangNhap] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](50) NOT NULL,
	[LoaiNguoiDung] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEU_NHAN_PHONG]    Script Date: 6/24/2020 12:26:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEU_NHAN_PHONG](
	[MaNhanPhong] [varchar](5) NOT NULL,
	[MaPhieuThue] [varchar](10) NOT NULL,
	[MaKhachHang] [varchar](3) NOT NULL,
 CONSTRAINT [PK_PHIEU_NHAN_PHONG] PRIMARY KEY CLUSTERED 
(
	[MaNhanPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEU_THUE_PHONG]    Script Date: 6/24/2020 12:26:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEU_THUE_PHONG](
	[MaPhieuThue] [varchar](10) NOT NULL,
	[MaKhachHang] [varchar](3) NOT NULL,
 CONSTRAINT [PK_PHIEU_THUE_PHONG] PRIMARY KEY CLUSTERED 
(
	[MaPhieuThue] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHONG]    Script Date: 6/24/2020 12:26:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHONG](
	[MaPhong] [varchar](3) NOT NULL,
	[MaLoaiPhong] [varchar](3) NOT NULL,
	[MaLoaiTinhTrangPhong] [int] NOT NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_PHONG] PRIMARY KEY CLUSTERED 
(
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QUI_DINH]    Script Date: 6/24/2020 12:26:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUI_DINH](
	[TenQuiDinh] [nvarchar](50) NULL,
	[MoTa] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THAM_SO]    Script Date: 6/24/2020 12:26:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THAM_SO](
	[PhieuDangKy] [int] NOT NULL,
	[PhieuNhan] [int] NOT NULL,
	[HoaDon] [int] NULL,
	[STT] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THIET_BI]    Script Date: 6/24/2020 12:26:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THIET_BI](
	[MaThietBi] [varchar](8) NOT NULL,
	[TenThietBi] [nvarchar](50) NULL,
	[MaLoaiPhong] [varchar](3) NOT NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_THIET_BI] PRIMARY KEY CLUSTERED 
(
	[MaThietBi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CHI_TIET_HOA_DON] ([MaHoaDon], [MaPhong], [MaSuDungDichVu], [MaChinhSach], [PhuThu], [TienPhong], [TienDichVu], [GiamGiaKH], [HinhThucThanhToan], [SoNgay], [ThanhTien]) VALUES (N'0', N'203', N'SD01', N'Muc1', 0, 270000, 120000, 0, N'TM', 2, NULL)
INSERT [dbo].[CHI_TIET_HOA_DON] ([MaHoaDon], [MaPhong], [MaSuDungDichVu], [MaChinhSach], [PhuThu], [TienPhong], [TienDichVu], [GiamGiaKH], [HinhThucThanhToan], [SoNgay], [ThanhTien]) VALUES (N'02', N'204', N'SD06', N'Muc2', 0.2, 270000, 400000, 0, N'TM', 8, NULL)
INSERT [dbo].[CHI_TIET_HOA_DON] ([MaHoaDon], [MaPhong], [MaSuDungDichVu], [MaChinhSach], [PhuThu], [TienPhong], [TienDichVu], [GiamGiaKH], [HinhThucThanhToan], [SoNgay], [ThanhTien]) VALUES (N'32', N'205', N'SD05', N'Muc1', 0, 270000, 180000, 0, N'Tiền mặt', 2, NULL)
INSERT [dbo].[CHI_TIET_HOA_DON] ([MaHoaDon], [MaPhong], [MaSuDungDichVu], [MaChinhSach], [PhuThu], [TienPhong], [TienDichVu], [GiamGiaKH], [HinhThucThanhToan], [SoNgay], [ThanhTien]) VALUES (N'37', N'201', N'SD01', N'Muc2', 0.2, 320000, 120000, 0, N'Cash', 3, NULL)
GO
INSERT [dbo].[CHI_TIET_PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhong], [HoTenKhachHang], [CMND], [NgayNhan], [NgayTraDuKien], [NgayTraThucTe]) VALUES (N'0', N'201', N'Nguyễn Thị Yến Nhi', N'350608978', CAST(N'2008-03-22T00:00:00.000' AS DateTime), CAST(N'2008-03-24T00:00:00.000' AS DateTime), CAST(N'2008-03-24T00:00:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhong], [HoTenKhachHang], [CMND], [NgayNhan], [NgayTraDuKien], [NgayTraThucTe]) VALUES (N'10', N'202', N'hhh', N'uuu', CAST(N'2008-03-19T00:00:00.000' AS DateTime), CAST(N'2008-03-29T00:00:00.000' AS DateTime), CAST(N'2008-03-31T00:00:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhong], [HoTenKhachHang], [CMND], [NgayNhan], [NgayTraDuKien], [NgayTraThucTe]) VALUES (N'16', N'201', N'Phạm Huỳnh tân', N'351234678', CAST(N'2008-03-29T00:00:00.000' AS DateTime), CAST(N'2008-03-30T00:00:00.000' AS DateTime), CAST(N'2008-03-31T00:00:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhong], [HoTenKhachHang], [CMND], [NgayNhan], [NgayTraDuKien], [NgayTraThucTe]) VALUES (N'17', N'202', N'Trần Thị Kim Nhiên', N'353608113', CAST(N'2008-03-24T00:00:00.000' AS DateTime), CAST(N'2008-03-30T00:00:00.000' AS DateTime), CAST(N'2008-03-31T00:00:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhong], [HoTenKhachHang], [CMND], [NgayNhan], [NgayTraDuKien], [NgayTraThucTe]) VALUES (N'19', N'201', N'Nguyễn Ngọc An', N'3520987711', CAST(N'2008-04-01T00:00:00.000' AS DateTime), CAST(N'2008-04-02T00:00:00.000' AS DateTime), CAST(N'2008-04-02T00:00:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhong], [HoTenKhachHang], [CMND], [NgayNhan], [NgayTraDuKien], [NgayTraThucTe]) VALUES (N'2', N'203', N'Lê Ngọc Thanh', N'3516781123', CAST(N'2008-03-22T00:00:00.000' AS DateTime), CAST(N'2008-03-24T00:00:00.000' AS DateTime), CAST(N'2008-03-24T00:00:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhong], [HoTenKhachHang], [CMND], [NgayNhan], [NgayTraDuKien], [NgayTraThucTe]) VALUES (N'21', N'301', N'Trần Thị Mỹ Nhân', N'351608115', CAST(N'2007-03-19T00:00:00.000' AS DateTime), CAST(N'2008-03-03T00:00:00.000' AS DateTime), CAST(N'2008-03-19T00:00:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhong], [HoTenKhachHang], [CMND], [NgayNhan], [NgayTraDuKien], [NgayTraThucTe]) VALUES (N'21', N'305', N'Trần Thị Mỹ Nhân', N'351608115', CAST(N'2007-04-19T00:00:00.000' AS DateTime), CAST(N'2008-03-03T00:00:00.000' AS DateTime), CAST(N'2008-03-19T00:00:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhong], [HoTenKhachHang], [CMND], [NgayNhan], [NgayTraDuKien], [NgayTraThucTe]) VALUES (N'25', N'203', N'Trần Thị Mỹ Nhân', N'351908756', CAST(N'2008-03-29T00:00:00.000' AS DateTime), CAST(N'2008-03-30T00:00:00.000' AS DateTime), CAST(N'2008-03-31T00:00:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhong], [HoTenKhachHang], [CMND], [NgayNhan], [NgayTraDuKien], [NgayTraThucTe]) VALUES (N'27', N'204', N'Trần Thị Mỹ Nhiên', N'350789654', CAST(N'2008-03-05T00:00:00.000' AS DateTime), CAST(N'2008-03-27T00:00:00.000' AS DateTime), CAST(N'2008-03-28T00:00:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhong], [HoTenKhachHang], [CMND], [NgayNhan], [NgayTraDuKien], [NgayTraThucTe]) VALUES (N'28', N'205', N'Trần Thị Mỹ Hiền', N'352456123', CAST(N'2008-03-20T00:00:00.000' AS DateTime), CAST(N'2008-03-27T00:00:00.000' AS DateTime), CAST(N'2008-03-28T00:00:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhong], [HoTenKhachHang], [CMND], [NgayNhan], [NgayTraDuKien], [NgayTraThucTe]) VALUES (N'29', N'206', N'tyyy', N'4321466', CAST(N'2008-03-12T00:00:00.000' AS DateTime), CAST(N'2008-03-27T00:00:00.000' AS DateTime), CAST(N'2008-03-28T00:00:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhong], [HoTenKhachHang], [CMND], [NgayNhan], [NgayTraDuKien], [NgayTraThucTe]) VALUES (N'30', N'207', N'344', N'2345', CAST(N'2008-03-19T00:00:00.000' AS DateTime), CAST(N'2008-03-27T00:00:00.000' AS DateTime), CAST(N'2008-03-28T00:00:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhong], [HoTenKhachHang], [CMND], [NgayNhan], [NgayTraDuKien], [NgayTraThucTe]) VALUES (N'32', N'210', N'tr', N'123', CAST(N'2008-03-26T00:00:00.000' AS DateTime), CAST(N'2008-03-27T00:00:00.000' AS DateTime), CAST(N'2008-03-28T00:00:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhong], [HoTenKhachHang], [CMND], [NgayNhan], [NgayTraDuKien], [NgayTraThucTe]) VALUES (N'33', N'203', N'tty', N'17633', CAST(N'2008-03-12T00:00:00.000' AS DateTime), CAST(N'2008-03-25T00:00:00.000' AS DateTime), CAST(N'2008-03-26T00:00:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhong], [HoTenKhachHang], [CMND], [NgayNhan], [NgayTraDuKien], [NgayTraThucTe]) VALUES (N'34', N'205', N'Diệp Ngọc Phi', N'34567896', CAST(N'2008-04-10T00:00:00.000' AS DateTime), CAST(N'2008-04-11T00:00:00.000' AS DateTime), CAST(N'2008-04-12T00:00:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhong], [HoTenKhachHang], [CMND], [NgayNhan], [NgayTraDuKien], [NgayTraThucTe]) VALUES (N'35', N'204', N'TT', N'38765111312', CAST(N'2008-03-24T00:00:00.000' AS DateTime), CAST(N'2008-03-31T00:00:00.000' AS DateTime), CAST(N'2008-04-01T00:00:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhong], [HoTenKhachHang], [CMND], [NgayNhan], [NgayTraDuKien], [NgayTraThucTe]) VALUES (N'90', N'204', N'Trần Thanh Kiên', N'352609113', CAST(N'2008-04-02T00:00:00.000' AS DateTime), CAST(N'2008-04-03T00:00:00.000' AS DateTime), CAST(N'2008-04-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[CHI_TIET_PHIEU_THUE_PHONG] ([MaPhieuThue], [MaPhong], [NgayDangKy], [NgayNhan]) VALUES (N'0', N'203', CAST(N'2008-03-22T00:00:00.000' AS DateTime), CAST(N'2008-03-22T00:00:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_THUE_PHONG] ([MaPhieuThue], [MaPhong], [NgayDangKy], [NgayNhan]) VALUES (N'05', N'201', CAST(N'2008-04-01T00:00:00.000' AS DateTime), CAST(N'2008-04-02T00:00:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_THUE_PHONG] ([MaPhieuThue], [MaPhong], [NgayDangKy], [NgayNhan]) VALUES (N'06', N'405', CAST(N'2008-04-01T00:00:00.000' AS DateTime), CAST(N'2008-04-03T00:00:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_THUE_PHONG] ([MaPhieuThue], [MaPhong], [NgayDangKy], [NgayNhan]) VALUES (N'1', N'204', CAST(N'2008-03-22T00:00:00.000' AS DateTime), CAST(N'2008-03-26T00:00:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_THUE_PHONG] ([MaPhieuThue], [MaPhong], [NgayDangKy], [NgayNhan]) VALUES (N'111', N'210', CAST(N'2008-03-24T00:00:00.000' AS DateTime), CAST(N'2008-03-28T00:00:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_THUE_PHONG] ([MaPhieuThue], [MaPhong], [NgayDangKy], [NgayNhan]) VALUES (N'111222', N'207', CAST(N'2008-03-24T00:00:00.000' AS DateTime), CAST(N'2008-03-24T00:00:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_THUE_PHONG] ([MaPhieuThue], [MaPhong], [NgayDangKy], [NgayNhan]) VALUES (N'12', N'206', CAST(N'2008-03-24T00:00:00.000' AS DateTime), CAST(N'2008-03-28T00:00:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_THUE_PHONG] ([MaPhieuThue], [MaPhong], [NgayDangKy], [NgayNhan]) VALUES (N'16', N'201', CAST(N'2008-03-31T00:00:00.000' AS DateTime), CAST(N'2008-03-31T00:00:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_THUE_PHONG] ([MaPhieuThue], [MaPhong], [NgayDangKy], [NgayNhan]) VALUES (N'17', N'202', CAST(N'2008-03-31T00:00:00.000' AS DateTime), CAST(N'2008-03-31T00:00:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_THUE_PHONG] ([MaPhieuThue], [MaPhong], [NgayDangKy], [NgayNhan]) VALUES (N'18', N'204', CAST(N'2008-03-30T00:00:00.000' AS DateTime), CAST(N'2008-03-31T00:00:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_THUE_PHONG] ([MaPhieuThue], [MaPhong], [NgayDangKy], [NgayNhan]) VALUES (N'19', N'202', CAST(N'2008-04-01T00:00:00.000' AS DateTime), CAST(N'2008-04-01T00:00:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_THUE_PHONG] ([MaPhieuThue], [MaPhong], [NgayDangKy], [NgayNhan]) VALUES (N'2', N'204', CAST(N'2008-03-22T00:00:00.000' AS DateTime), CAST(N'2008-03-26T00:00:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_THUE_PHONG] ([MaPhieuThue], [MaPhong], [NgayDangKy], [NgayNhan]) VALUES (N'20', N'205', CAST(N'2008-03-24T00:00:00.000' AS DateTime), CAST(N'2008-03-24T00:00:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_THUE_PHONG] ([MaPhieuThue], [MaPhong], [NgayDangKy], [NgayNhan]) VALUES (N'22', N'301', CAST(N'2008-03-24T00:00:00.000' AS DateTime), CAST(N'2008-03-28T00:00:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_THUE_PHONG] ([MaPhieuThue], [MaPhong], [NgayDangKy], [NgayNhan]) VALUES (N'2222', N'305', CAST(N'2008-03-24T00:00:00.000' AS DateTime), CAST(N'2008-03-27T00:00:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_THUE_PHONG] ([MaPhieuThue], [MaPhong], [NgayDangKy], [NgayNhan]) VALUES (N'24', N'207', CAST(N'2008-03-23T00:00:00.000' AS DateTime), CAST(N'2008-03-31T00:00:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_THUE_PHONG] ([MaPhieuThue], [MaPhong], [NgayDangKy], [NgayNhan]) VALUES (N'25', N'204', CAST(N'2008-04-01T00:00:00.000' AS DateTime), CAST(N'2008-04-02T00:00:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_THUE_PHONG] ([MaPhieuThue], [MaPhong], [NgayDangKy], [NgayNhan]) VALUES (N'3', N'205', CAST(N'2008-03-22T00:00:00.000' AS DateTime), CAST(N'2008-03-25T00:00:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_THUE_PHONG] ([MaPhieuThue], [MaPhong], [NgayDangKy], [NgayNhan]) VALUES (N'30', N'206', CAST(N'2008-04-05T00:00:00.000' AS DateTime), CAST(N'2008-04-05T00:00:00.000' AS DateTime))
INSERT [dbo].[CHI_TIET_PHIEU_THUE_PHONG] ([MaPhieuThue], [MaPhong], [NgayDangKy], [NgayNhan]) VALUES (N'32', N'208', CAST(N'2008-04-06T00:00:00.000' AS DateTime), CAST(N'2008-04-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[CHINH_SACH_TRA_PHONG] ([MaChinhSach], [ThoiGianQuiDinh], [PhuThu]) VALUES (N'Muc1', N'12h-13h', 0)
INSERT [dbo].[CHINH_SACH_TRA_PHONG] ([MaChinhSach], [ThoiGianQuiDinh], [PhuThu]) VALUES (N'Muc2', N'13h-15h', 0.2)
INSERT [dbo].[CHINH_SACH_TRA_PHONG] ([MaChinhSach], [ThoiGianQuiDinh], [PhuThu]) VALUES (N'Muc3', N'15h-17h', 0.4)
INSERT [dbo].[CHINH_SACH_TRA_PHONG] ([MaChinhSach], [ThoiGianQuiDinh], [PhuThu]) VALUES (N'Muc4', N'17h-19h', 0.5)
INSERT [dbo].[CHINH_SACH_TRA_PHONG] ([MaChinhSach], [ThoiGianQuiDinh], [PhuThu]) VALUES (N'Muc5', N'Sau 19h', 1)
GO
INSERT [dbo].[DANH_SACH_SU_DUNG_DICH_VU] ([MaSuDungDvu], [MaDichVu], [MaNhanPhong], [SoLuong]) VALUES (N'SD01', N'DV01', N'0', 2)
INSERT [dbo].[DANH_SACH_SU_DUNG_DICH_VU] ([MaSuDungDvu], [MaDichVu], [MaNhanPhong], [SoLuong]) VALUES (N'SD02', N'DV03', N'2', 2)
INSERT [dbo].[DANH_SACH_SU_DUNG_DICH_VU] ([MaSuDungDvu], [MaDichVu], [MaNhanPhong], [SoLuong]) VALUES (N'SD03', N'DV04', N'2', 2)
INSERT [dbo].[DANH_SACH_SU_DUNG_DICH_VU] ([MaSuDungDvu], [MaDichVu], [MaNhanPhong], [SoLuong]) VALUES (N'SD04', N'DV05', N'0', 3)
INSERT [dbo].[DANH_SACH_SU_DUNG_DICH_VU] ([MaSuDungDvu], [MaDichVu], [MaNhanPhong], [SoLuong]) VALUES (N'SD05', N'DV01', N'10', 3)
INSERT [dbo].[DANH_SACH_SU_DUNG_DICH_VU] ([MaSuDungDvu], [MaDichVu], [MaNhanPhong], [SoLuong]) VALUES (N'SD06', N'DV02', N'10', 5)
GO
INSERT [dbo].[DICH_VU] ([MaDichVu], [MaLoaiDichVu], [MaDonVi], [DonGia]) VALUES (N'DV01', N'K', N'H', 60000)
INSERT [dbo].[DICH_VU] ([MaDichVu], [MaLoaiDichVu], [MaDonVi], [DonGia]) VALUES (N'DV02', N'M', N'V', 80000)
INSERT [dbo].[DICH_VU] ([MaDichVu], [MaLoaiDichVu], [MaDonVi], [DonGia]) VALUES (N'DV03', N'BH', N'L', 12000)
INSERT [dbo].[DICH_VU] ([MaDichVu], [MaLoaiDichVu], [MaDonVi], [DonGia]) VALUES (N'DV04', N'NB', N'L', 12000)
INSERT [dbo].[DICH_VU] ([MaDichVu], [MaLoaiDichVu], [MaDonVi], [DonGia]) VALUES (N'DV05', N'NL', N'CH', 8000)
INSERT [dbo].[DICH_VU] ([MaDichVu], [MaLoaiDichVu], [MaDonVi], [DonGia]) VALUES (N'DV06', N'TG', N'L', 15000)
INSERT [dbo].[DICH_VU] ([MaDichVu], [MaLoaiDichVu], [MaDonVi], [DonGia]) VALUES (N'DV07', N'GASM', N'C', 6000)
INSERT [dbo].[DICH_VU] ([MaDichVu], [MaLoaiDichVu], [MaDonVi], [DonGia]) VALUES (N'DV08', N'GQT', N'C', 6000)
INSERT [dbo].[DICH_VU] ([MaDichVu], [MaLoaiDichVu], [MaDonVi], [DonGia]) VALUES (N'DV09', N'GQS', N'C', 5000)
INSERT [dbo].[DICH_VU] ([MaDichVu], [MaLoaiDichVu], [MaDonVi], [DonGia]) VALUES (N'DV10', N'GADAM', N'C', 8000)
INSERT [dbo].[DICH_VU] ([MaDichVu], [MaLoaiDichVu], [MaDonVi], [DonGia]) VALUES (N'DV11', N'GADAI', N'B', 9000)
INSERT [dbo].[DICH_VU] ([MaDichVu], [MaLoaiDichVu], [MaDonVi], [DonGia]) VALUES (N'DV12', N'GVD', N'B', 6000)
INSERT [dbo].[DICH_VU] ([MaDichVu], [MaLoaiDichVu], [MaDonVi], [DonGia]) VALUES (N'DV13', N'GVN', N'C', 5000)
INSERT [dbo].[DICH_VU] ([MaDichVu], [MaLoaiDichVu], [MaDonVi], [DonGia]) VALUES (N'DV14', N'GQJ', N'C', 5000)
INSERT [dbo].[DICH_VU] ([MaDichVu], [MaLoaiDichVu], [MaDonVi], [DonGia]) VALUES (N'DV15', N'GAT', N'C', 5000)
INSERT [dbo].[DICH_VU] ([MaDichVu], [MaLoaiDichVu], [MaDonVi], [DonGia]) VALUES (N'DV16', N'GQAN', N'B', 8000)
INSERT [dbo].[DICH_VU] ([MaDichVu], [MaLoaiDichVu], [MaDonVi], [DonGia]) VALUES (N'DV17', N'UASM', N'C', 4000)
INSERT [dbo].[DICH_VU] ([MaDichVu], [MaLoaiDichVu], [MaDonVi], [DonGia]) VALUES (N'DV18', N'UQT', N'C', 4000)
INSERT [dbo].[DICH_VU] ([MaDichVu], [MaLoaiDichVu], [MaDonVi], [DonGia]) VALUES (N'DV19', N'UQS', N'C', 3000)
INSERT [dbo].[DICH_VU] ([MaDichVu], [MaLoaiDichVu], [MaDonVi], [DonGia]) VALUES (N'DV20', N'UADAM', N'C', 5000)
INSERT [dbo].[DICH_VU] ([MaDichVu], [MaLoaiDichVu], [MaDonVi], [DonGia]) VALUES (N'DV21', N'UADAI', N'B', 6000)
INSERT [dbo].[DICH_VU] ([MaDichVu], [MaLoaiDichVu], [MaDonVi], [DonGia]) VALUES (N'DV22', N'UVD', N'B', 4000)
INSERT [dbo].[DICH_VU] ([MaDichVu], [MaLoaiDichVu], [MaDonVi], [DonGia]) VALUES (N'DV23', N'UVD', N'C', 4000)
INSERT [dbo].[DICH_VU] ([MaDichVu], [MaLoaiDichVu], [MaDonVi], [DonGia]) VALUES (N'DV25', N'UQJ', N'C', 5000)
INSERT [dbo].[DICH_VU] ([MaDichVu], [MaLoaiDichVu], [MaDonVi], [DonGia]) VALUES (N'DV26', N'UAT', N'C', 5000)
INSERT [dbo].[DICH_VU] ([MaDichVu], [MaLoaiDichVu], [MaDonVi], [DonGia]) VALUES (N'DV27', N'UQAN', N'B', 4000)
GO
INSERT [dbo].[DON_VI] ([MaDonVi], [TenDonVi]) VALUES (N'B', N'Bộ')
INSERT [dbo].[DON_VI] ([MaDonVi], [TenDonVi]) VALUES (N'C', N'Cái')
INSERT [dbo].[DON_VI] ([MaDonVi], [TenDonVi]) VALUES (N'CH', N'Chai')
INSERT [dbo].[DON_VI] ([MaDonVi], [TenDonVi]) VALUES (N'H', N'Giờ')
INSERT [dbo].[DON_VI] ([MaDonVi], [TenDonVi]) VALUES (N'L', N'Lon')
INSERT [dbo].[DON_VI] ([MaDonVi], [TenDonVi]) VALUES (N'V', N'Vé')
GO
INSERT [dbo].[HOA_DON] ([MaHoaDon], [NhanVienLap], [MaKhachHang], [MaNhanPhong], [TongTien], [NgayLap]) VALUES (N'0', N'Trần Thị Kim Nhiên', N'A02', N'25', 660000, CAST(N'2008-03-31T00:00:00.000' AS DateTime))
INSERT [dbo].[HOA_DON] ([MaHoaDon], [NhanVienLap], [MaKhachHang], [MaNhanPhong], [TongTien], [NgayLap]) VALUES (N'02', N'tt', N'A02', N'35', 2614000, CAST(N'2008-04-01T00:00:00.000' AS DateTime))
INSERT [dbo].[HOA_DON] ([MaHoaDon], [NhanVienLap], [MaKhachHang], [MaNhanPhong], [TongTien], [NgayLap]) VALUES (N'32', N'Lý Ngọc Phượng', N'A01', N'16', 720000, CAST(N'2008-04-12T00:00:00.000' AS DateTime))
INSERT [dbo].[HOA_DON] ([MaHoaDon], [NhanVienLap], [MaKhachHang], [MaNhanPhong], [TongTien], [NgayLap]) VALUES (N'37', N'Trương Thanh', N'A12', N'90', 1144000, CAST(N'2008-04-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[KHACH_HANG] ([MaKhachHang], [TenKhachHang], [CMND], [GioiTinh], [DiaChi], [DienThoai], [QuocTich]) VALUES (N'A01', N'Nguyễn Thiện Tâm', N'351608111', N'Nam', N'An Giang', 979783540, N'Việt Nam')
INSERT [dbo].[KHACH_HANG] ([MaKhachHang], [TenKhachHang], [CMND], [GioiTinh], [DiaChi], [DienThoai], [QuocTich]) VALUES (N'A02', N'Phạm Phước Sang', N'351608113', N'Nam', N'Thạnh Mỹ Tây-An Giang', 977515057, N'Việt Nam')
INSERT [dbo].[KHACH_HANG] ([MaKhachHang], [TenKhachHang], [CMND], [GioiTinh], [DiaChi], [DienThoai], [QuocTich]) VALUES (N'A03', N'Jony Phước Sang', N'351608112', N'Nam', N'TPHCM', 986886460, N'Anh')
INSERT [dbo].[KHACH_HANG] ([MaKhachHang], [TenKhachHang], [CMND], [GioiTinh], [DiaChi], [DienThoai], [QuocTich]) VALUES (N'A04', N'Trọng Thiên Kỳ', N'350608114', N'Nam', N'CT', 1678901925, N'Việt nam')
INSERT [dbo].[KHACH_HANG] ([MaKhachHang], [TenKhachHang], [CMND], [GioiTinh], [DiaChi], [DienThoai], [QuocTich]) VALUES (N'A05', N'Lý Băng Băng', N'350789654', N'Nữ', N'Đồng Tháp', 988765432, N'Việt Nam')
INSERT [dbo].[KHACH_HANG] ([MaKhachHang], [TenKhachHang], [CMND], [GioiTinh], [DiaChi], [DienThoai], [QuocTich]) VALUES (N'A06', N'Trần Khánh Dư', N'350789654', N'Nam', N'Cần Thơ', 168756439, N'Việt Nam')
INSERT [dbo].[KHACH_HANG] ([MaKhachHang], [TenKhachHang], [CMND], [GioiTinh], [DiaChi], [DienThoai], [QuocTich]) VALUES (N'A07', N'Nguyen Phu Quoc', N'351754320', N'nam', N'Tri Ton', 878787878, N'Campuchia')
INSERT [dbo].[KHACH_HANG] ([MaKhachHang], [TenKhachHang], [CMND], [GioiTinh], [DiaChi], [DienThoai], [QuocTich]) VALUES (N'A11', N'Qucoc', N'738728', N'nam', N'hdgh', 663764667, N'cam')
INSERT [dbo].[KHACH_HANG] ([MaKhachHang], [TenKhachHang], [CMND], [GioiTinh], [DiaChi], [DienThoai], [QuocTich]) VALUES (N'A12', N'Nhân', N'10987623', N'Nữ', N'Ag', 978123455, N'VN')
INSERT [dbo].[KHACH_HANG] ([MaKhachHang], [TenKhachHang], [CMND], [GioiTinh], [DiaChi], [DienThoai], [QuocTich]) VALUES (N'A13', N'Phượng', N'345127678', N'Nữ', N'DT', 979123456, N'VN')
GO
INSERT [dbo].[LOAI_DICH_VU] ([MaLoaiDichVu], [TenLoaiDichVu]) VALUES (N'BH', N'Bò húc')
INSERT [dbo].[LOAI_DICH_VU] ([MaLoaiDichVu], [TenLoaiDichVu]) VALUES (N'GADAI', N'Giặt áo dài')
INSERT [dbo].[LOAI_DICH_VU] ([MaLoaiDichVu], [TenLoaiDichVu]) VALUES (N'GADAM', N'Giặt áo đầm')
INSERT [dbo].[LOAI_DICH_VU] ([MaLoaiDichVu], [TenLoaiDichVu]) VALUES (N'GASM', N'Giặt áo sơ mi')
INSERT [dbo].[LOAI_DICH_VU] ([MaLoaiDichVu], [TenLoaiDichVu]) VALUES (N'GAT', N'Giặt áo thun')
INSERT [dbo].[LOAI_DICH_VU] ([MaLoaiDichVu], [TenLoaiDichVu]) VALUES (N'GQAN', N'Giặt quần áo ngủ')
INSERT [dbo].[LOAI_DICH_VU] ([MaLoaiDichVu], [TenLoaiDichVu]) VALUES (N'GQJ', N'Giặt quần jean')
INSERT [dbo].[LOAI_DICH_VU] ([MaLoaiDichVu], [TenLoaiDichVu]) VALUES (N'GQS', N'Giặt quần sọt')
INSERT [dbo].[LOAI_DICH_VU] ([MaLoaiDichVu], [TenLoaiDichVu]) VALUES (N'GQT', N'Giặt quần tây')
INSERT [dbo].[LOAI_DICH_VU] ([MaLoaiDichVu], [TenLoaiDichVu]) VALUES (N'GVD', N'Giặt váy dài')
INSERT [dbo].[LOAI_DICH_VU] ([MaLoaiDichVu], [TenLoaiDichVu]) VALUES (N'GVN', N'Giặt váy ngắn')
INSERT [dbo].[LOAI_DICH_VU] ([MaLoaiDichVu], [TenLoaiDichVu]) VALUES (N'K', N'Karaoke')
INSERT [dbo].[LOAI_DICH_VU] ([MaLoaiDichVu], [TenLoaiDichVu]) VALUES (N'M', N'Massage')
INSERT [dbo].[LOAI_DICH_VU] ([MaLoaiDichVu], [TenLoaiDichVu]) VALUES (N'NB', N'Nước bí')
INSERT [dbo].[LOAI_DICH_VU] ([MaLoaiDichVu], [TenLoaiDichVu]) VALUES (N'NL', N'Nước Lavie')
INSERT [dbo].[LOAI_DICH_VU] ([MaLoaiDichVu], [TenLoaiDichVu]) VALUES (N'TG', N'Tiger Beer')
INSERT [dbo].[LOAI_DICH_VU] ([MaLoaiDichVu], [TenLoaiDichVu]) VALUES (N'UADAI', N'Ủi áo dài')
INSERT [dbo].[LOAI_DICH_VU] ([MaLoaiDichVu], [TenLoaiDichVu]) VALUES (N'UADAM', N'Ủi áo đầm')
INSERT [dbo].[LOAI_DICH_VU] ([MaLoaiDichVu], [TenLoaiDichVu]) VALUES (N'UASM', N'Ủi áo sơ mi')
INSERT [dbo].[LOAI_DICH_VU] ([MaLoaiDichVu], [TenLoaiDichVu]) VALUES (N'UAT', N'Ủi áo thun')
INSERT [dbo].[LOAI_DICH_VU] ([MaLoaiDichVu], [TenLoaiDichVu]) VALUES (N'UQAN', N'Ủi quần áo ngủ')
INSERT [dbo].[LOAI_DICH_VU] ([MaLoaiDichVu], [TenLoaiDichVu]) VALUES (N'UQJ', N'Ủi quần jean')
INSERT [dbo].[LOAI_DICH_VU] ([MaLoaiDichVu], [TenLoaiDichVu]) VALUES (N'UQS', N'Ủi quần sọt')
INSERT [dbo].[LOAI_DICH_VU] ([MaLoaiDichVu], [TenLoaiDichVu]) VALUES (N'UQT', N'Ủi quần tây')
INSERT [dbo].[LOAI_DICH_VU] ([MaLoaiDichVu], [TenLoaiDichVu]) VALUES (N'UVD', N'Ủi váy dài')
INSERT [dbo].[LOAI_DICH_VU] ([MaLoaiDichVu], [TenLoaiDichVu]) VALUES (N'UVN', N'Ủi váy ngắn')
GO
INSERT [dbo].[LOAI_NGUOI_DUNG] ([LoaiNguoiDung], [TenLoaiNguoiDung]) VALUES (1, N'Admin')
INSERT [dbo].[LOAI_NGUOI_DUNG] ([LoaiNguoiDung], [TenLoaiNguoiDung]) VALUES (2, N'User')
GO
INSERT [dbo].[LOAI_PHONG] ([MaLoaiPhong], [TenLoaiPhong], [DonGia], [SoNguoiChuan], [SoNguoiToiDa], [TyLeTang]) VALUES (N'DB', N'Đặc biệt', 720000, 2, 4, NULL)
INSERT [dbo].[LOAI_PHONG] ([MaLoaiPhong], [TenLoaiPhong], [DonGia], [SoNguoiChuan], [SoNguoiToiDa], [TyLeTang]) VALUES (N'LI', N'Loại I', 320000, 2, 4, NULL)
INSERT [dbo].[LOAI_PHONG] ([MaLoaiPhong], [TenLoaiPhong], [DonGia], [SoNguoiChuan], [SoNguoiToiDa], [TyLeTang]) VALUES (N'LII', N'Loại II', 270000, 2, 4, NULL)
GO
INSERT [dbo].[LOAI_TINH_TRANG] ([MaLoaiTinhTrangPhong], [TenLoaiTinhTrang]) VALUES (1, N'Trống')
INSERT [dbo].[LOAI_TINH_TRANG] ([MaLoaiTinhTrangPhong], [TenLoaiTinhTrang]) VALUES (2, N'Đặt')
INSERT [dbo].[LOAI_TINH_TRANG] ([MaLoaiTinhTrangPhong], [TenLoaiTinhTrang]) VALUES (3, N'Có người ở')
GO
INSERT [dbo].[NGUOI_DUNG] ([TenDangNhap], [MatKhau], [LoaiNguoiDung]) VALUES (N'mynhan', N'nhan', 1)
INSERT [dbo].[NGUOI_DUNG] ([TenDangNhap], [MatKhau], [LoaiNguoiDung]) VALUES (N'phuong', N'phuong', 1)
INSERT [dbo].[NGUOI_DUNG] ([TenDangNhap], [MatKhau], [LoaiNguoiDung]) VALUES (N'truc', N'huynh', 2)
INSERT [dbo].[NGUOI_DUNG] ([TenDangNhap], [MatKhau], [LoaiNguoiDung]) VALUES (N'trinh', N'trinh', 2)
INSERT [dbo].[NGUOI_DUNG] ([TenDangNhap], [MatKhau], [LoaiNguoiDung]) VALUES (N'sang', N'sang', 1)
GO
INSERT [dbo].[PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhieuThue], [MaKhachHang]) VALUES (N'0', N'0', N'A01')
INSERT [dbo].[PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhieuThue], [MaKhachHang]) VALUES (N'10', N'2', N'A03')
INSERT [dbo].[PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhieuThue], [MaKhachHang]) VALUES (N'15', N'0', N'A01')
INSERT [dbo].[PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhieuThue], [MaKhachHang]) VALUES (N'16', N'1', N'A01')
INSERT [dbo].[PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhieuThue], [MaKhachHang]) VALUES (N'17', N'1', N'A01')
INSERT [dbo].[PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhieuThue], [MaKhachHang]) VALUES (N'19', N'19', N'A04')
INSERT [dbo].[PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhieuThue], [MaKhachHang]) VALUES (N'2', N'2', N'A01')
INSERT [dbo].[PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhieuThue], [MaKhachHang]) VALUES (N'21', N'3', N'A02')
INSERT [dbo].[PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhieuThue], [MaKhachHang]) VALUES (N'24', N'2', N'A01')
INSERT [dbo].[PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhieuThue], [MaKhachHang]) VALUES (N'25', N'24', N'A02')
INSERT [dbo].[PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhieuThue], [MaKhachHang]) VALUES (N'27', N'2', N'A01')
INSERT [dbo].[PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhieuThue], [MaKhachHang]) VALUES (N'28', N'3', N'A02')
INSERT [dbo].[PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhieuThue], [MaKhachHang]) VALUES (N'29', N'0', N'A01')
INSERT [dbo].[PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhieuThue], [MaKhachHang]) VALUES (N'30', N'0', N'A01')
INSERT [dbo].[PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhieuThue], [MaKhachHang]) VALUES (N'32', N'0', N'A01')
INSERT [dbo].[PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhieuThue], [MaKhachHang]) VALUES (N'33', N'1', N'A01')
INSERT [dbo].[PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhieuThue], [MaKhachHang]) VALUES (N'35', N'24', N'A02')
INSERT [dbo].[PHIEU_NHAN_PHONG] ([MaNhanPhong], [MaPhieuThue], [MaKhachHang]) VALUES (N'90', N'25', N'A12')
GO
INSERT [dbo].[PHIEU_THUE_PHONG] ([MaPhieuThue], [MaKhachHang]) VALUES (N'0', N'A01')
INSERT [dbo].[PHIEU_THUE_PHONG] ([MaPhieuThue], [MaKhachHang]) VALUES (N'05', N'A07')
INSERT [dbo].[PHIEU_THUE_PHONG] ([MaPhieuThue], [MaKhachHang]) VALUES (N'06', N'A06')
INSERT [dbo].[PHIEU_THUE_PHONG] ([MaPhieuThue], [MaKhachHang]) VALUES (N'1', N'A01')
INSERT [dbo].[PHIEU_THUE_PHONG] ([MaPhieuThue], [MaKhachHang]) VALUES (N'111', N'A11')
INSERT [dbo].[PHIEU_THUE_PHONG] ([MaPhieuThue], [MaKhachHang]) VALUES (N'111222', N'A01')
INSERT [dbo].[PHIEU_THUE_PHONG] ([MaPhieuThue], [MaKhachHang]) VALUES (N'12', N'A04')
INSERT [dbo].[PHIEU_THUE_PHONG] ([MaPhieuThue], [MaKhachHang]) VALUES (N'16', N'A12')
INSERT [dbo].[PHIEU_THUE_PHONG] ([MaPhieuThue], [MaKhachHang]) VALUES (N'17', N'A11')
INSERT [dbo].[PHIEU_THUE_PHONG] ([MaPhieuThue], [MaKhachHang]) VALUES (N'18', N'A07')
INSERT [dbo].[PHIEU_THUE_PHONG] ([MaPhieuThue], [MaKhachHang]) VALUES (N'19', N'A04')
INSERT [dbo].[PHIEU_THUE_PHONG] ([MaPhieuThue], [MaKhachHang]) VALUES (N'2', N'A01')
INSERT [dbo].[PHIEU_THUE_PHONG] ([MaPhieuThue], [MaKhachHang]) VALUES (N'20', N'A06')
INSERT [dbo].[PHIEU_THUE_PHONG] ([MaPhieuThue], [MaKhachHang]) VALUES (N'22', N'A07')
INSERT [dbo].[PHIEU_THUE_PHONG] ([MaPhieuThue], [MaKhachHang]) VALUES (N'2222', N'A06')
INSERT [dbo].[PHIEU_THUE_PHONG] ([MaPhieuThue], [MaKhachHang]) VALUES (N'23', N'A05')
INSERT [dbo].[PHIEU_THUE_PHONG] ([MaPhieuThue], [MaKhachHang]) VALUES (N'24', N'A02')
INSERT [dbo].[PHIEU_THUE_PHONG] ([MaPhieuThue], [MaKhachHang]) VALUES (N'25', N'A12')
INSERT [dbo].[PHIEU_THUE_PHONG] ([MaPhieuThue], [MaKhachHang]) VALUES (N'27', N'A12')
INSERT [dbo].[PHIEU_THUE_PHONG] ([MaPhieuThue], [MaKhachHang]) VALUES (N'3', N'A02')
INSERT [dbo].[PHIEU_THUE_PHONG] ([MaPhieuThue], [MaKhachHang]) VALUES (N'30', N'A03')
INSERT [dbo].[PHIEU_THUE_PHONG] ([MaPhieuThue], [MaKhachHang]) VALUES (N'32', N'A01')
INSERT [dbo].[PHIEU_THUE_PHONG] ([MaPhieuThue], [MaKhachHang]) VALUES (N'333', N'A03')
GO
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'201', N'LI', 3, N'Trống')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'202', N'LI', 2, N'Trống')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'203', N'LII', 2, N'T')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'204', N'LII', 3, N'T')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'205', N'LII', 1, N'T')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'206', N'LII', 2, N'T')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'207', N'LII', 2, N'T')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'208', N'LII', 2, N'T')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'209', N'LII', 1, N'T')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'210', N'LI', 1, N'Trống')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'301', N'LI', 1, N'Trống')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'302', N'LI', 1, N'Trống')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'303', N'LII', 1, N'T')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'304', N'LII', 1, N'T')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'305', N'LII', 1, N'T')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'306', N'LII', 1, N'T')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'307', N'LII', 1, N'T')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'308', N'LII', 1, N'T')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'309', N'LII', 1, N'T')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'310', N'LI', 1, N'Trống')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'401', N'LI', 1, N'Trống')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'402', N'LI', 1, N'Trống')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'403', N'LII', 1, N'T')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'404', N'LII', 1, N'T')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'405', N'LII', 2, N'T')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'406', N'LII', 1, N'T')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'407', N'LII', 1, N'T')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'410', N'LI', 1, N'T')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'801', N'DB', 1, N'Trống')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'802', N'LI', 1, N'T')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'902', N'DB', 2, N'dat')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'903', N'DB', 1, N'')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'904', N'LI', 1, N'')
GO
INSERT [dbo].[QUI_DINH] ([TenQuiDinh], [MoTa]) VALUES (N'Chính sách trả phòng', N'1. Thời gain trả mỗi ngày là 12h')
INSERT [dbo].[QUI_DINH] ([TenQuiDinh], [MoTa]) VALUES (NULL, N'2. Trả phòng sau 12h đến 13h không phụ thu tiền phòng')
INSERT [dbo].[QUI_DINH] ([TenQuiDinh], [MoTa]) VALUES (NULL, N'3. Trả phòng sau 13h đến 15h phụ thu 20% tiền phòng')
INSERT [dbo].[QUI_DINH] ([TenQuiDinh], [MoTa]) VALUES (NULL, N'4. Trả phòng sau 15h đến 17h phụ thu 40% tiền phòng')
INSERT [dbo].[QUI_DINH] ([TenQuiDinh], [MoTa]) VALUES (NULL, N'5. Trả phòng sau 17h đến 19h phụ thu 50% tiền phòng')
INSERT [dbo].[QUI_DINH] ([TenQuiDinh], [MoTa]) VALUES (NULL, N'5. Trả phòng sau 19h tính nguyên giá đêm')
INSERT [dbo].[QUI_DINH] ([TenQuiDinh], [MoTa]) VALUES (NULL, N'')
INSERT [dbo].[QUI_DINH] ([TenQuiDinh], [MoTa]) VALUES (N'Nội qui Khách Sạn', N'1. Khách đến thuê phòng phải xuất trình hộ chiếu có thị thực  nhập cảnh hợp lệ cho tiếp tân ( hoặc chứng minh nhân dân đối với khách trong nước ).')
INSERT [dbo].[QUI_DINH] ([TenQuiDinh], [MoTa]) VALUES (NULL, N'2. Không mang vũ khí, chất độc, chất nổ, chất cháy và gia súc vào khách sạn.')
INSERT [dbo].[QUI_DINH] ([TenQuiDinh], [MoTa]) VALUES (NULL, N'3. Khách sạn chỉ chịu trách nhiệm về những tư trang, tiền bạc mà khách ký gởi tại khách sạn và có biên nhận. ')
INSERT [dbo].[QUI_DINH] ([TenQuiDinh], [MoTa]) VALUES (NULL, N'4. Không tự ý thay đổi phòng và thêm người.')
INSERT [dbo].[QUI_DINH] ([TenQuiDinh], [MoTa]) VALUES (NULL, N'5. Không đưa gái mại dâm vào khách sạn.')
INSERT [dbo].[QUI_DINH] ([TenQuiDinh], [MoTa]) VALUES (NULL, N'6. Cần báo cho tiếp tân biết khi tiếp khách tại phòng và phải kết thúc trước 23h.')
INSERT [dbo].[QUI_DINH] ([TenQuiDinh], [MoTa]) VALUES (NULL, N'7. Khi ra khỏi khách sạn, vui lòng gửi lại chìa khóa cho tiếp tân.')
INSERT [dbo].[QUI_DINH] ([TenQuiDinh], [MoTa]) VALUES (NULL, N'8. Không nấu nướng và ủi quần áo trong phòng.')
INSERT [dbo].[QUI_DINH] ([TenQuiDinh], [MoTa]) VALUES (NULL, N'9. Giờ trả phòng trước 12h.')
INSERT [dbo].[QUI_DINH] ([TenQuiDinh], [MoTa]) VALUES (N'Qui định K', N'ytgh')
GO
INSERT [dbo].[THIET_BI] ([MaThietBi], [TenThietBi], [MaLoaiPhong], [SoLuong]) VALUES (N'BDKML', N'Bộ điều khiển máy lạnh từ xa', N'DB', 1)
INSERT [dbo].[THIET_BI] ([MaThietBi], [TenThietBi], [MaLoaiPhong], [SoLuong]) VALUES (N'BDKTV', N'Bộ điều khiển Ti Vi', N'DB', 1)
INSERT [dbo].[THIET_BI] ([MaThietBi], [TenThietBi], [MaLoaiPhong], [SoLuong]) VALUES (N'BDKTVLI', N'Bộ điều khiển Ti Vi', N'LI', 1)
INSERT [dbo].[THIET_BI] ([MaThietBi], [TenThietBi], [MaLoaiPhong], [SoLuong]) VALUES (N'BDKTVLII', N'Bộ điều khiển Ti Vi', N'LII', 1)
INSERT [dbo].[THIET_BI] ([MaThietBi], [TenThietBi], [MaLoaiPhong], [SoLuong]) VALUES (N'BT', N'Bình thủy', N'DB', 1)
INSERT [dbo].[THIET_BI] ([MaThietBi], [TenThietBi], [MaLoaiPhong], [SoLuong]) VALUES (N'DEP', N'Dép', N'DB', 2)
INSERT [dbo].[THIET_BI] ([MaThietBi], [TenThietBi], [MaLoaiPhong], [SoLuong]) VALUES (N'DEPLI', N'Dép', N'LI', 2)
INSERT [dbo].[THIET_BI] ([MaThietBi], [TenThietBi], [MaLoaiPhong], [SoLuong]) VALUES (N'DEPLII', N'Dép', N'LII', 2)
INSERT [dbo].[THIET_BI] ([MaThietBi], [TenThietBi], [MaLoaiPhong], [SoLuong]) VALUES (N'DH', N'Đồng hồ', N'DB', 1)
INSERT [dbo].[THIET_BI] ([MaThietBi], [TenThietBi], [MaLoaiPhong], [SoLuong]) VALUES (N'DHLI', N'Đồng hồ', N'LI', 1)
INSERT [dbo].[THIET_BI] ([MaThietBi], [TenThietBi], [MaLoaiPhong], [SoLuong]) VALUES (N'DHLII', N'Đồng hồ', N'LII', 1)
INSERT [dbo].[THIET_BI] ([MaThietBi], [TenThietBi], [MaLoaiPhong], [SoLuong]) VALUES (N'DT', N'Điện thoại', N'DB', 1)
INSERT [dbo].[THIET_BI] ([MaThietBi], [TenThietBi], [MaLoaiPhong], [SoLuong]) VALUES (N'DTLI', N'Điện thoại', N'LI', 1)
INSERT [dbo].[THIET_BI] ([MaThietBi], [TenThietBi], [MaLoaiPhong], [SoLuong]) VALUES (N'DTLII', N'Điện thoại', N'LII', 1)
INSERT [dbo].[THIET_BI] ([MaThietBi], [TenThietBi], [MaLoaiPhong], [SoLuong]) VALUES (N'DUL', N'Dĩa úp ly', N'DB', 2)
INSERT [dbo].[THIET_BI] ([MaThietBi], [TenThietBi], [MaLoaiPhong], [SoLuong]) VALUES (N'DULLII', N'Dĩa úp ly', N'LII', 2)
INSERT [dbo].[THIET_BI] ([MaThietBi], [TenThietBi], [MaLoaiPhong], [SoLuong]) VALUES (N'GT', N'Gạt tàn', N'DB', 1)
INSERT [dbo].[THIET_BI] ([MaThietBi], [TenThietBi], [MaLoaiPhong], [SoLuong]) VALUES (N'GTLI', N'Gạt tàn', N'LI', 1)
INSERT [dbo].[THIET_BI] ([MaThietBi], [TenThietBi], [MaLoaiPhong], [SoLuong]) VALUES (N'GTLII', N'Gạt tàn', N'LII', 1)
INSERT [dbo].[THIET_BI] ([MaThietBi], [TenThietBi], [MaLoaiPhong], [SoLuong]) VALUES (N'KL', N'Khai ly', N'DB', 1)
INSERT [dbo].[THIET_BI] ([MaThietBi], [TenThietBi], [MaLoaiPhong], [SoLuong]) VALUES (N'KLYLI', N'Khai ly', N'LI', 1)
INSERT [dbo].[THIET_BI] ([MaThietBi], [TenThietBi], [MaLoaiPhong], [SoLuong]) VALUES (N'KLYLII', N'Khai ly', N'LII', 1)
INSERT [dbo].[THIET_BI] ([MaThietBi], [TenThietBi], [MaLoaiPhong], [SoLuong]) VALUES (N'KM', N'Khăn mặt', N'DB', 2)
INSERT [dbo].[THIET_BI] ([MaThietBi], [TenThietBi], [MaLoaiPhong], [SoLuong]) VALUES (N'KMLI', N'Khăn mặt', N'LI', 2)
INSERT [dbo].[THIET_BI] ([MaThietBi], [TenThietBi], [MaLoaiPhong], [SoLuong]) VALUES (N'KMLII', N'Khăn mặt', N'LII', 2)
INSERT [dbo].[THIET_BI] ([MaThietBi], [TenThietBi], [MaLoaiPhong], [SoLuong]) VALUES (N'KT', N'Khăn tắm', N'DB', 2)
INSERT [dbo].[THIET_BI] ([MaThietBi], [TenThietBi], [MaLoaiPhong], [SoLuong]) VALUES (N'KTLI', N'Khăn tắm', N'LI', 2)
INSERT [dbo].[THIET_BI] ([MaThietBi], [TenThietBi], [MaLoaiPhong], [SoLuong]) VALUES (N'KTLII', N'Khăn tắm', N'LII', 2)
INSERT [dbo].[THIET_BI] ([MaThietBi], [TenThietBi], [MaLoaiPhong], [SoLuong]) VALUES (N'LY', N'Ly', N'DB', 2)
INSERT [dbo].[THIET_BI] ([MaThietBi], [TenThietBi], [MaLoaiPhong], [SoLuong]) VALUES (N'LYLI', N'Ly', N'LI', 2)
INSERT [dbo].[THIET_BI] ([MaThietBi], [TenThietBi], [MaLoaiPhong], [SoLuong]) VALUES (N'LYLII', N'Ly', N'LII', 2)
INSERT [dbo].[THIET_BI] ([MaThietBi], [TenThietBi], [MaLoaiPhong], [SoLuong]) VALUES (N'MST', N'Máy sấy tóc', N'DB', 1)
GO
ALTER TABLE [dbo].[CHI_TIET_HOA_DON]  WITH CHECK ADD  CONSTRAINT [FK_CHI_TIET_HOA_DON_CHINH_SACH_TRA_PHONG] FOREIGN KEY([MaChinhSach])
REFERENCES [dbo].[CHINH_SACH_TRA_PHONG] ([MaChinhSach])
GO
ALTER TABLE [dbo].[CHI_TIET_HOA_DON] CHECK CONSTRAINT [FK_CHI_TIET_HOA_DON_CHINH_SACH_TRA_PHONG]
GO
ALTER TABLE [dbo].[CHI_TIET_HOA_DON]  WITH CHECK ADD  CONSTRAINT [FK_CHI_TIET_HOA_DON_DANH_SACH_SU_DUNG_DICH_VU1] FOREIGN KEY([MaSuDungDichVu])
REFERENCES [dbo].[DANH_SACH_SU_DUNG_DICH_VU] ([MaSuDungDvu])
GO
ALTER TABLE [dbo].[CHI_TIET_HOA_DON] CHECK CONSTRAINT [FK_CHI_TIET_HOA_DON_DANH_SACH_SU_DUNG_DICH_VU1]
GO
ALTER TABLE [dbo].[CHI_TIET_HOA_DON]  WITH CHECK ADD  CONSTRAINT [FK_CHI_TIET_HOA_DON_HOA_DON] FOREIGN KEY([MaHoaDon])
REFERENCES [dbo].[HOA_DON] ([MaHoaDon])
GO
ALTER TABLE [dbo].[CHI_TIET_HOA_DON] CHECK CONSTRAINT [FK_CHI_TIET_HOA_DON_HOA_DON]
GO
ALTER TABLE [dbo].[CHI_TIET_HOA_DON]  WITH CHECK ADD  CONSTRAINT [FK_CHI_TIET_HOA_DON_PHONG] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[PHONG] ([MaPhong])
GO
ALTER TABLE [dbo].[CHI_TIET_HOA_DON] CHECK CONSTRAINT [FK_CHI_TIET_HOA_DON_PHONG]
GO
ALTER TABLE [dbo].[CHI_TIET_PHIEU_THUE_PHONG]  WITH CHECK ADD  CONSTRAINT [FK_CHI_TIET_PHIEU_THUE_PHONG_PHIEU_THUE_PHONG] FOREIGN KEY([MaPhieuThue])
REFERENCES [dbo].[PHIEU_THUE_PHONG] ([MaPhieuThue])
GO
ALTER TABLE [dbo].[CHI_TIET_PHIEU_THUE_PHONG] CHECK CONSTRAINT [FK_CHI_TIET_PHIEU_THUE_PHONG_PHIEU_THUE_PHONG]
GO
ALTER TABLE [dbo].[CHI_TIET_PHIEU_THUE_PHONG]  WITH CHECK ADD  CONSTRAINT [FK_CHI_TIET_PHIEU_THUE_PHONG_PHONG] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[PHONG] ([MaPhong])
GO
ALTER TABLE [dbo].[CHI_TIET_PHIEU_THUE_PHONG] CHECK CONSTRAINT [FK_CHI_TIET_PHIEU_THUE_PHONG_PHONG]
GO
ALTER TABLE [dbo].[DANH_SACH_SU_DUNG_DICH_VU]  WITH CHECK ADD  CONSTRAINT [FK_DANH_SACH_SU_DUNG_DICH_VU_DICH_VU] FOREIGN KEY([MaDichVu])
REFERENCES [dbo].[DICH_VU] ([MaDichVu])
GO
ALTER TABLE [dbo].[DANH_SACH_SU_DUNG_DICH_VU] CHECK CONSTRAINT [FK_DANH_SACH_SU_DUNG_DICH_VU_DICH_VU]
GO
ALTER TABLE [dbo].[DANH_SACH_SU_DUNG_DICH_VU]  WITH CHECK ADD  CONSTRAINT [FK_DANH_SACH_SU_DUNG_DICH_VU_PHIEU_NHAN_PHONG] FOREIGN KEY([MaNhanPhong])
REFERENCES [dbo].[PHIEU_NHAN_PHONG] ([MaNhanPhong])
GO
ALTER TABLE [dbo].[DANH_SACH_SU_DUNG_DICH_VU] CHECK CONSTRAINT [FK_DANH_SACH_SU_DUNG_DICH_VU_PHIEU_NHAN_PHONG]
GO
ALTER TABLE [dbo].[DICH_VU]  WITH CHECK ADD  CONSTRAINT [FK_DICH_VU_DON_VI] FOREIGN KEY([MaDonVi])
REFERENCES [dbo].[DON_VI] ([MaDonVi])
GO
ALTER TABLE [dbo].[DICH_VU] CHECK CONSTRAINT [FK_DICH_VU_DON_VI]
GO
ALTER TABLE [dbo].[DICH_VU]  WITH CHECK ADD  CONSTRAINT [FK_DICH_VU_LOAI_DICH_VU] FOREIGN KEY([MaLoaiDichVu])
REFERENCES [dbo].[LOAI_DICH_VU] ([MaLoaiDichVu])
GO
ALTER TABLE [dbo].[DICH_VU] CHECK CONSTRAINT [FK_DICH_VU_LOAI_DICH_VU]
GO
ALTER TABLE [dbo].[HOA_DON]  WITH CHECK ADD  CONSTRAINT [FK_HOA_DON_KHACH_HANG] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KHACH_HANG] ([MaKhachHang])
GO
ALTER TABLE [dbo].[HOA_DON] CHECK CONSTRAINT [FK_HOA_DON_KHACH_HANG]
GO
ALTER TABLE [dbo].[HOA_DON]  WITH CHECK ADD  CONSTRAINT [FK_HOA_DON_KHACH_HANG1] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KHACH_HANG] ([MaKhachHang])
GO
ALTER TABLE [dbo].[HOA_DON] CHECK CONSTRAINT [FK_HOA_DON_KHACH_HANG1]
GO
ALTER TABLE [dbo].[HOA_DON]  WITH CHECK ADD  CONSTRAINT [FK_HOA_DON_PHIEU_NHAN_PHONG] FOREIGN KEY([MaNhanPhong])
REFERENCES [dbo].[PHIEU_NHAN_PHONG] ([MaNhanPhong])
GO
ALTER TABLE [dbo].[HOA_DON] CHECK CONSTRAINT [FK_HOA_DON_PHIEU_NHAN_PHONG]
GO
ALTER TABLE [dbo].[NGUOI_DUNG]  WITH CHECK ADD  CONSTRAINT [FK_NGUOI_DUNG_LOAI_NGUOI_DUNG] FOREIGN KEY([LoaiNguoiDung])
REFERENCES [dbo].[LOAI_NGUOI_DUNG] ([LoaiNguoiDung])
GO
ALTER TABLE [dbo].[NGUOI_DUNG] CHECK CONSTRAINT [FK_NGUOI_DUNG_LOAI_NGUOI_DUNG]
GO
ALTER TABLE [dbo].[PHIEU_NHAN_PHONG]  WITH CHECK ADD  CONSTRAINT [FK_PHIEU_NHAN_PHONG_KHACH_HANG] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KHACH_HANG] ([MaKhachHang])
GO
ALTER TABLE [dbo].[PHIEU_NHAN_PHONG] CHECK CONSTRAINT [FK_PHIEU_NHAN_PHONG_KHACH_HANG]
GO
ALTER TABLE [dbo].[PHIEU_NHAN_PHONG]  WITH CHECK ADD  CONSTRAINT [FK_PHIEU_NHAN_PHONG_KHACH_HANG1] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KHACH_HANG] ([MaKhachHang])
GO
ALTER TABLE [dbo].[PHIEU_NHAN_PHONG] CHECK CONSTRAINT [FK_PHIEU_NHAN_PHONG_KHACH_HANG1]
GO
ALTER TABLE [dbo].[PHIEU_NHAN_PHONG]  WITH CHECK ADD  CONSTRAINT [FK_PHIEU_NHAN_PHONG_PHIEU_THUE_PHONG] FOREIGN KEY([MaPhieuThue])
REFERENCES [dbo].[PHIEU_THUE_PHONG] ([MaPhieuThue])
GO
ALTER TABLE [dbo].[PHIEU_NHAN_PHONG] CHECK CONSTRAINT [FK_PHIEU_NHAN_PHONG_PHIEU_THUE_PHONG]
GO
ALTER TABLE [dbo].[PHIEU_THUE_PHONG]  WITH CHECK ADD  CONSTRAINT [FK_PHIEU_THUE_PHONG_KHACH_HANG] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KHACH_HANG] ([MaKhachHang])
GO
ALTER TABLE [dbo].[PHIEU_THUE_PHONG] CHECK CONSTRAINT [FK_PHIEU_THUE_PHONG_KHACH_HANG]
GO
ALTER TABLE [dbo].[PHONG]  WITH CHECK ADD  CONSTRAINT [FK_PHONG_LOAI_PHONG] FOREIGN KEY([MaLoaiPhong])
REFERENCES [dbo].[LOAI_PHONG] ([MaLoaiPhong])
GO
ALTER TABLE [dbo].[PHONG] CHECK CONSTRAINT [FK_PHONG_LOAI_PHONG]
GO
ALTER TABLE [dbo].[PHONG]  WITH CHECK ADD  CONSTRAINT [FK_PHONG_LOAI_TINH_TRANG] FOREIGN KEY([MaLoaiTinhTrangPhong])
REFERENCES [dbo].[LOAI_TINH_TRANG] ([MaLoaiTinhTrangPhong])
GO
ALTER TABLE [dbo].[PHONG] CHECK CONSTRAINT [FK_PHONG_LOAI_TINH_TRANG]
GO
ALTER TABLE [dbo].[THIET_BI]  WITH CHECK ADD  CONSTRAINT [FK_THIET_BI_LOAI_PHONG] FOREIGN KEY([MaLoaiPhong])
REFERENCES [dbo].[LOAI_PHONG] ([MaLoaiPhong])
GO
ALTER TABLE [dbo].[THIET_BI] CHECK CONSTRAINT [FK_THIET_BI_LOAI_PHONG]
GO
USE [master]
GO
ALTER DATABASE [QUANLYKHACHSANKIMANH] SET  READ_WRITE 
GO
