-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2023 at 02:03 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epiz_27842841_daging_online`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id_cart` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `banyak` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `slug`) VALUES
(1, 'Komponen Komputer', 'komponen-komputer'),
(2, 'Laptop', 'laptop'),
(3, 'Handphone', 'handphone');

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `id_driver` int(11) NOT NULL,
  `name_driver` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `jurusan` varchar(255) NOT NULL,
  `no_pegawai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`id_driver`, `name_driver`, `email`, `password`, `phone_number`, `jurusan`, `no_pegawai`) VALUES
(1, 'Sulton Rosadi', 'sulton@gmail.com', '$2y$10$GzyjiDN5Yh/ccf8Fpw20LeYMI7QFOJN6aEUd/2dl6hY9YkEvG73OW', '098887665455', 'JAKARTA', 11221133),
(2, 'Ahmad Faridh', 'farid@gmail.com', 'farid123', '999999888767', 'BOGOR', 223355),
(4, 'son', 'son123@gmail.com', '$2y$10$us1U1FxGJZIO3yKt1qXwOucr0T/vPDhRUDVdI1nUhtkv07HMbj/UG', '082197351222', 'JAKARTA', 6969);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id_product` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `unit` int(11) NOT NULL,
  `price` varchar(255) NOT NULL,
  `descriptions` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `stock` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id_product`, `product_name`, `unit`, `price`, `descriptions`, `category_id`, `stock`) VALUES
(13, 'ASrock B760M PRO RS D4', 1000, '1000000', '<p>Garansi Resmi 3 Tahun</p>\r\n\r\n<p>Fitur :<br />\r\n&bull; Supports 13th Gen &amp; 12th Gen Intel&reg; Core&trade; Processors (LGA1700)<br />\r\n&bull; 7+1+1 Power Phase, Dr.MOS for VCore+GT<br />\r\n&bull; Supports DDR4 5333MHz (OC)<br />\r\n&bull; 2 PCIe 4.0 x16, 1 PCIe 4.0 x1, 1 M.2 Key E for WiFi<br />\r\n&bull; Graphics Output Options: HDMI, DisplayPort<br />\r\n&bull; Realtek ALC897 7.1 CH HD Audio Codec, Nahimic Audio<br />\r\n&bull; 4 SATA3, 2 Hyper M.2 (PCIe Gen4x4)<br />\r\n&bull; 2 USB 3.2 Gen1 Type-C (1 Rear, 1 Front),<br />\r\n5 USB 3.2 Gen1 Type-A (3 Rear, 2 Front),<br />\r\n6 USB 2.0 (2 Rear, 4 Front)<br />\r\n&bull; Dragon 2.5G LAN<br />\r\n&bull; Supports ASRock Auto Driver Installer</p>\r\n', 1, '2'),
(14, 'ASUS PRIME B760M-A Wi-Fi D4', 1000, '1250000', '<p>Garansi Resmi 3 Tahun</p>\r\n\r\n<p>Intel&reg; LGA 1700 Socket: Ready for 13th and 12th Gen Intel&reg; processors<br />\r\nUltrafast Connectivity: PCIe 4.0, two M.2 slots, Realtek 2.5Gb Ethernet, Wi-Fi 6, rear USB 3.2 Gen 2, front USB 3.2 Gen 1 Type-C&reg;<br />\r\nComprehensive Cooling: VRM heatsinks, M.2 heatsink, PCH heatsink, hybrid fan headers and Fan Xpert 2+<br />\r\nASUS OptiMem II: Careful routing of traces and vias, plus ground layer optimizations to preserve signal integrity for improved memory overclocking<br />\r\nAura Sync RGB Lighting: Onboard Addressable Gen 2 headers and Aura RGB header for RGB LED strips, easily synced with Aura Sync-capable hardware</p>\r\n', 1, '0'),
(15, 'ASUS ROG MAXIMUS Z790 APEX', 1000, '1500000', '<p>Garansi Resmi 3 Tahun</p>\r\n\r\n<p>CPU</p>\r\n\r\n<ul>\r\n	<li>Intel&reg; Socket LGA1700 for 13th Gen Intel&reg; Core&trade; Processors &amp; 12th Gen Intel&reg; Core&trade;, Pentium&reg; Gold and Celeron&reg; Processors*</li>\r\n	<li>Supports Intel&reg; Turbo Boost Technology 2.0 and Intel&reg; Turbo Boost Max Technology 3.0**</li>\r\n</ul>\r\n\r\n<p>Memory</p>\r\n\r\n<ul>\r\n	<li>2 x DIMM, Max. 64GB, DDR5 8000+(OC)/7800(OC)/7600 (OC)/7467(OC)/7200(OC)/7000(OC)/6800(OC)/6600(OC)/6400(OC)/ 6200(OC)/ 6000(OC)/ 5800(OC)/ 5600/ 5400/ 5200/ 5000/ 4800 Non-ECC, Un-buffered Memory*</li>\r\n	<li>Dual Channel Memory Architecture</li>\r\n	<li>Supports Intel&reg; Extreme Memory Profile (XMP)</li>\r\n	<li>OptiMem III</li>\r\n</ul>\r\n\r\n<p>Expansion Slots</p>\r\n\r\n<ul>\r\n	<li>Intel&reg; 13th &amp; 12th Gen Processors*</li>\r\n	<li>2 x PCIe 5.0 x16 slots (supports x16 or x8/x8 modes)**</li>\r\n	<li>Intel&reg; Z790 Chipset</li>\r\n	<li>1 x PCIe 4.0x4 slot</li>\r\n	<li>1 x PCIe 4.0x1 slot</li>\r\n</ul>\r\n\r\n<p>Storage<br />\r\nTotal supports 5 x M.2 slots and 6 x SATA 6Gb/s ports*<br />\r\nIntel&reg; 13th &amp; 12th Gen Processors</p>\r\n\r\n<p>Back Panel I/O Ports</p>\r\n\r\n<ul>\r\n	<li>1 x USB 3.2 Gen 2x2 port (1 x USB Type-C&reg;)</li>\r\n	<li>5 x USB 3.2 Gen 2 ports (5 x Type-A)</li>\r\n	<li>4 x USB 3.2 Gen 1 ports (4 x Type-A)</li>\r\n	<li>1 x Wi-Fi Module</li>\r\n	<li>1 x Intel&reg; 2.5Gb Ethernet port</li>\r\n	<li>5 x Gold-plated audio jacks*</li>\r\n	<li>1 x Optical S/PDIF out port</li>\r\n	<li>1 x BIOS FlashBack&trade; button</li>\r\n	<li>1 x Clear CMOS button</li>\r\n	<li>1 x PS/2 Keyboard (purple) port</li>\r\n	<li>1 x PS/2 Mouse (green) port</li>\r\n</ul>\r\n\r\n<p>Form Factor</p>\r\n\r\n<ul>\r\n	<li>ATX Form Factor</li>\r\n	<li>12 inch x 9.6 inch ( 30.5 cm x 24.4 cm )</li>\r\n</ul>\r\n', 1, '6'),
(16, 'ASUS ROG STRIX Z790-E GAMING WIFI', 1000, '1750000', '<p>Garansi Resmi 3 Tahun</p>\r\n\r\n<p>CPU<br />\r\n- Intel Socket LGA1700 for 13th Gen Intel Core Processors &amp; 12th Gen Intel Core, Pentium Gold and Celeron Processors<br />\r\n- Supports Intel Turbo Boost Technology 2.0 and Intel Turbo Boost Max Technology 3.0</p>\r\n\r\n<p>Chipset<br />\r\n- Intel Z790 Chipset</p>\r\n\r\n<p>Memory<br />\r\n- 4 x DIMM, Max. 128GB, DDR5 7800+(OC)/7600(OC)/7400(OC)/7200(OC)/7000(OC)/6800(OC)/6600(OC)/6400(OC)/ 6200(OC)/ 6000(OC)/ 5800(OC)/ 5600/ 5400/ 5200/ 5000/ 4800 Non-ECC, Un-buffered Memory*<br />\r\n- Dual Channel Memory Architecture<br />\r\n- Supports Intel Extreme Memory Profile (XMP)<br />\r\n- OptiMem II</p>\r\n\r\n<p>Graphics<br />\r\n- 1 x DisplayPort<br />\r\n- 1 x HDMI Port</p>\r\n\r\n<p>Expansion Slots<br />\r\n- Intel 13th &amp; 12th Gen Processors<br />\r\n1 x PCIe 5.0 x16 Slot<br />\r\n- Intel Z790 Chipset<br />\r\n2 x PCIe 4.0 x16 slots (support x4 mode)<br />\r\n1 x PCIe 3.0 x1 Slot</p>\r\n\r\n<p>Storage<br />\r\n- Total supports 5 x M.2 slots and 4 x SATA 6Gb/s ports</p>\r\n\r\n<p>Ethernet<br />\r\n- 1 x Intel 2.5Gb Ethernet<br />\r\n- ASUS LANGuard</p>\r\n\r\n<p>Wireless &amp; Bluetooth<br />\r\n- Wi-Fi 6E<br />\r\n- Bluetooth v5.3</p>\r\n\r\n<p>USB<br />\r\n- Rear USB (Total 12 ports)<br />\r\n- Front USB (Total 9 ports)</p>\r\n\r\n<p>Audio<br />\r\n- ROG SupremeFX 7.1 Surround Sound High Definition Audio CODEC ALC4080</p>\r\n\r\n<p>Form Factor<br />\r\n- ATX (30.5 cm x 24.4 cm)</p>\r\n', 1, '4'),
(17, 'Gigabyte Z790 Aero G', 1000, '1600000', '<p>GARANSI RESMI 3 TAHUN !!</p>\r\n\r\n<p>LGA1700 socket: Support for the 13th and 12th Generation Intel&reg; Core&trade;, Pentium&reg; Gold and Celeron&reg; Processors*<br />\r\nL3 cache varies with CPU<br />\r\nIntel&reg; Z790 Express Chipset<br />\r\nSupport for DDR5 7600(O.C.) /7400(O.C.) /7200(O.C.) /7000(O.C.) /6800(O.C.) /6600(O.C.) / 6400(O.C.) / 6200(O.C.) / 6000(O.C.) / 5800(O.C.) / 5600(O.C.) / 5400(O.C.) / 5200(O.C.) / 4800 / 4000 memory modules<br />\r\n4 x DDR5 DIMM sockets supporting up to 128 GB (32 GB single DIMM capacity) of system memory<br />\r\nDual channel memory architecture<br />\r\nSupport for ECC Un-buffered DIMM 1Rx8/2Rx8 memory modules (operate in non-ECC mode)<br />\r\nSupport for non-ECC Un-buffered DIMM 1Rx8/2Rx8/1Rx16 memory modules<br />\r\nSupport for Extreme Memory Profile (XMP) memory modules<br />\r\nIntegrated Graphics Processor-Intel&reg; HD Graphics support:<br />\r\n1 x USB Type-C&reg; port, supporting USB 3.2 Gen 2 and DisplayPort video outputs and a maximum resolution of 4096x2304@60 Hz<br />\r\n* Support for drawing tablets and 20V@3A of power delivery.<br />\r\n* Support for DisplayPort 1.4 version and HDR.<br />\r\n1 x HDMI port, supporting a maximum resolution of 4096x2160@60 Hz<br />\r\n* Support for HDMI 2.0 version and HDCP 2.3.<br />\r\nIntel&reg; 2.5GbE LAN chip (2.5 Gbps/1 Gbps/100 Mbps)<br />\r\nIntel&reg; Wi-Fi 6E AX211<br />\r\nWIFI a, b, g, n, ac, ax, supporting 2.4/5/6 GHz carrier frequency bands<br />\r\nBLUETOOTH 5.3<br />\r\nSupport for 11ax 160MHz wireless standard and up to 2.4 Gbps data rate<br />\r\n1 x 256 Mbit flash<br />\r\nUse of licensed AMI UEFI BIOS<br />\r\nPnP 1.0a, DMI 2.7, WfM 2.0, SM BIOS 2.7, ACPI 5.0<br />\r\nSupport for Windows 11 64-bit<br />\r\nSupport for Windows 10 64-bit</p>\r\n', 1, '5'),
(18, 'MSI PRO B760M-A WIFI DDR4', 1000, '1300000', '<p>Garansi Resmi 3 Tahun</p>\r\n\r\n<p>CHIPSET<br />\r\nINTEL B760</p>\r\n\r\n<p>CPU SUPPORT<br />\r\nSupports 12th/13th Gen Intel&reg; Core&trade; Processors, Pentium&reg; Gold and Celeron&reg; Processors<br />\r\nLGA 1700</p>\r\n\r\n<p>MEMORY<br />\r\n4x DDR4, Maximum Memory Capacity 128GB<br />\r\nMemory Support 5333(OC)/ 5200(OC)/ 5066(OC)/ 5000(OC)/ 4800(OC)/ 4600(OC)/ 4400(OC)/ 4266(OC)/ 4200(OC)/ 4000(OC)/ 3800(OC)/ 3733(OC)/ 3600(OC)/ 3466(OC)/ 3400(OC)/ 3333(OC)/ 3200(JEDEC)/ 2933(JEDEC)/ 2666(JEDEC)/ 2400(JEDEC)/ 2133(JEDEC)<br />\r\nMax. overclocking frequency:<br />\r\n&bull; 1DPC 1R Max speed up to 5333+ MHz<br />\r\n&bull; 1DPC 2R Max speed up to 4800+ MHz<br />\r\n&bull; 2DPC 1R Max speed up to 4400+ MHz<br />\r\n&bull; 2DPC 2R Max speed up to 4000+ MHz</p>\r\n\r\n<p>Supports Dual-Channel mode<br />\r\nSupports non-ECC, un-buffered memory<br />\r\nSupports Intel&reg; Extreme Memory Profile (XMP)</p>\r\n\r\n<p>ONBOARD GRAPHICS<br />\r\n2x HDMI&trade;<br />\r\n2x DisplayPort<br />\r\nSupport HDMI&trade; 2.1, maximum resolution of 4K 60Hz*<br />\r\nSupport DP 1.4, maximum resolution of 4K 60Hz*<br />\r\n*Available only on processors featuring integrated graphics. Graphics specifications may vary depending on the CPU installed.</p>\r\n\r\n<p>EXPANSION SLOT<br />\r\n2x PCI-E x16 slot<br />\r\n1x PCI-E x1 slot<br />\r\nPCI_E1 PCIe 4.0 supports up to x16 (From CPU)<br />\r\nPCI_E2 PCIe 3.0 supports up to x1 (From Chipset)<br />\r\nPCI_E3 PCIe 4.0 supports up to x4 (From Chipset)</p>\r\n\r\n<p>STORAGE<br />\r\n2x M.2 slot<br />\r\nM.2_1 (From CPU) supports up to PCIe 4.0 x4 , supports 2280/2260/2242 devices<br />\r\nM.2_2 (From Chipset) supports up to PCIe 4.0 x4 / SATA mode, supports 2280/2260/2242 devices<br />\r\n4x SATA 6G port<br />\r\n* SATA8 will be unavailable when installing M.2 SATA SSD in the M2_2 slot.</p>\r\n\r\n<p>RAID<br />\r\nSupports RAID 0, RAID 1, RAID 5 and RAID 10 for SATA storage devices</p>\r\n\r\n<p>USB<br />\r\n2x USB 2.0 (Rear)<br />\r\n4x USB 2.0 (Front)<br />\r\n2x USB 3.2 Gen1 Type A (Rear)<br />\r\n4x USB 3.2 Gen1 Type A (Front)<br />\r\n1x USB 3.2 Gen1 Type C (Front)<br />\r\n2x USB 3.2 Gen2 Type A (Rear)</p>\r\n\r\n<p>LAN<br />\r\nRealtek&reg; RTL8125BG 2.5G LAN</p>\r\n\r\n<p>AUDIO<br />\r\nRealtek&reg; ALC897 Codec<br />\r\n7.1-Channel High Definition Audio</p>\r\n', 1, '9'),
(19, 'ASUS ROG STRIX GeForce RTX 4070 TI', 1000, '2299000', '<p>GARANSI RESMI 3 TAHUN BY ASUS INDONESIA</p>\r\n\r\n<ul>\r\n	<li>Powered by NVIDIA DLSS3, ultra-efficient Ada Lovelace arch, and full ray tracing.</li>\r\n	<li>4th Generation Tensor Cores: Up to 4x performance with DLSS 3 vs. brute-force rendering</li>\r\n	<li>3rd Generation RT Cores: Up to 2X ray tracing performance</li>\r\n	<li>OC mode: 2790 MHz (OC mode)/ 2760 MHz (Default mode)</li>\r\n	<li>Axial-tech fans scaled up for 31% more airflow</li>\r\n	<li>3.15-slot design: massive fin array optimized for airflow from the three Axial-tech fans</li>\r\n	<li>Diecast shroud, frame, and backplate add rigidity and are vented to further maximize airflow and heat dissipation</li>\r\n	<li>Digital power control with high-current power stages and 15K capacitors to fuel maximum performance</li>\r\n	<li>Auto-Extreme precision automated manufacturing for higher reliability</li>\r\n	<li>GPU Tweak III software provides intuitive performance tweaking, thermal controls, and system monitoring</li>\r\n</ul>\r\n\r\n<p>Recommended PSU<br />\r\n750W</p>\r\n\r\n<p>Power Connectors<br />\r\n1 x 16-pin</p>\r\n', 1, '3'),
(20, 'GIGABYTE GeForce RTX 4080 EAGLE', 1000, '4080000', '<p>Garansi Resmi 3 tahun</p>\r\n\r\n<p>Chipset GeForce RTX&trade; 4080<br />\r\nCore Clock 2520 MHz (Reference Card: 2505 MHz)<br />\r\nCUDA&reg; Cores 9728<br />\r\nMemory Clock 22.4 Gbps<br />\r\nMemory Size 16 GB<br />\r\nMemory Type GDDR6X<br />\r\nMemory Bus 256 bit<br />\r\nCard Bus PCI-E 4.0 x 16<br />\r\nDigital max resolution 7680x4320<br />\r\nMulti-view 4<br />\r\nCard size L=342 W=150 H=70 mm<br />\r\nPCB Form ATX<br />\r\nDirectX 12 Ultimate<br />\r\nOpenGL 4.6<br />\r\nPower requirement 850W<br />\r\nPower Connectors 16 Pin*1<br />\r\nOutput DisplayPort 1.4a *3 &amp; HDMI 2.1 *1</p>\r\n', 1, '6'),
(21, 'MSI Geforce RTX 4090 Gaming X Trio 24GB', 1000, '5999000', '<p>MODEL NAME<br />\r\n- GeForce RTX&reg; 4090 GAMING X TRIO 24G</p>\r\n\r\n<p>GRAPHICS PROCESSING UNIT<br />\r\n- NVIDIA&reg; GeForce RTX&reg; 4090</p>\r\n\r\n<p>INTERFACE<br />\r\n- PCI Express&reg; Gen 4</p>\r\n\r\n<p>CORE CLOCKS<br />\r\n- Extreme Performance: 2610 MHz (MSI Center)<br />\r\n- Boost: 2595 MHz (GAMING &amp; SILENT Mode)</p>\r\n\r\n<p>CUDA&reg; CORES<br />\r\n- 16384 Units</p>\r\n\r\n<p>MEMORY SPEED<br />\r\n- 21 Gbps</p>\r\n\r\n<p>MEMORY<br />\r\n- 24GB GDDR6X</p>\r\n\r\n<p>MEMORY BUS<br />\r\n- 384-bit</p>\r\n\r\n<p>OUTPUT<br />\r\n- DisplayPort x 3 (v1.4a)<br />\r\n- HDMI&trade; x 1 (Supports 4K@120Hz HDR, 8K@60Hz HDR, and Variable Refresh Rate as specified in HDMI 2.1a)</p>\r\n\r\n<p>HDCP SUPPORT<br />\r\n- Y</p>\r\n\r\n<p>POWER CONSUMPTION<br />\r\n- 450W</p>\r\n\r\n<p>POWER CONNECTORS<br />\r\n- 16-pin x 1</p>\r\n\r\n<p>RECOMMENDED PSU<br />\r\n- 850 W</p>\r\n\r\n<p>CARD DIMENSION (MM)<br />\r\n- 337 x 140 x 77 mm</p>\r\n\r\n<p>WEIGHT (CARD / PACKAGE)<br />\r\n- 2170 g / 3093 g</p>\r\n\r\n<p>DIRECTX VERSION SUPPORT<br />\r\n- 12 Ultimate</p>\r\n\r\n<p>OPENGL VERSION SUPPORT<br />\r\n- 4.6</p>\r\n\r\n<p>MAXIMUM DISPLAYS<br />\r\n- 4</p>\r\n\r\n<p>G-SYNC&reg; TECHNOLOGY<br />\r\n- Y</p>\r\n\r\n<p>DIGITAL MAXIMUM RESOLUTION<br />\r\n- 7680x4320</p>\r\n', 1, '7'),
(22, 'ROG Flow X16', 1000, '18999000', '<p>NVIDIA&reg; GeForce RTX&trade; 4070 Laptop GPU</p>\r\n\r\n<p>Windows 11 Pro</p>\r\n\r\n<p>13th Gen Intel&reg; Core&trade; i9-13900H</p>\r\n\r\n<p>ROG Nebula HDR Display</p>\r\n\r\n<p>16 inch, QHD+ 16:10 (2560 x 1600, WQXGA), Refresh Rate:240Hz</p>\r\n\r\n<p>2TB PCIe&reg; 4.0 NVMe&trade; M.2 SSD</p>\r\n', 2, '3'),
(23, 'ROG Flow Z13', 1000, '16499000', '<p>NVIDIA&reg; GeForce RTX&trade; 2050</p>\r\n\r\n<p>Windows 11 Pro</p>\r\n\r\n<p>13th Gen Intel&reg; Core&trade; i9-13900H</p>\r\n\r\n<p>ROG Nebula Display</p>\r\n\r\n<p>13.4 inch, QHD+ 16:10 (2560 x 1600, WQXGA), Refresh Rate:165Hz</p>\r\n\r\n<p>512GB PCIe&reg; 4.0 NVMe&trade; M.2 SSD (2230)</p>\r\n', 2, '1'),
(24, 'ROG Mothership', 1000, '17299000', '<p>GeForce RTX&trade; 2080</p>\r\n\r\n<p>Windows 10 Home</p>\r\n\r\n<p>Free Upgrade to Windows 11&sup1;</p>\r\n\r\n<p>9th Gen Intel&reg; Core&trade; i9-9980HK</p>\r\n\r\n<p>17.3 inch, 4K UHD (3840 x 2160) 16:9,</p>\r\n\r\n<p>512GB PCIe&reg; 3.0 NVMe&trade; M.2 Performance SSD x 2512GB PCIe&reg; 3.0 NVMe&trade; M.2 Performance SSD</p>\r\n', 2, '4'),
(25, 'ROG Strix SCAR 16', 1000, '14999000', '<p>NVIDIA&reg; GeForce RTX&trade; 4090 Laptop GPU</p>\r\n\r\n<p>Windows 11 Pro</p>\r\n\r\n<p>13th Gen Intel&reg; Core&trade; i9-13980HX</p>\r\n\r\n<p>ROG Nebula HDR Display</p>\r\n\r\n<p>16 inch, QHD+ 16:10 (2560 x 1600, WQXGA), Refresh Rate:240Hz</p>\r\n\r\n<p>2TB + 2TB PCIe&reg; 4.0 NVMe&trade; M.2 Performance SSD (RAID 0)</p>\r\n', 2, '6'),
(26, 'ROG Strix SCAR 17 SE', 1000, '13599000', '<p>NVIDIA&reg; GeForce RTX&trade; 3080 Ti Laptop GPU</p>\r\n\r\n<p>Windows 11 Pro</p>\r\n\r\n<p>12th Gen Intel&reg; Core&trade; i9-12950HX</p>\r\n\r\n<p>17.3 inch, WQHD (2560 x 1440) 16:9, Refresh Rate:240Hz</p>\r\n\r\n<p>2TB + 2TB PCIe&reg; 4.0 NVMe&trade; M.2 Performance SSD (RAID 0)</p>\r\n', 2, '4'),
(27, 'ROG Strix SCAR 18', 1000, '14199000', '<p>NVIDIA&reg; GeForce RTX&trade; 4080 Laptop GPU</p>\r\n\r\n<p>Windows 11 Pro</p>\r\n\r\n<p>13th Gen Intel&reg; Core&trade; i9-13980HX</p>\r\n\r\n<p>ROG Nebula Display</p>\r\n\r\n<p>18 inch, QHD+ 16:10 (2560 x 1600, WQXGA), Refresh Rate:240Hz</p>\r\n\r\n<p>2TB + 2TB PCIe&reg; 4.0 NVMe&trade; M.2 Performance SSD (RAID 0)</p>\r\n', 2, '4'),
(28, 'ROG Zephyrus G14', 1000, '12499000', '<p>NVIDIA&reg; GeForce RTX&trade; 4060 Laptop GPU</p>\r\n\r\n<p>Windows 11 Pro</p>\r\n\r\n<p>AMD Ryzen&trade; 9 7940HS</p>\r\n\r\n<p>ROG Nebula Display</p>\r\n\r\n<p>14 inch, QHD+ 16:10 (2560 x 1600, WQXGA), Refresh Rate:165Hz</p>\r\n\r\n<p>1TB PCIe&reg; 4.0 NVMe&trade; M.2 SSD</p>\r\n', 2, '2'),
(29, 'ROG Phone 6', 1000, '12500000', '<ul>\r\n	<li>Qualcomm Snapdragon 8+ Gen 1</li>\r\n	<li>LPDDR5 12GB</li>\r\n	<li>UFS3.1 256GB</li>\r\n	<li>Baterai 6000mA</li>\r\n</ul>\r\n', 3, '12'),
(30, 'ROG Phone 5', 1000, '10999000', '<ul>\r\n	<li>Qualcomm Snapdragon 888</li>\r\n	<li>LPDDR5 12GB</li>\r\n	<li>UFS3.1 256GB</li>\r\n	<li>Baterai 6000mAh<br />\r\n	&nbsp;</li>\r\n</ul>\r\n', 3, '5'),
(31, 'ROG Phone 5 Ultimate', 1000, '11425000', '<ul>\r\n	<li>Qualcomm Snapdragon 888</li>\r\n	<li>LPDDR5 18GB</li>\r\n	<li>UFS3.1 512GB</li>\r\n	<li>Baterai 6000mAh<br />\r\n	&nbsp;</li>\r\n</ul>\r\n', 3, '8'),
(32, 'ROG Phone 5s Pro', 1000, '11800000', '<ul>\r\n	<li>Qualcomm Snapdragon 888 Plus</li>\r\n	<li>LPDDR5 18GB</li>\r\n	<li>UFS3.1 512GB</li>\r\n	<li>Baterai 6000mAh<br />\r\n	&nbsp;</li>\r\n</ul>\r\n', 3, '5'),
(33, 'ROG Phone 5s', 1000, '11500000', '<p>Qualcomm Snapdragon 888 Plus<br />\r\nLPDDR5 8GB<br />\r\nUFS3.1 128GB<br />\r\nBaterai 6000mAh</p>\r\n', 3, '4'),
(34, 'ROG Phone 6 BATMAN Edition', 1000, '15000000', '<ul>\r\n	<li>Qualcomm Snapdragon 8+ Gen 1</li>\r\n	<li>LPDDR5 12GB</li>\r\n	<li>UFS3.1 256GB</li>\r\n	<li>Baterai 6000mAh</li>\r\n</ul>\r\n', 3, '3'),
(35, 'ROG Phone 6 Pro', 1000, '13499000', '<ul>\r\n	<li>Qualcomm Snapdragon 8+ Gen 1</li>\r\n	<li>LPDDR5 18GB</li>\r\n	<li>UFS3.1 512GB</li>\r\n	<li>Baterai 6000mAh<br />\r\n	&nbsp;</li>\r\n</ul>\r\n', 3, '4'),
(36, 'ASUS ROG LOKI SFX-L 850Watt', 1000, '19999999', '<p>Intel Form Factor<br />\r\n- SFX-L</p>\r\n\r\n<p>ATX 3.0<br />\r\n- Yes</p>\r\n\r\n<p>Dimensions<br />\r\n- 125 x 125 x 63.5 mm</p>\r\n\r\n<p>Efficiency<br />\r\n- 80Plus Platinum</p>\r\n\r\n<p>Protection Features<br />\r\n- OPP/OVP/UVP/SCP/OCP/OTP</p>\r\n\r\n<p>Hazardous Materials<br />\r\n- ROHS</p>\r\n\r\n<p>AC Input Range<br />\r\n- 100-240Vac</p>\r\n\r\n<p>DC Output Voltage<br />\r\n- +3.3V +5V +12V -12V +5Vsb</p>\r\n\r\n<p>Maximum Load<br />\r\n- 20A 20A 70.8A 0.8A 2.5A</p>\r\n\r\n<p>Combined Load<br />\r\n- 110W 110W 850W 9.6W 12.5W</p>\r\n\r\n<p>Total Output<br />\r\n- 850W</p>\r\n\r\n<p>Connectors<br />\r\n- MB 24/20-pin x 1<br />\r\n- CPU 4+4-pin x 2<br />\r\n- PCI-E 16-pin x 1<br />\r\n- PCI-E 8-pin x 3<br />\r\n- SATA x 6<br />\r\n- PERIPHERAL x 4</p>\r\n\r\n<p>Package Contents<br />\r\n- Power Cord x 1<br />\r\n- Motherboard Power Cable x 1 (450mm)<br />\r\n- CPU Cable x 2 (550mm)<br />\r\n- PCI-E Gen 5 16-pin Cable x 1 (450mm)<br />\r\n- PCI-E 1-to-1 Cable x 1 (450mm)<br />\r\n- PCI-E 1-to-2 Cable x 1 (450mm)<br />\r\n- SATA 1-to-3 Cable x 2 (300+200+100mm)<br />\r\n- Peripheral 1-to-4 Cable x 1 (300+100+100+100mm)<br />\r\n- Addressable RGB Cable x 1 (800mm)<br />\r\n- User Manual x 1<br />\r\n- ATX to SFX adapter bracket x 1</p>\r\n\r\n<p>Weight<br />\r\n- 1.815kg (single PSU)</p>\r\n\r\n<p>AURA SYNC<br />\r\n- ARGB</p>\r\n\r\n<p>0dB Fan Button<br />\r\n- Yes<br />\r\n&nbsp;</p>\r\n', 1, '5'),
(37, 'Enlight 750Watt Black Silver', 1000, '15000000', '<p>Garansi Resmi 5 tahun</p>\r\n', 1, '4'),
(38, 'Thermaltake ToughPower PF1 ARGB 1200Watt', 1000, '17500000', '<p>hermaltake ToughPower PF1 ARGB 1200W<br />\r\nThermaltake ToughPower PF1 ARGB 1200W PSU/ Power Supply 1200 Watt 80+</p>\r\n\r\n<p>GARANSI RESMI 10 TAHUN</p>\r\n\r\n<p>P/N PS-TPD-1200F3FAPx-1<br />\r\nwatts 1200W<br />\r\nRGB Fan Yes<br />\r\nModel TPD-1200AH3FCP-A<br />\r\nMax. Output Capacity 1200W<br />\r\nPeak Output Capacity 1440W<br />\r\nColor Black<br />\r\nDimension ( W / H / D ) 150mm(W) x 86mm(H) x 180mm(D)<br />\r\nPFC (Power Factor Correction) Active PFC<br />\r\nPower Good Signal 100-500 msec<br />\r\nHold Up Time &gt; 16m sec at 100% of full load<br />\r\nInput Current 14A<br />\r\nInput Frequency Range 50Hz - 60Hz<br />\r\nInput Voltage 100V &ndash; 240V~<br />\r\nOperating Temperature 0&deg;C to + 50&deg;C</p>\r\n', 1, '6');

-- --------------------------------------------------------

--
-- Table structure for table `products_galleries`
--

CREATE TABLE `products_galleries` (
  `id_gallery` int(11) NOT NULL,
  `photos` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products_galleries`
