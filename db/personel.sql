/*
 Navicat Premium Data Transfer

 Source Server         : local_koneksi
 Source Server Type    : MySQL
 Source Server Version : 100108
 Source Host           : localhost:3306
 Source Schema         : personel

 Target Server Type    : MySQL
 Target Server Version : 100108
 File Encoding         : 65001

 Date: 01/11/2019 08:18:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for pengguna
-- ----------------------------
DROP TABLE IF EXISTS `pengguna`;
CREATE TABLE `pengguna`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `PASSWORD` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pengguna
-- ----------------------------
INSERT INTO `pengguna` VALUES (1, 'admin1', '123');
INSERT INTO `pengguna` VALUES (2, 'admin2', '456');
INSERT INTO `pengguna` VALUES (4, 'admin4', '333');

-- ----------------------------
-- Table structure for tabel_personel_koopssus
-- ----------------------------
DROP TABLE IF EXISTS `tabel_personel_koopssus`;
CREATE TABLE `tabel_personel_koopssus`  (
  `id` int(25) NOT NULL AUTO_INCREMENT,
  `Jabatan` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Tmt_jabatan` date NULL DEFAULT NULL,
  `Nama` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Pangkat` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Korps` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `NRP` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Matra` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Tempat_lahir` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Tanggal_lahir` date NULL DEFAULT NULL,
  `Gol_darah` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Dik_akhir` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Status` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Domisili` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Alamat` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `No_hp` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Foto` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Email` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Ket` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 316 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tabel_personel_koopssus
-- ----------------------------
INSERT INTO `tabel_personel_koopssus` VALUES (1, 'Komandan Koopssus', '0000-00-00', 'Rochadi', 'Mayjen TNI', '', '30782', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (2, 'Wakil Komandan Koopssus', '0000-00-00', 'Widodo', 'Kolonel', 'Mar', '10423/P', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (3, 'ADC Komandan Koopssus', '0000-00-00', 'Firman Triyadi', 'Sertu', '', '21120220540492', 'TNI AU', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (4, 'ADC Wadan Koopssus', '0000-00-00', 'Okta Rudiman', 'Sertu', '', '21120150091092', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (5, 'Ta Mudi Dan Koopssus', '0000-00-00', 'Efendi', 'Praka', '', '31110511020190', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (6, 'Ta Mudi Wadan Koopssus', '0000-00-00', 'Windarto', 'Praka', '', '31110603761290', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (7, 'Ta Caraka Dan Koopssus', '0000-00-00', 'Ahmad Efendy Stiawan', 'Pratu', '', '541288', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (8, 'Ta Caraka Wadan Koopssus', '0000-00-00', 'Pranciscus Dicky Wijaya Kurnia Putra', 'Prada', '', '31180146081297', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (9, 'Asren Koopssus', '0000-00-00', 'Revelson Saragih   M.Tr.Hanla', 'Letkol', 'Mar', '13922/P', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (10, 'Pabandya Renprogar Sren', '0000-00-00', 'Ari Trisenta Nursanto S.Sos.', 'Letkol', 'Arh', '11990054120178', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (11, 'Pabandya Jemen Sren', '0000-00-00', 'Dilli Setiawan   M.Si. (Han)', 'Letkol', 'Pas', '525043', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (12, 'Pabanda Dokrenprogar Sren', '0000-00-00', 'Antonius Tambunan   A.Md.', 'Mayor', 'Adm', '525833', 'TNI AU', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (13, 'Pabanda Dokjemen Sren', '0000-00-00', 'Dwi Pujiastuti   S.Psi.', 'Mayor', 'Caj (K)', '11040014491079', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (14, 'Ps. Kaurmin Sren', '0000-00-00', 'Ramadhani Lukman   S.T.Han.', 'Lettu', 'Inf', '11140010660392', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (15, 'Bati Renprogar Sren', '0000-00-00', '', '', '', '', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (16, 'Bati Jemen Sren', '0000-00-00', 'Muh. Shoaib Hidayatullah', 'Serka', '', '538112', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (17, 'Baurmin Sren', '0000-00-00', 'Herdi Hidayat', 'Sertu', '', '21100226921188', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (18, 'Ba. Operator Komputer 1 Sren', '0000-00-00', 'Iwan Suprendianto', 'Serda', 'Mar', '106367', 'TNI AU', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (19, 'Ba. Operator Komputer 2 Sren', '0000-00-00', 'Erwin Wibisono', 'Serda', '', '21170085201097', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (20, 'Ta Mudi Sren', '0000-00-00', 'Gusram Arfa', 'Praka', '', '31110581070890', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (21, 'Ta Caraka Sren', '0000-00-00', 'Eko Prasetyo', 'Praka', 'Mar', '115769', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (22, 'Asintel Koopssus', '0000-00-00', 'Dodi Irawan', 'Kolonel', 'Pas', '521852', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (23, 'Pabandya Lid Sintel', '0000-00-00', 'Henri Mahyudi   S.Sos.  M.Han.', 'Letkol', 'Inf', '11980026260473', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (24, 'Pabandya Pam Sintel', '0000-00-00', 'Jolo Fitrianto', 'Letkol', 'Mar', '1528/P', 'TNI AU', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (25, 'Pabandya Gal Sintel', '0000-00-00', 'Agung Udayana', 'Letkol', 'Inf', '119600378221073', 'TNI AU', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (26, 'Pabanda Dok Lid Sintel', '0000-00-00', 'Kurnia Hendra W.', 'Mayor', 'Mar', '17745/P', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (27, 'Pabanda Dok Pam Sintel', '0000-00-00', 'Indra Hari Purnama L.', 'Mayor', 'Inf', '11990041341277', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (28, 'Pabanda Dok Gal Sintel', '0000-00-00', 'Dadang Suratno', 'Mayor', 'Inf', '11050035921082', 'TNI AU', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (29, 'Ps. Kaurmin Sintel', '0000-00-00', 'Wisnu Wardana Sardi', 'Lettu', 'Chb', '21990181240578', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (30, 'Bati Lid Sintel', '0000-00-00', 'Zaenudin Bkhri', 'Sertu', 'Pom', '118098', 'TNI AU', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (31, 'Bati Pam Sintel', '0000-00-00', 'Sumarna', 'Serka', '', '21090065160987', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (32, 'Bati Gal Sintel', '0000-00-00', 'Yolan Afrian Pramudianto', 'Sertu', '', '21120177570590', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (33, 'Baurmin Sintel', '0000-00-00', 'Arfan Cahyoko', 'Sertu', '', '526901', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (34, 'Ba. Operator Komputer 1 Sintel', '0000-00-00', 'Zet Tamar', 'Sertu', '', '31970367121277', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (35, 'Ba. Operator Komputer 2 Sintel', '0000-00-00', 'Yoga Gushendra', 'Serda', 'Mar', '121845', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (36, 'Ba. Operator Komputer 3 Sintel', '0000-00-00', 'Subri Maulidi', 'Serda', '', '21160250950796', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (37, 'Baminlog Sintel', '0000-00-00', 'Dwira Saputra', 'Sertu', '', '21140083820295', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (38, 'Ta Mudi Sintel', '0000-00-00', 'Junaidi', 'Praka', '', '31110611760792', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (39, 'Ta Caraka Sintel', '0000-00-00', 'Jhonata Bayu Kusuma', 'Pratu', '', '541325', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (40, 'Asops Koopssus', '0000-00-00', 'I Nyoman Yudhana Dewata Putra', 'Letkol', 'Inf', '11980045640576', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (41, 'Pabandya Ops Sops', '0000-00-00', '', '', '', '', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (42, 'Pabandya Lat Sops', '0000-00-00', 'Zaiful Rakhman   S.H.  M.M.', 'Letkol', 'Inf', '11970038981075', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (43, 'Pabanda Siapsat Sops', '0000-00-00', 'Ridwan Maulana', 'Kapten', 'Inf', '11080105111284', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (44, 'Pabanda Binlat Sops', '0000-00-00', 'Alamsyah   S.H.', 'Kapten', 'Mar', '18818/P', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (45, 'Kaurmin Sops', '0000-00-00', 'Suprayitno', 'Kapten', 'Laut (S)', '19034/P', 'TNI AU', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (46, 'Bati Ops Sops', '0000-00-00', 'Hartoko', 'Serma', '', '3195045756087', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (47, 'Bati Lat Sops', '0000-00-00', 'Agung Nurseo', 'Serka', '', '21090059141088', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (48, 'Baurmin Sops', '0000-00-00', 'Guntur Dhanang Jaya', 'Sertu', '', '21130175570590', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (49, 'Ba. Operator Komputer 1 Sops', '0000-00-00', 'Basoni ', 'Serda', 'Mar', '104511', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (50, 'Ba. Operator Komputer 2 Sops', '0000-00-00', 'Sudartok', 'Serda', '', '528457', 'TNI AU', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (51, 'Ta Mudi Sops', '0000-00-00', 'Dedi Irawan', 'Pratu', '', '31110359150891', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (52, 'Ta Caraka Sops', '0000-00-00', 'Stenly Lesnussa', 'Pratu', '', '31130297180191', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (53, 'Aspers Koopssus', '0000-00-00', 'Fajar Tri Yulianto   S.Sos.', 'Letkol', 'Inf', '119800442180775', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (54, 'Pabandya Watpers Spers', '0000-00-00', 'Sugeng Purwanto', 'Letkol', 'Mar', '15032/P', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (55, 'Pabandya Binkar Spers', '0000-00-00', 'Redinal Dewanto   S.Sos.', 'Letkol', 'Arh', '11000046450878', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (56, 'Pabandya Dik Spers', '0000-00-00', 'Rohmadony   S.Sos.', 'Letkol', 'Adm', '527072', 'TNI AU', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (57, 'Pabanda Dok Watpers Spers', '0000-00-00', 'Usman Setiadi Nendi Suyana', 'Mayor', 'Cba', '2910046951271', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (58, 'Pabanda Dok  Binkar Spers', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (59, 'Pabanda Dok Dik Spers', '0000-00-00', 'Imam Safi\'i', 'Mayor', 'Mar', '16149/P', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (60, 'Ps. Kaurmin Spers', '0000-00-00', 'Sumarno', 'Lettu', 'Mar', '21749/P', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (61, 'Bati Watpers Spers', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (62, 'Bati Kar Spers ', '0000-00-00', 'Irhamsyah Putra', 'Serka', '', '21060009260685', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (63, 'Bati Dik Spers', '0000-00-00', 'Endang Supriyatna', 'Sertu', '', '84714', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (64, 'Baurmin Spers', '0000-00-00', 'Ida Bagus Ary Sudana', 'Serda', '', '543413', 'TNI AU', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (65, 'Ba. Operator Komputer 1 Spers', '0000-00-00', 'Yulianus Fadly', 'Serda', '', '533087', 'TNI AU', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (66, 'Ba. Operator Komputer 2 Spers', '0000-00-00', 'Andriansyah Rifai', 'Serda', 'Mar', '121879', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (67, 'Ba. Operator Komputer 3 Spers', '0000-00-00', 'Izak Borges', 'Serda', '', '21160152941194', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (68, 'Ta Mudi Spers', '0000-00-00', 'Mukhlis', 'Pratu', '', '541399', 'TNI AU', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (69, 'Ta Caraka Spers', '0000-00-00', 'Angga Wibowo', 'Pratu', '', '31120467131291', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (70, 'Aslog  Koopssus', '0000-00-00', 'Akmil Satria Martha Yudha Darmawi', 'Letkol', 'Inf', '11980067590377', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (71, 'Pabandya Bekang Slog', '0000-00-00', 'Ilham Rusydi   S.E.', 'Letkol', 'Cba', '11970058690576', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (72, 'Pabandya Mat Slog', '0000-00-00', 'Hotman Untung Sinaga', 'Letkol', 'Laut (T)', '15524/P', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (73, 'Pabandya Simak BMN Slog', '0000-00-00', 'Dani Kriswanto   S.E.', 'Letkol', 'Cba', '11990059410977', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (74, 'Pabanda Dok Bekang Slog', '0000-00-00', 'Triyogi Pambudi   S.E.', 'Kapten', 'Cba', '1107082270286', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (75, 'Pabanda Dok Mat Slog', '0000-00-00', 'Shandi Kurniawan', 'Kapten', 'Tek', '536397', 'TNI AU', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (76, 'Pabanda Dok Simak BMN Slog', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (77, 'Kaurmin Slog', '0000-00-00', 'Sunardi', 'Kapten', 'Sus', '516508', 'TNI AU', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (78, 'Bati Bekang Slog', '0000-00-00', 'Abdul Aziz', 'Pelda', '', '21970086060276', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (79, 'Bati Mat Slog', '0000-00-00', 'Adrianto Lubis', 'Pelda ', 'Mar', '89520', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (80, 'Bati Simak BMN Slog', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (81, 'Baurmin Slog', '0000-00-00', 'Yanto', 'Serka', '', '520654', 'TNI AU', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (82, 'Ba. Operator Komputer 1 Slog', '0000-00-00', 'Eko Suryanto', 'Sertu', 'Mar', '119442', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (83, 'Ba. Operator Komputer 2 Slog', '0000-00-00', 'Indra Aldi Kelvianto', 'Serda', '', '21170229190595', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (84, 'Ba. Operator Komputer 3 Slog', '0000-00-00', 'Lailatul Dzumroni Thoha', 'Serda', 'Mar', '122745', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (85, 'Ta Mudi Slog', '0000-00-00', 'Doni Saputra', 'Pratu', '', '543531', 'TNI AU', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (86, 'Ta Caraka Slog', '0000-00-00', 'Jefri Sitorus', 'Pratu', '', '31120396681191', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (87, 'Askomlek Koopssus', '0000-00-00', 'Benny Leonardo Limbong   S.H.', 'Letkol', 'Mar', '12741/P', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (88, 'Pabandya Komlek Skomlek', '0000-00-00', 'Ade Sofian Ristiandy   S.I.P.  M.M.', 'Letkol', 'Chb', '11980066761076', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (89, 'Pabandya Pernika  Skomlek', '0000-00-00', 'Bunyamin S.Si.', 'Letkol', 'Lek', '524382', 'TNI AU', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (90, 'Pabanda Dok Komlek  Skomlek', '0000-00-00', 'Andy Ferdian   S.T.', 'Mayor ', 'Lek', '534483', 'TNI AU', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (91, 'Pabanda Dok Pernika  Skomlek', '0000-00-00', 'Irwan S. Simbolon   S.T.   M.Si. (Han).', 'Mayor', 'Chb', '1102022660979', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (92, 'Kaurmin  Skomlek', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (93, 'Bati Komlek  Skomlek', '0000-00-00', 'Imam Machful', 'Serka', '', '21080697480989', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (94, 'Bati Pernika  Skomlek', '0000-00-00', 'M. Anri', 'Serka', '', '21050226570885', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (95, 'Baurmin  Skomlek', '0000-00-00', 'Tazario Vulanda', 'Serda', '', '41719709545673', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (96, 'Ba. Operator Komputer 1  Skomlek', '0000-00-00', 'Chandra Aji Rija Utomo', 'Serda', '', '41719604545801', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (97, 'Ba. Operator Komputer 2  Skomlek', '0000-00-00', 'Ronaldo Finoza', 'Serda', '', '21160029771095', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (98, 'Ta Mudi  Skomlek', '0000-00-00', 'Ramadi Firmansyah', 'Prada', 'Mar', '122345', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (99, 'Ta Caraka  Skomlek', '0000-00-00', 'Tri Hariyanto', 'Kopda', '', '31071201380686', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (100, 'Dandenma Koopssus', '0000-00-00', 'Agung Budhi Purnomo   S.E.', 'Letkol', 'Inf', '11980055461176', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (101, 'Tamudi Denma', '0000-00-00', 'Raul Dos Santos Da Costa', 'Praka', '', '31081823320886', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (102, 'Kasi Pamops SiPamops Denma', '0000-00-00', 'Yopie Febrian', 'Mayor', 'Mar', '17241/P', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (103, 'Pasi Pam SiPamops Denma', '0000-00-00', 'Joko Puristiadi', 'Kapten', 'Inf', '21950087071275', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (104, 'Pasi Ops SiPamops Denma', '0000-00-00', 'Saefudin', 'Lettu', 'Mar', '20617/P', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (105, 'Ba Operator Komputer 1 SiPamops Denma', '0000-00-00', 'Moktamar ', 'Serda', '', '21160136610195', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (106, 'Ba Operator Komputer 2 SiPamops Denma', '0000-00-00', 'Mohammad Yasin', 'Sertu', '', '542534', 'TNI AU', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (107, 'Kasi Minlog SiMinlog Denma', '0000-00-00', 'Yunif Risa Putra', 'Kapten', 'Inf', '11070058760684', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (108, 'Pasi Min SiMinlog Denma', '0000-00-00', 'Dwi Santoso', 'Kapten', 'Laut (S)', '19268/P', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (109, 'Pasi Log SiMinlog Denma', '0000-00-00', 'Dody Cahyo Kusumo Nugroho', 'Kapten', 'Ckm', '111100401140290', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (110, 'Ba Operator Komputer 1 SiMinlog Denma', '0000-00-00', 'Pujianta', 'Serka', '', '31950179380574', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (111, 'Ba Operator Komputer 2 SiMinlog Denma', '0000-00-00', 'Michael Sapullete', 'Serda', '', '21160190490695', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (112, 'Kasi Harwat SiHarwat Denma', '0000-00-00', 'Endri Yul Prihatin Warista', 'Kapten', 'Cpl', '11080129210486', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (113, 'Pasi Harwat SiHarwat Denma', '0000-00-00', 'Yulius Indra Prasetyo', 'Kapten', 'Cpl', '21970018330775', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (114, 'Pasi Urdal SiHarwat Denma', '0000-00-00', 'Jayadi Setiawan', 'Kapten', 'Laut (P)', '18439/P', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (115, 'Pa Gudbek Siharwat SiHarwat Denma', '0000-00-00', 'Yohanes Joko Suhardono', 'Kapten', 'Cba', '2910045050871', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (116, 'Ba Operator Komputer 1 SiHarwat Denma', '0000-00-00', 'Eduard Ferdinan', 'Sertu', '', '31950599220275', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (117, 'Ba Operator Komputer 2 SiHarwat Denma', '0000-00-00', 'Noviyanto Putra Wardhana', 'Sertu', '', '21100105071190', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (118, 'Ba Watsus Intel Gudpal SiHarwat Denma', '0000-00-00', 'Sulaksono', 'Serma', '', '3920113670171', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (119, 'Bamin Gudbek SiHarwat Denma', '0000-00-00', 'Indra Gunawan', 'Serda', '', '21150039940796', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (120, 'Ta Oprator Gudbek SiHarwat Denma', '0000-00-00', 'Dudi Suarjono', 'Koptu', '', '31010541570182', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (121, 'Ta Sucadran Gudpal SiHarwat Denma', '0000-00-00', 'Aditia Trianto', 'Koptu', 'Mar', '98714', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (122, 'Ta Muhandak Gudpal SiHarwat Denma', '0000-00-00', 'Subekti Tri Rukmono', 'Praka', '', '31110408160989', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (123, 'Ta Oprator Gudpal SiHarwat Denma', '0000-00-00', 'Agus Praja Kusuma', 'Pratu', '', '541350', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (124, 'Pasi Ang SiAng Denma', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (125, 'Ba Montir 1 SiAng Denma', '0000-00-00', 'Wahyono', 'Serma', '', '3910513071269', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (126, 'Ba Montir 2 SiAng Denma', '0000-00-00', 'Suraji', 'Serma', '', '21020071071181', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (127, 'Ba Montir 3 SiAng Denma', '0000-00-00', 'Yowanda', 'Serda', 'Mar', '120207', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (128, 'Ba Montir 4 SiAng Denma', '0000-00-00', 'Anjas Miranda', 'Serda', 'Mar', '122697', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (129, 'Ba Mudi 1 SiAng Denma', '0000-00-00', 'Aan Setiawan', 'Serma', '', '21010154911281', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (130, 'Ba Mudi 2 SiAng Denma', '0000-00-00', 'Jeyeng Joko Susilo', 'Serda', '', '21160127210994', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (131, 'Ba Mudi 3 SiAng Denma', '0000-00-00', 'Reno Arisani', 'Serma', '', '31950418880375', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (132, 'Ba Mudi 4 SiAng Denma', '0000-00-00', 'Saptari', 'Serka', '', '31940692030974', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (133, 'Ba Mudi 5 SiAng Denma', '0000-00-00', 'Parwanto', 'Serka', '', '31960287440174', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (134, 'Ba Mudi 6 SiAng Denma', '0000-00-00', 'Arif Budiyanto', 'Serda', 'Mar', '120335', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (135, 'Ba Mudi 7 SiAng Denma', '0000-00-00', 'Nurfuat', 'Serda', '', '537064', 'TNI AU', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (136, 'Ba Mudi 8 SiAng Denma', '0000-00-00', 'Abd. Rahman', 'Serda', 'Mar', '120211', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (137, 'Ba Mudi 9 SiAng Denma', '0000-00-00', 'Ardhitya Mukti Rahaja', 'Serka', '', '21070462660188', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (138, 'Ba Mudi 10 SiAng Denma', '0000-00-00', 'Dwiki Idul Dewandaru', 'Serda', '', '21150095610595', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (139, 'Ta Mudi 1 SiAng Denma', '0000-00-00', 'Sugiyanto', 'Kopka', 'Mar', '87500', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (140, 'Ta Mudi 2 SiAng Denma', '0000-00-00', 'Dwi Wijayanto', 'Koptu', '', '31010561030380', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (141, 'Ta Mudi 3 SiAng Denma', '0000-00-00', 'Muhammad Yusuf', 'Kopda', '', '31050226890385', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (142, 'Ta Mudi 4 SiAng Denma', '0000-00-00', 'Ahmad Giyanto', 'Kopda', 'Mar', '106197', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (143, 'Ta Mudi 5 SiAng Denma', '0000-00-00', 'Didin Zanudin', 'Kopda', 'Mar', '111926', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (144, 'Ta Mudi 6 SiAng Denma', '0000-00-00', 'Indra Setiawan', 'Kopda', 'Mar', '111899', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (145, 'Ta Mudi 7 SiAng Denma', '0000-00-00', 'Puguh Johan Prasetyo', 'Prada', '', '61819902548375', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (146, 'Ta Mudi 8 SiAng Denma', '0000-00-00', 'Alex Nuryadi', 'Praka', '', '31100406350889', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (147, 'Ta Mudi 9 SiAng Denma', '0000-00-00', 'Hanif Yudha Fathrurrohman', 'Pratu', '', '31141231740792', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (148, 'Kasi Kes SiKes Denma', '0000-00-00', 'dr. Kadri Lubis', 'Mayor', 'Ckm', '11040000600775', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (149, 'Pasi Kes SiKes Denma', '0000-00-00', 'Bornok Lubis   AMF', 'Kapten', 'Ckm', '21940057460472', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (150, 'Ba Kes 1 SiKes Denma', '0000-00-00', 'Falty Suangro Sagala', 'Serka', '', '21070383700985', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (151, 'Ba Kes 2 SiKes Denma', '0000-00-00', 'M. David Yusuf', 'Serma', '', '21040204051182', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (152, 'Ba Kes 3 SiKes Denma', '0000-00-00', 'Iswahyudi', 'Sertu', '', '21100181611287', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (153, 'Ba Kes 4 SiKes Denma', '0000-00-00', 'Susanto Bahtiar Rachman', 'Serka', '', '531071', 'TNI AU', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (154, 'Ba Kes 5 SiKes Denma', '0000-00-00', 'Abbim Dio Gumara', 'Serda', '', '21170124070497', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (155, 'Ta Kes 1 SiKes Denma', '0000-00-00', 'Zainal Abidin', 'Kopda', '', '31940572811274', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (156, 'Ta Kes 2 SiKes Denma', '0000-00-00', 'Tendi Rustendi', 'Koptu', '', '31010385980579', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (157, 'Ta Kes 3 SiKes Denma', '0000-00-00', 'Fransiskus Yohan Wakris', 'Pratu', '', '31140054760294', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (158, 'Ta Mudi 1 SiKes Denma', '0000-00-00', 'Sadrak Lambe', 'Kopka', 'Mar', '87260', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (159, 'Ta Mudi 2 SiKes Denma', '0000-00-00', 'Reja Priyanto', 'Praka', '', '31110626040591', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (160, 'Kasi Komlek SiKomlek Denma', '0000-00-00', 'Bernadus Yudi Ari Wibowo', 'Mayor', 'Mar', '17751/P', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (161, 'Pasi Komlek SiKomlek Denma', '0000-00-00', 'Widi Sulistyo H.   S.T.', 'Kapten', 'Lek', '539521', 'TNI AU', 'Wonogiri', '0000-00-00', 'O', 'S1', 'K-2', 'Bekasi', 'Jl. Kelip Raya No 40 Jatimurni - Pondok Melati', '81315416108', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (162, 'Ba Operator Komputer 1 SiKomlek Denma', '0000-00-00', 'Genesis Hutagalung', 'Serda', '', '21170092880695', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (163, 'Ba Operator Komputer 2 SiKomlek Denma', '0000-00-00', 'Firmansyah Chandra P. W.', 'Serda', '', '21170096681296', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (164, 'Danton Wal Tonwal Denma', '0000-00-00', 'Puji Rahmansyah', 'Letda', 'Inf', '11160011300494', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (165, 'Baton Wal Tonwal Denma', '0000-00-00', 'Hariono Hutapea', 'Serka', '', '21090213580287', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (166, 'Danru 1 Tonwal Denma', '0000-00-00', 'Arif Munandar', 'Sertu', '', '21120015870591', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (167, 'Danru 2 Tonwal Denma', '0000-00-00', 'Pandu Pranat', 'Serda', 'Mar', '121931', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (168, 'Danru 3 Tonwal Denma', '0000-00-00', 'Ryan Gita Maulana', 'Serda', '', '544227', 'TNI AU', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (169, 'Wadanru 1 Tonwal Denma', '0000-00-00', 'Rahayu Nur Kulis', 'Kopda', 'Mar', '11019', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (170, 'Wadanru 2 Tonwal Denma', '0000-00-00', 'Tomi Arif Setiawan', 'Kopda', '', '31040254100385', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (171, 'Wadanru 3 Tonwal Denma', '0000-00-00', 'Sultan', 'Kopda', '', '31071109870787', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (172, 'Tabak 1 Ru 1 Tonwal Denma', '0000-00-00', 'Wawan Gusmawan', 'Praka', '', '31081653110888', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (173, 'Tabak 1 Ru 2 Tonwal Denma', '0000-00-00', 'Gamayoga', 'Praka', '', '31081744790389', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (174, 'Tabak 1 Ru 3 Tonwal Denma', '0000-00-00', 'Ahmad Ngafif', 'Praka', '', '31100403790589', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (175, 'Tabak 2 Ru 1 Tonwal Denma', '0000-00-00', 'Asran', 'Praka', '', '31110485610690', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (176, 'Tabak 2 Ru 2 Tonwal Denma', '0000-00-00', 'Lilis Sadono', 'Praka', '', '31090136351188', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (177, 'Tabak 2 Ru 3 Tonwal Denma', '0000-00-00', 'Fredi Niken Pambudi', 'Praka', '', '31100089210289', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (178, 'Tabak 3 Ru 1 Tonwal Denma', '0000-00-00', 'Helson Napitupulu', 'Praka', '', '31100056041188', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (179, 'Tabak 3 Ru 2 Tonwal Denma', '0000-00-00', 'Hendrawan Saputra Mulyarizky', 'Praka', '', '31100131860390', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (180, 'Tabak 3 Ru 3 Tonwal Denma', '0000-00-00', 'Ony Wahyu Saputra', 'Praka', '', '540002', 'TNI AU', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (181, 'Tabak 4 Ru 1 Tonwal Denma', '0000-00-00', 'Febri Alri Wibowo', 'Praka', 'Mar', '116832', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (182, 'Tabak 4 Ru 2 Tonwal Denma', '0000-00-00', 'Slamet Wijayano', 'Praka', 'Mar', '115831', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (183, 'Tabak 4 Ru 3 Tonwal Denma', '0000-00-00', 'Fatkul Rosikin', 'Praka', 'Mar', '115835', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (184, 'Tabak 5 Ru 1 Tonwal Denma', '0000-00-00', 'Sugih Rais Sentosa', 'Pratu', '', '31130088290793', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (185, 'Tabak 5 Ru 2 Tonwal Denma', '0000-00-00', 'Sunarto', 'Pratu', '', '31120629830691', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (186, 'Tabak 5 Ru 3 Tonwal Denma', '0000-00-00', 'Okistie Andreas Natasetya', 'Pratu', '', '31120522090691', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (187, 'Tabak 6 Ru 1 Tonwal Denma', '0000-00-00', 'Nur Patrya Sandi', 'Pratu', '', '541483', 'TNI AU', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (188, 'Tabak 6 Ru 2 Tonwal Denma', '0000-00-00', 'Fajar Bagus Bintoro', 'Pratu', '', '31130508700591', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (189, 'Tabak 6 Ru 3 Tonwal Denma', '0000-00-00', 'Eko Maryanto', 'Pratu', 'Mar', '121005', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (190, 'Tabak 7 Ru 1 Tonwal Denma', '0000-00-00', 'Muhamad Satria Perdana', 'Prada', 'Mar', '124773', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (191, 'Tabak 7 Ru 2 Tonwal Denma', '0000-00-00', 'Cahya Ardiansyah', 'Prada', 'Mar', '124737', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (192, 'Tabak 7 Ru 3 Tonwal Denma', '0000-00-00', 'Rudi Saputra', 'Pratu', '', '31120090000392', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (193, 'Tabak 8 Ru 1 Tonwal Denma', '0000-00-00', 'Heniv Andrean M.K.', 'Prada', 'Mar', '124731', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (194, 'Tabak 8 Ru 2 Tonwal Denma', '0000-00-00', 'Bagas Pradipta', 'Prada', '', '31170563450496', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (195, 'Tabak 8 Ru 3 Tonwal Denma', '0000-00-00', 'Roni Febriansyah', 'Prada', '', '61619502544815', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (196, 'Dansi Provost Tonwal Denma', '0000-00-00', 'Heri Sulasmono', 'Serma', '', '530822', 'TNI AU', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (197, 'Danru Provost Tonwal Denma', '0000-00-00', 'Ahmad Nur Rizaldi', 'Serda', '', '21170095770896', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (198, 'Ta Provost 1 Tonwal Denma', '0000-00-00', 'M. Ismail', 'Kopka', 'Mar', '81393', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (199, 'Ta Provost 2 Tonwal Denma', '0000-00-00', 'Murwanto', 'Koptu', 'Mar', '99158', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (200, 'Ta Provost 3 Tonwal Denma', '0000-00-00', 'Teddy Dwi Tejo M. ', 'Klk', 'Pom', '115897', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (201, 'Ta Provost 4 Tonwal Denma', '0000-00-00', 'Rio Andika', 'Pratu', '', '31130330901192', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (202, 'Ta Provost 5 Tonwal Denma', '0000-00-00', 'Andi Wibowo', 'Klk', 'Pom', '114038', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (203, 'Ta Provost 6 Tonwal Denma', '0000-00-00', 'Wawan Handoko', 'Pkopda', '', '537012', 'TNI AU', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (204, 'Ta Provost 7 Tonwal Denma', '0000-00-00', 'Zunis Eko Wicahyono', 'Koptu ', 'Pom', '103006', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (205, 'Ta Provost 8 Tonwal Denma', '0000-00-00', 'Teguh Amanto', 'Koptu', 'Mar', '101170', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (206, 'Kasi Ku SiKu Denma', '0000-00-00', 'Ahmad Mukhlich Amanuddin Sholeh', 'Kapten', 'Cku', '11080133820486', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (207, 'Pa Ku SiKu Denma', '0000-00-00', 'Sali   S.E.  M.M.', 'Kapten', 'Cku', '21940057460472', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (208, 'Ba Juyar 1 SiKu Denma', '0000-00-00', 'Firman Nugroho', 'Serda', '', '31040608211184', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (209, 'Ba Juyar 2 SiKu Denma', '0000-00-00', 'Amad Suwito', 'Serka', '', '522211', 'TNI AU', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (210, 'Ba Operator Komputer 1 SiKu Denma', '0000-00-00', 'Aswinkao ', 'Serda', '', '21170203351297', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (211, 'Ba Operator Komputer 2 SiKu Denma', '0000-00-00', 'Ilham Bagus Akbar', 'Serda', 'Mar', '124128', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (212, 'Ta Caraka SiKu Denma', '0000-00-00', 'Dede Hidayat', 'Prada', '', '31160081641195', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (213, 'Kaur Taud Denma', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (214, 'Paur Taud Ur Taud Denma', '0000-00-00', 'Mohamad Nurokhim', 'Lettu', 'Adm', '521297', 'TNI AU', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (215, 'Ba Operator Komputer Taud Denma', '0000-00-00', 'Abdullah Malik S.', 'Serka', '', '535313', 'TNI AU', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (216, 'Ta Caraka 1 Taud Denma', '0000-00-00', 'Arohman', 'Koptu', 'Mar', '103363', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (217, 'Ta Caraka 2 Taud Denma', '0000-00-00', 'Ndaniel Ardian Putra', 'Praka', '', '31090175869888', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (218, 'Kagudang Bekang Denma', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (219, 'Ps. Kagudang Peralatan Denma', '0000-00-00', 'Bambang Irawan', 'Lettu', 'Kal', '519331', 'TNI AU', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (220, 'Bamin Gudang Bekang Denma', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (221, 'Operator Gudang Bekang Denma', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (222, 'Ba Perakit Kapor/Kaporsatlap Gudang Bekang Denma', '0000-00-00', 'Febrianto', 'Serda', '', '21170029860297', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (223, 'Ta Perakit Kapor/Kaporsatlap Gudang Bekang Denma', '0000-00-00', 'M. Muhaimin', 'Praka', 'Mar', '116790', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (224, 'Ba Perakit Bekud dan Alang Air Gudang Bekang Denma', '0000-00-00', 'Ali Ruba\'i', 'Sertu', '', '3930270240574', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (225, 'Ta Perakit Bekud dan Alang Air Gudang Bekang Denma', '0000-00-00', 'Iwan Dariawan', 'Praka', 'Mar', '117190', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (226, 'Bamin Gudang Peralatan Denma', '0000-00-00', 'Akbarsyam', 'Serda', '', '21170123081296', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (227, 'Operator Gudang Peralatan Denma', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (228, 'Ba Senjata dan Aloptik Gudang Peralatan Denma', '0000-00-00', 'Suyono', 'Serma', '', '31950022030773', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (229, 'Ta Senjata dan Aloptik  Gudang Peralatan Denma', '0000-00-00', 'Arif Pujianto', 'Kopda', 'Mar', '104038', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (230, 'Muhandak  Gudang Peralatan Denma', '0000-00-00', 'Winarko', 'Serka', '', '532499', 'TNI AU', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (231, 'Sucadran  Gudang Peralatan Denma', '0000-00-00', 'Dede Sukendar', 'Serma', '', '31960386440477', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (232, 'Matsus Intel  Gudang  Peralatan Denma', '0000-00-00', 'Hendrik Supriadi', 'Pratu', '', '31110522090691', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (233, 'Koorsmin Koopssus', '0000-00-00', 'Andri Parid   S.Sos.', 'Letkol', 'Adm', '529198', 'TNI AU', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (234, 'Ka Set Smin', '0000-00-00', 'Sukirno Hadi Wibowo', 'Mayor', 'Mar', '15895/P', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (235, 'ADC Smin', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (236, 'Baurmin Smin', '0000-00-00', 'Miskan Sudono', 'Serma', '', '527875', 'TNI AU', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (237, 'Ba Operator Komputer 1 Smin', '0000-00-00', 'Trisno Sanubari ', 'Serda', '', '21170044121295', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (238, 'Ba Operator Komputer 2 Smin', '0000-00-00', 'Muhamad Rizkiko Ramadhani', 'Serda', '', '41819801547441', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (239, 'Ta Operator Komputer Smin', '0000-00-00', 'Bayu Radytia Pratama', 'Praka', '', '31100194800889', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (240, 'Pengemudi 1 Smin', '0000-00-00', 'Rachmat Syahputra', 'Serda', '', '532926', 'TNI AU', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (241, 'Pengemudi 2 Smin', '0000-00-00', 'Akbar Zulkifli', 'Prada', '', '61819702548407', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (242, 'Ta Caraka Smin', '0000-00-00', 'Guntur Senja A.', 'Praka', '', '31100140440491', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (243, 'Dansat Intel Satintel', '0000-00-00', 'Umar', 'Kolonel', 'Inf', '11960037330973', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (244, 'Wadansat Intel Satintel', '0000-00-00', 'Carles Arianto Lumban Gaol', 'Letkol', 'Mar', '14445/P', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (245, 'Kasiops Satintel', '0000-00-00', 'Gomgom Manurung   S.H.', 'Mayor', 'Inf', '11980020711271', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (246, 'Kasi Minlog Satintel', '0000-00-00', 'Totok Andi Setiawan   S.T.', 'Kapten', 'Laut (S)', '18756/P', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (247, 'Basi Pamops Satintel', '0000-00-00', 'Krisna Chandra D.', 'Serka', '', '21040143560128', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (248, 'Baminlog Satintel', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (249, 'Ba Operator Komputer 1 Satintel', '0000-00-00', 'Bayu Wibowo', 'Serda', '', '21170027700996', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (250, 'Ba Operator Komputer 2 Satintel', '0000-00-00', 'Bayu Widyantoro', 'Sertu', '', '540476', 'TNI AU', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (251, 'Caraka 1 Satintel', '0000-00-00', 'Riksel Berhimpong', 'Praka', '', '31100186151288', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (252, 'Caraka 2 Satintel', '0000-00-00', 'Ahmad Afandi', 'Praka', '', '31100116020888', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (253, 'Tamudi Dan Satintel', '0000-00-00', 'Chrisna Aditya Hariyadi', 'Prada', '', '61719808546104', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (254, 'Tamudi Wadan Satintel', '0000-00-00', 'Togu Sianipar', 'Prada', '', '61619603545377', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (255, 'Katim Anev Satintel', '0000-00-00', 'Thomas Albert F.   S.S.', 'Mayor', 'Caj', '11040012250981', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (256, 'Pa Anev Wilbar-1 Satintel', '0000-00-00', 'Ade Mufti Kusuma', 'Kapten', 'Inf', '11060025280385', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (257, 'Pa Anev Wilbar-2 Satintel', '0000-00-00', 'Muhammad Utama', 'Mayor', 'Mar', '16987/P', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (258, 'Pa Anev Wilteng-1 Satintel', '0000-00-00', 'Edi Gunawan   S.Sos.   S.S.', 'Mayor', 'Pas', '533153', 'TNI AU', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (259, 'Pa Anev Wilteng-2 Satintel', '0000-00-00', 'Erwandarno', 'Mayor', 'Kav', '11990046211174', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (260, 'Pa Anev Wiltim-1 Satintel', '0000-00-00', 'Eka Syahputra', 'Mayor', 'Caj', '11040044920481', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (261, 'Pa Anev Wiltim-2 Satintel', '0000-00-00', 'Wahyudi Kurniawan', 'Mayor', 'Mar', '18307/P', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (262, 'Pa Anev IT-1 Satintel', '0000-00-00', 'Yanuar Setyaga', 'Mayor', 'Inf', '11040030070783', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (263, 'Pa Anev IT-2 Satintel', '0000-00-00', 'Azwari   S.H.', 'Mayor', 'Sus', '535919', 'TNI AU', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (264, 'Pa Anev IT-3 Satintel', '0000-00-00', 'Dadang Widyanto', 'Mayor', 'Mar', '17249/P', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (265, 'Pa Anev IT-4 Satintel', '0000-00-00', 'Mei Siswa Budi   S.Sos.', 'Mayor', 'Chb', '2920020860572', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (266, 'Ba Operator 1 Anev Satintel', '0000-00-00', 'Deni Poerwanto', 'Serda', '', '211701618400797', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (267, 'Ba Operator 2 Anev Satintel', '0000-00-00', 'Nuriyanto', 'Serda', '', '544272', 'TNI AU', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (268, 'Ba Operator 3 Anev Satintel', '0000-00-00', 'Fajar Iksan N.', 'Serda', 'Pom', '120415', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (269, 'Ba Operator 4 Anev Satintel', '0000-00-00', 'Anas Chatimsya A.', 'Serda', 'Pom', '122028', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (270, 'Bamin Anev Satintel', '0000-00-00', 'Tommy Prastyo', 'Sertu', 'Mar', '118587', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (271, 'Katim Geospatika Satintel', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (272, 'Kanit Lid Geospatika Satintel', '0000-00-00', 'Hartanto', 'Mayor', 'Mar', '17010/P', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (273, 'Kanit Pam Kontra Geospatika Satintel', '0000-00-00', 'Ammar   S.Ag.', 'Mayor', 'Inf', '11020006330874', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (274, 'Kanit Gal Geospatika Satintel', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (275, 'Ba Geospatika 1 Satintel', '0000-00-00', 'Satri Jonggono', 'Peltu', 'Mar', '80045', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (276, 'Ba Geospatika 2 Satintel', '0000-00-00', 'Triyo Kusmantoro', 'Pelda', '', '21990171261276', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (277, 'Ba Geospatika 3 Satintel', '0000-00-00', 'Hirawandi Memet', 'Serda', '', '21170181720997', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (278, 'Ba Lid 1 Geospatika Satintel', '0000-00-00', 'Dwiyanto', 'Pelda', 'Mar', '89400', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (279, 'Ba Lid 2 Geospatika Satintel', '0000-00-00', 'Suranto', 'Serma', 'Mar', '66678', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (280, 'Ba Lid 3 Geospatika Satintel', '0000-00-00', 'Laode Roni', 'Serda', '', '534751', 'TNI AU', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (281, 'Ba Kontra 1 Geospatika Satintel', '0000-00-00', 'D. C. Amiarso', 'Serma', 'Mar', '73322', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (282, 'Ba Kontra 2 Geospatika Satintel', '0000-00-00', 'Akhmadi', 'Serda', 'Mar', '88545', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (283, 'Ba Kontra 3 Geospatika Satintel', '0000-00-00', 'Nur Arifin', 'Serda', 'Mar', '90063', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (284, 'Ba Gal 1 Geospatika Satintel', '0000-00-00', 'Muhammad Firman Noviandi', 'Serda', 'Mar', '124154', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (285, 'Ba Gal 2 Geospatika Satintel', '0000-00-00', 'Asep Saepuloh', 'Serda', '', '21170053281297', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (286, 'Ba Gal 3 Geospatika Satintel', '0000-00-00', 'Ademunandar', 'Serda', '', '21150215900293', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (287, 'Dantim  Kontra Intel Satintel', '0000-00-00', 'Mahfud Dwi Hafinanto', 'Mayor', 'Mar', '16114/P', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (288, 'Dan Unit Kontra Intel 1 Satintel', '0000-00-00', 'Dimas Bagus Prananjaya', 'Mayor', 'Cpm', '11070049030482', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (289, 'Dan Unit Kontra Intel 2 Satintel', '0000-00-00', 'Yayan Sumaryana   S.H.', 'Mayor', 'Cpm', '2920126550671', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (290, 'Dan Unit Kontra Intel 3 Satintel', '0000-00-00', 'Donny Prasetyo', 'Kapten', 'Mar', '18800/P', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (291, 'Ba Deteksi 1 Kontra Intel Satintel', '0000-00-00', 'Aleh', 'Peltu', 'Mar', '82584', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (292, 'Ba Deteksi 2 Kontra Intel Satintel', '0000-00-00', 'M. Zainal Arifin', 'Serma', '', '527866', 'TNI AU', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (293, 'Ba Deteksi 3 Kontra Intel Satintel', '0000-00-00', 'Kriswanto', 'Pelda ', 'Mar', '91888', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (294, 'Ba Investigasi  1 Kontra Intel Satintel', '0000-00-00', 'Suhartono', 'Pelda', 'Mar', '94217', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (295, 'Ba Investigasi 2 Kontra Intel Satintel', '0000-00-00', 'Riyanto', 'Serma ', 'Mar', '72619', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (296, 'Ba Investigasi 3 Kontra Intel Satintel', '0000-00-00', 'Sari Happy Mungkasi', 'Serma', 'Mar', '100671', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (297, 'Ba Negasi 1 Kontra Intel Satintel', '0000-00-00', 'Dian Herdiana', 'Serma', '', '3930118380172', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (298, 'Ba Negasi 2 Kontra Intel Satintel', '0000-00-00', 'Samsul Arifin ', 'Serda', '', '21120045240693', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (299, 'Ba Negasi 3 Kontra Intel Satintel', '0000-00-00', 'Ade Saputra Sipahutar', 'Serda', 'Mar', '124083', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (300, 'Dantim  Kontra Opini Satintel', '0000-00-00', 'Sunarto', 'Mayor', 'Inf', '11980046140676', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (301, 'Dan Unit Grafis  Kontra Opini Satintel', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (302, 'Dan Unit Monitoring  Kontra Opini Satintel', '0000-00-00', 'Deny Aprianto putro', 'Mayor', 'Mar', '18299/P', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (303, 'Dan Unit Jaringan Agen  Kontra Opini Satintel', '0000-00-00', 'Ferri Yohanes Ranti', 'Mayor', 'Inf', '11050036591282', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (304, 'Ba Grafis 1 Kontra Opini Satintel', '0000-00-00', 'Kusriyanta', 'Peltu', 'Mar', '80199', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (305, 'Ba Grafis 2  Kontra Opini Satintel', '0000-00-00', 'Sri Suryono', 'Serka', '', '523899', 'TNI AU', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (306, 'Ba Monitoring 1  Kontra Opini Satintel', '0000-00-00', 'Muhtadin', 'Pelda', 'Tku', '93887', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (307, 'Ba Monitoring 2  Kontra Opini Satintel', '0000-00-00', 'Marjuki', 'Serma', '', '21040246541082', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (308, 'Ba jaringan Agen 1  Kontra Opini Satintel', '0000-00-00', 'A. A. Raka Bajera', 'Serma', '', '31950282320875', 'TNI AD', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (309, 'Ba jaringan Agen 2  Kontra Opini Satintel', '0000-00-00', 'Tini Aji Singgih', 'Sertu', 'Mar', '119469', 'TNI AL', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (310, 'Katim Humint Satintel', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (311, 'Baops Humint Satintel', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (312, 'Ba Humint Satintel', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '\r');
INSERT INTO `tabel_personel_koopssus` VALUES (315, '2019-10-05', NULL, 'tes nama EIT', 'asssEDIT', 'tes korp EDIT', 'tes nrp EDIT', 'TNI AD EDIT', 'test tempat lahir EDUT', '2019-10-12', 'A', 'tes dikE', 'BK', 'tes domisiliE', 'testE', 'no hp 4E', 'upload/images/Penguins.jpg', 'aldi.fasive EDIT', 'tes ket EDIT');

-- ----------------------------
-- Table structure for tbl_user
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user`  (
  `ID` int(11) NOT NULL,
  `Username` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Password` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES (1, 'admin', 'd82494f05d6917ba02f7aaa29689ccb444bb73f20380876cb05d1f37537b7892', 'admin@gmail.com');

SET FOREIGN_KEY_CHECKS = 1;