--

INSERT INTO `products_galleries` (`id_gallery`, `photos`, `product_id`) VALUES
(1, '600104eb03a38.jpg', 1),
(2, '600104ce9b69e.jpg', 2),
(3, '600104f8a0997.jpg', 1),
(4, '60026547d7f93.jpg', 3),
(5, '6002656eba3d5.jpg', 4),
(6, '600ebe151ca22.png', 2),
(13, '600ebe570ffd0.jpg', 3),
(16, '600ebdfacc340.png', 1),
(18, '600ebe36ba537.png', 2),
(19, '600ebe8184987.jpg', 3),
(20, '600ebece57d8c.jpg', 4),
(21, '600ebee07f7b5.jpg', 4),
(33, '63bee053df5e3.jpg', 13),
(34, '63beb9c43cc9d.jpg', 14),
(35, '63bedb580ebfd.jpg', 15),
(36, '63bedfdb32f4b.jpg', 13),
(37, '63beed8e3f579.jpg', 14),
(38, '63beedb3278ea.jpg', 15),
(39, '63beedd1b5d72.jpeg', 16),
(41, '63beedf99f0e7.jpg', 17),
(42, '63beee19046c3.jpg', 17),
(43, '63beee2a3479e.jpg', 18),
(44, '63beee37a4506.jpg', 18),
(45, '63beee657f6ac.jpg', 19),
(46, '63beee70cab63.jpg', 19),
(47, '63beee836b0d0.jpg', 20),
(48, '63beee9441ba8.jpg', 20),
(49, '63beeeaec4b47.jpg', 21),
(50, '63beeebbdbcc2.jpg', 21),
(51, '63beeed5d8ba2.png', 22),
(52, '63beeedfd7182.png', 22),
(53, '63beeeeecb776.png', 23),
(54, '63beeefa07873.png', 23),
(55, '63beef15199b4.png', 25),
(56, '63beef22cf59e.png', 25),
(57, '63beef31aba6c.png', 26),
(58, '63beef3c99213.png', 26),
(59, '63beef4712764.png', 27),
(60, '63beef5c4aae9.png', 27),
(61, '63beef67459f8.png', 28),
(62, '63beef7649f42.png', 28),
(63, '63bef0b9503ff.jpg', 16),
(64, '63bfea1ea2651.png', 29),
(65, '63bfec17a631f.png', 30),
(66, '63bfec2aab0b5.png', 30),
(67, '63bfec63e17d7.png', 31),
(68, '63bfec767fb7b.png', 31),
(69, '63bfec9f9ba80.png', 33),
(70, '63bfecb15a6b5.png', 33),
(71, '63bfecd01a936.png', 32),
(72, '63bfece68f129.png', 32),
(73, '63bfed10098f4.png', 34),
(74, '63bfed24868e0.png', 34),
(75, '63bfed351ffb7.png', 35),
(76, '63bfed7cecfb4.png', 35),
(77, '63bfef3373436.jpg', 36),
(78, '63bfef491d2cb.jpg', 36),
(79, '63bfef60b938c.jpg', 37),
(80, '63bfef6e61e37.jpg', 37),
(81, '63bfef7c6e345.jpg', 38),
(82, '63bfef8b1f4cf.jpg', 38),
(83, '63bff1ad89f2d.jpg', 24),
(84, '63bff1c191451.jpg', 24);

-- --------------------------------------------------------

--
-- Table structure for table `rekening_numbers`
--

CREATE TABLE `rekening_numbers` (
  `id_rekening` int(11) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `rekening_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rekening_numbers`
--

INSERT INTO `rekening_numbers` (`id_rekening`, `bank_name`, `number`, `rekening_name`) VALUES
(1, 'BCA', '0989878998787', 'Sayudi Cenah'),
(2, 'Mandiri', '076543212123', 'Mimin'),
(3, 'Syariah', '09999977656', 'Subardjoe');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id_transaction` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `city` varchar(255) NOT NULL,
  `rekening_id` int(11) NOT NULL,
  `transaction_status` varchar(255) NOT NULL,
  `weight_total` int(11) NOT NULL,
  `delivered` int(11) NOT NULL,
  `photo_transaction` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `receiver` varchar(255) NOT NULL,
  `time_arrived` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id_transaction`, `user_id`, `total_price`, `city`, `rekening_id`, `transaction_status`, `weight_total`, `delivered`, `photo_transaction`, `code`, `receiver`, `time_arrived`, `created_at`) VALUES
(7, 12, 40000, 'JAKARTA', 1, 'TERKIRIM', 1000, 0, '63beb93b00b37.png', 'EZM-20641', 'anto', '2023-01-11 14:06:13', '2023-01-11 13:25:34'),
(8, 12, 4080000, 'JAKARTA', 1, 'BELUM KONFIRMASI', 1000, 0, '', 'EZM-18281', '', NULL, '2023-01-11 18:41:16');

-- --------------------------------------------------------

--
-- Table structure for table `transactions_details`
--

CREATE TABLE `transactions_details` (
  `id_transaction_detail` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `banyak` int(11) NOT NULL,
  `code_product` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactions_details`
--

INSERT INTO `transactions_details` (`id_transaction_detail`, `transaction_id`, `product_id`, `price`, `banyak`, `code_product`) VALUES
(1, 1, 1, 50000, 2, 'PRD-12943'),
(2, 1, 2, 80000, 2, 'PRD-12943'),
(3, 2, 1, 50000, 2, 'PRD-13113'),
(4, 2, 1, 50000, 2, 'PRD-13113'),
(5, 3, 2, 80000, 2, 'PRD-40981'),
(6, 3, 6, 400000, 1, 'PRD-40981'),
(7, 4, 3, 100000, 1, 'PRD-60879'),
(8, 5, 5, 20000, 2, 'PRD-71011'),
(9, 5, 10, 75000, 2, 'PRD-71011'),
(10, 5, 12, 14000, 2, 'PRD-71011'),
(11, 6, 4, 36000, 5, 'PRD-94186'),
(12, 6, 1, 30000, 1, 'PRD-94186'),
(13, 6, 2, 40000, 4, 'PRD-94186'),
(14, 7, 2, 40000, 1, 'PRD-14886'),
(15, 8, 20, 4080000, 1, 'PRD-80579');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` text DEFAULT NULL,
  `phone_number` varchar(255) NOT NULL,
  `postal_code` varchar(191) NOT NULL,
  `roles` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `name`, `email`, `password`, `address`, `phone_number`, `postal_code`, `roles`) VALUES
(1, 'Hafizh Maulana Y', 'hafizhmy26@gmail.com', 'bulanpuasa96', '<p>Jln Gang Hamzah No 22</p>\r\n', '098987898765', '11111111', 'ADMIN'),
(3, 'AMANDA PUTRI', 'manda@gmail.com', '$2y$10$2jrwSDZqHQgKlTUxPGnRau8ZD8Jgj9lNE4tBvRDsuNKNzVnEsbtxG', '<p>Jln Kampung Gunung No 22</p>\r\n', '099998887776', '224455', 'USER'),
(6, 'Vita Mahandari', 'vita@gmail.com', '$2y$10$2s/dgjADHLW1D5Ha.1qdz.as3ShDVYB/2V8fHh/P81dqtlKK2V8nG', '<p>Jln Rawa Belong No 54</p>\r\n', '098765432111', '445566', 'USER'),
(9, 'riski', 'riski@gmail.com', '$2y$10$xrt0u8OUv5S7n7L94MMSfuKtykPNnpvnrRLp0LQuV1dD5lsgpeuLW', '<p>Jln Athar Muhammad No 24</p>\r\n', '12345678', '10101010', 'USER'),
(10, 'Syatya Athary', 'athar@gmail.com', '$2y$10$LGiCeFBz8fFfOTkL8hMJxO1P6e6qq2aW3Vcc2jcc0SbdGHrVPnXX.', '<p>Jln H sanusi Gang Hamzah No 28</p>\r\n', '098777776668', '12345', 'OWNER'),
(11, 'admin123', 'admin123@gmail.com', '$2y$10$B8sCWiTy0FGPO/v2x7ctjeIF2K9H1kiIvcFzm9fs/F2cgIYEgheeC', NULL, '098765414', '', 'ADMIN'),
(12, 'trianto syahbannu', 'triantoprayoga@gmail.com', '$2y$10$vEnh8an/klsuR.A8VvGrF.eyrbapsWyHaYEJ4uTgfEX6Yr76CzD.a', '<p>bumi asri</p>\r\n', '082118320445', '40218', 'USER'),
(13, 'Rifqi Nufaldi', 'rifqinaufaldi@gmail.com', '$2y$10$Lxz9A1/3yw0CzvYQ4eF/reGMFq8DzEmGINp2WARRFHVGZjJ4GKphK', NULL, '082111129182', '', 'USER');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id_cart`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`id_driver`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_product`);

--
-- Indexes for table `products_galleries`
--
ALTER TABLE `products_galleries`
  ADD PRIMARY KEY (`id_gallery`);

--
-- Indexes for table `rekening_numbers`
--
ALTER TABLE `rekening_numbers`
  ADD PRIMARY KEY (`id_rekening`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id_transaction`);

--
-- Indexes for table `transactions_details`
--
ALTER TABLE `transactions_details`
  ADD PRIMARY KEY (`id_transaction_detail`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `id_driver` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `products_galleries`
--
ALTER TABLE `products_galleries`
  MODIFY `id_gallery` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `rekening_numbers`
--
ALTER TABLE `rekening_numbers`
  MODIFY `id_rekening` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id_transaction` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `transactions_details`
--
ALTER TABLE `transactions_details`
  MODIFY `id_transaction_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
