create database Ass_motobike_PRJ301
go 

use Ass_motobike_PRJ301
go 
create table Categories (
	ID int IDENTITY(1,1) primary key,
	[Name] nvarchar(255)
)
go 
create table Products (
	ID int IDENTITY(1,1) primary key,
	[Name] nvarchar(255),
	[Description] nvarchar(max),
	Price int,
	[image] nvarchar(max),
	CategoryID int foreign key references Categories(ID)
)
go 

create table requestStatus (
	requestStatusID int identity(1,1) primary key,
	statusName nvarchar(255)
)
go

create table Request (
	ID int identity(1,1) primary key,
	[Name] nvarchar(255),
	phonenumber nvarchar(20),
	[Address] nvarchar(max),
	receivedDate date,
	returnDate date,
	totalAmount int,
	statusID int foreign key references requestStatus(requestStatusID)
)
go

create table requestItems(
	ID int identity(1,1) primary key,
	requestID int foreign key references Request(ID),
	ProductID int foreign key references Products(ID),
	quantity int
)
go
-- phan loai san pham
insert into Categories (Name)
values (N'xe số'), (N'xe tay ga'), (N'xe côn tay'), (N'xe phân khối lớn');
go

--thong tin san pham
insert into Products ([Name], [Description], Price, [image], CategoryID)  
values 
(N'Honda Super Cub C125 đen', N'Thủ tục thuê xe Honda Supder Cub C125: Đặt cọc từ 100.000-500.000, yêu cầu chứng minh thư, bằng lái xe, thanh toán tiền xe sau khi kết thúc hợp đồng, cam kết theo hợp đồng vi phạm sẽ bồi thường,
Thiết kế cổ điển thanh lịch đậm chất Super CUB, Tay lái được thiết kế phù hợp giúp tư thế lái thẳng lưng cùng khả năng điều khiển xe cân bằng.', 100000, N'Honda_super_cub_C125_đen.jpg', 1),

(N'Honda Super Cub C125 xanh', N'Thủ tục thuê xe Honda Supder Cub C125: Đặt cọc từ 100.000-500.000, yêu cầu chứng minh thư, bằng lái xe, thanh toán tiền xe sau khi kết thúc hợp đồng, cam kết theo hợp đồng vi phạm sẽ bồi thường,
Thiết kế cổ điển thanh lịch đậm chất Super CUB, Tay lái được thiết kế phù hợp giúp tư thế lái thẳng lưng cùng khả năng điều khiển xe cân bằng.', 100000, N'Honda_Super_Cub_C125_xanh.jpg', 1),

(N'Honda wave alpha 110cc đen', N'Thủ tục thuê xe Honda wave alpha 110cc: Đặt cọc từ 100.000-500.000, yêu cầu chứng minh thư, bằng lái xe, thanh toán tiền xe sau khi kết thúc hợp đồng, cam kết theo hợp đồng vi phạm sẽ bồi thường,
Wave Alpha được trang bị động cơ 110cc với hiệu suất vượt trội nhưng vẫn đảm bảo tiết kiệm nhiên liệu tối ưu, cho bạn thêm tự tin và trải nghiệm tốt nhất trên mọi hành trình, thiết kế bộ tem mới phong cách đầy ấn tượng trên xe giúp bạn thể hiện sự trẻ trung, năng động, 
thu hút mọi ánh nhìn.', 100000, N'Honda_wave_alpha_110cc_đen.jpg', 1),

(N'Honda wave alpha 110cc xám', N'Thủ tục thuê xe Honda wave alpha 110cc: Đặt cọc từ 100.000-500.000, yêu cầu chứng minh thư, bằng lái xe, thanh toán tiền xe sau khi kết thúc hợp đồng, cam kết theo hợp đồng vi phạm sẽ bồi thường,
Wave Alpha được trang bị động cơ 110cc với hiệu suất vượt trội nhưng vẫn đảm bảo tiết kiệm nhiên liệu tối ưu, cho bạn thêm tự tin và trải nghiệm tốt nhất trên mọi hành trình, thiết kế bộ tem mới phong cách đầy ấn tượng trên xe giúp bạn thể hiện sự trẻ trung, năng động, 
thu hút mọi ánh nhìn.', 100000, N'Honda_wave_alpha_110cc_xám.jpg', 1),

(N'Honda Blade 2023', N'Thủ tục thuê xe Honda Blade 2023: Đặt cọc từ 100.000-500.000, yêu cầu chứng minh thư, bằng lái xe, thanh toán tiền xe sau khi kết thúc hợp đồng, cam kết theo hợp đồng vi phạm sẽ bồi thường,
Sự kết hợp hoàn hảo giữa phong cách thể thao khỏe khoắn cùng với thiết kế gọn gàng tiện lợi, vận hành mạnh mẽ và ổn định, thân thiện với môi trường và tiết kiệm nhiên liệu tối đa.', 100000, N'Honda_Blade_2023.jpg', 1),

(N'Honda Future 125FI trắng', N'Thủ tục thuê xe Honda Future 125FI: Đặt cọc từ 100.000-500.000, yêu cầu chứng minh thư, bằng lái xe, thanh toán tiền xe sau khi kết thúc hợp đồng, cam kết theo hợp đồng vi phạm sẽ bồi thường,
Thiết kế sang trọng, trẻ trung, lịch lãm và hiện đại với phối màu mới tạo những điểm nhấn ấn tượng, thu hút mọi ánh nhìn. Future 125 FI cho bạn tự tin thể hiện phong cách, phẩm chất của mình trên mọi hành trình.', 100000, N'Honda_Future_125FI_trắng.jpg', 1),

(N'Honda Future 125FI xanh', N'Thủ tục thuê xe Honda Future 125FI: Đặt cọc từ 100.000-500.000, yêu cầu chứng minh thư, bằng lái xe, thanh toán tiền xe sau khi kết thúc hợp đồng, cam kết theo hợp đồng vi phạm sẽ bồi thường,
Thiết kế sang trọng, trẻ trung, lịch lãm và hiện đại với phối màu mới tạo những điểm nhấn ấn tượng, thu hút mọi ánh nhìn. Future 125 FI cho bạn tự tin thể hiện phong cách, phẩm chất của mình trên mọi hành trình.', 100000, N'Honda_Future_125FI_xanh.jpg', 1),
(N'Yamaha exciter 150', N'Thủ tục thuê xe Yamaha exciter 150: Đặt cọc từ 100.000-500.000, yêu cầu chứng minh thư, bằng lái xe, thanh toán tiền xe sau khi kết thúc hợp đồng, cam kết theo hợp đồng vi phạm sẽ bồi thường,
Động cơ xe côn tay 150cc mạnh mẽ, làm mát bằng dung dịch, kết hợp với công nghệ phun xăng điện tử độc quyền của Yamaha cho khả năng vận hành vượt trội, tăng tốc bứt phá và tiết kiệm nhiên liệu tối ưu.', 150000, N'Yamaha_exciter_150.jpg', 1),
(N'Yamaha exciter 155', N'Thủ tục thuê xe Yamaha exciter 155: Đặt cọc từ 100.000-500.000, yêu cầu chứng minh thư, bằng lái xe, thanh toán tiền xe sau khi kết thúc hợp đồng, cam kết theo hợp đồng vi phạm sẽ bồi thường,
Động cơ xe côn tay 150cc mạnh mẽ, làm mát bằng dung dịch, kết hợp với công nghệ phun xăng điện tử độc quyền của Yamaha cho khả năng vận hành vượt trội, tăng tốc bứt phá và tiết kiệm nhiên liệu tối ưu.', 150000, N'Yamaha_exciter_155.jpg', 1),

(N'Honda SH 125i xám', N'Thủ tục thuê xe Honda SH 125i: Đặt cọc từ 100.000-500.000, yêu cầu chứng minh thư, bằng lái xe, thanh toán tiền xe sau khi kết thúc hợp đồng, cam kết theo hợp đồng vi phạm sẽ bồi thường,
Những đường nét thanh lịch, sang trọng mang hơi thở Châu Âu cùng động cơ cải tiến đột phá và công nghệ tiên tiến, SH125i mới sở hữu diện mạo đầy ấn tượng và nổi bật.', 200000, N'Honda_SH_125i_xám.jpg', 2),

(N'Honda SH 125i đen', N'Thủ tục thuê xe Honda SH 125i: Đặt cọc từ 100.000-500.000, yêu cầu chứng minh thư, bằng lái xe, thanh toán tiền xe sau khi kết thúc hợp đồng, cam kết theo hợp đồng vi phạm sẽ bồi thường,
Những đường nét thanh lịch, sang trọng mang hơi thở Châu Âu cùng động cơ cải tiến đột phá và công nghệ tiên tiến, SH125i mới sở hữu diện mạo đầy ấn tượng và nổi bật.', 200000, N'Honda_SH_125i_đen.jpg', 2),

(N'Honda Lead 125cc', N'Thủ tục thuê xe Honda Lead 125cc: Đặt cọc từ 100.000-500.000, yêu cầu chứng minh thư, bằng lái xe, thanh toán tiền xe sau khi kết thúc hợp đồng, cam kết theo hợp đồng vi phạm sẽ bồi thường,
Nâng tầm với động cơ thế hệ mới nhất của Honda eSP+ như các mẫu xe ga cao cấp, màu sắc mới hợp xu hướng, cổng sạc tiện lợi, thiết kế phía trước tinh tế, tem xe nổi bật giúp nâng tầm phong cách và tối đa trải nghiệm lái xe cho người sở hữu.', 120000, N'Honda_Lead_125cc.jpg', 2),

(N'Honda Lead 2018', N'Thủ tục thuê xe Honda Lead 2018: Đặt cọc từ 100.000-500.000, yêu cầu chứng minh thư, bằng lái xe, thanh toán tiền xe sau khi kết thúc hợp đồng, cam kết theo hợp đồng vi phạm sẽ bồi thường,
 xe LEAD 2018 được nâng tầm với động cơ thế hệ mới, màu sắc mới hợp xu hướng, thiết kế phía trước tinh tế, tem xe nổi bật giúp nâng tầm phong cách và tối đa trải nghiệm lái xe cho người sở hữu.', 120000, N'Honda_Lead_2018.jpg', 2),

(N'Honda shmode 2023', N'Thủ tục thuê xe Honda shmode 2023: Đặt cọc từ 100.000-500.000, yêu cầu chứng minh thư, bằng lái xe, thanh toán tiền xe sau khi kết thúc hợp đồng, cam kết theo hợp đồng vi phạm sẽ bồi thường,
 Sh mode luôn được đánh giá cao nhờ kiểu dáng sang trọng, tinh tế tới từng đường nét, động cơ tiên tiến và các tiện nghi cao cấp xứng tầm phong cách sống thời thượng, đẳng cấp.', 200000, N'Honda_shmode_2023.jpg', 2),

(N'Honda Vario', N'Thủ tục thuê xe Honda Vario: Đặt cọc từ 100.000-500.000, yêu cầu chứng minh thư, bằng lái xe, thanh toán tiền xe sau khi kết thúc hợp đồng, cam kết theo hợp đồng vi phạm sẽ bồi thường,
Sở hữu thiết kế thể thao vô cùng trẻ trung ấn tượng, khác biệt hẳn so với những mẫu xe tay ga phổ thông truyền thống, mang đậm dấu ấn cá nhân sành điệu.', 100000, N'Honda_Vario.jpg', 2),

(N'Honda vision 2023 đen', N'Thủ tục thuê xe Honda vision 2023: Đặt cọc từ 100.000-500.000, yêu cầu chứng minh thư, bằng lái xe, thanh toán tiền xe sau khi kết thúc hợp đồng, cam kết theo hợp đồng vi phạm sẽ bồi thường,
 Vision luôn là mẫu xe quốc dân được yêu thích, đặc biệt trong giới trẻ nhờ kiểu dáng thời trang, trẻ trung và nhỏ gọn, khả năng tiết kiệm nhiên liệu vượt trội và vô cùng bền bỉ.', 130000, N'Honda_vision_2023_đen.jpg', 2),

(N'Honda vision 2023 trắng', N'Thủ tục thuê xe Honda vision 2023: Đặt cọc từ 100.000-500.000, yêu cầu chứng minh thư, bằng lái xe, thanh toán tiền xe sau khi kết thúc hợp đồng, cam kết theo hợp đồng vi phạm sẽ bồi thường,
 Vision luôn là mẫu xe quốc dân được yêu thích, đặc biệt trong giới trẻ nhờ kiểu dáng thời trang, trẻ trung và nhỏ gọn, khả năng tiết kiệm nhiên liệu vượt trội và vô cùng bền bỉ.', 130000, N'Honda_vision_2023_trắng.jpg', 2),

(N'Honda vision 2023 xám ', N'Thủ tục thuê xe Honda vision 2023: Đặt cọc từ 100.000-500.000, yêu cầu chứng minh thư, bằng lái xe, thanh toán tiền xe sau khi kết thúc hợp đồng, cam kết theo hợp đồng vi phạm sẽ bồi thường,
Vision luôn là mẫu xe quốc dân được yêu thích, đặc biệt trong giới trẻ nhờ kiểu dáng thời trang, trẻ trung và nhỏ gọn, khả năng tiết kiệm nhiên liệu vượt trội và vô cùng bền bỉ.', 130000, N'Honda_vision_2023_xám .jpg', 2),

(N'Yamaha grande', N'Thủ tục thuê xe Yamaha grande: Đặt cọc từ 100.000-500.000, yêu cầu chứng minh thư, bằng lái xe, thanh toán tiền xe sau khi kết thúc hợp đồng, cam kết theo hợp đồng vi phạm sẽ bồi thường,
Thiết kế Yamaha Grande thừa hưởng nét thanh lịch vốn có nhưng vẫn toát lên sự hiện đại với đường cong uyên chuyển chạy dọc thân xe, mang đến vẻ đẹp vượt thời gian.', 150000, N'Yamaha_grande.jpg', 2),

(N'Yamaha janus', N'Thủ tục thuê xe Yamaha janus: Đặt cọc từ 100.000-500.000, yêu cầu chứng minh thư, bằng lái xe, thanh toán tiền xe sau khi kết thúc hợp đồng, cam kết theo hợp đồng vi phạm sẽ bồi thường,
TJanus Yamaha có thiết kế trẻ trung cùng khả năng vận hành mượt mà với mức giá rất phải chăng. Sở hữu động cơ Blue Core, hệ thống Stop & Start, tiết kiệm nhiên liệu.', 120000, N'yamaha_janus.jpg', 2),

(N'Honda Winner X', N'Thủ tục thuê xe Honda Winner X: Đặt cọc từ 100.000-500.000, yêu cầu chứng minh thư, bằng lái xe, thanh toán tiền xe sau khi kết thúc hợp đồng, cam kết theo hợp đồng vi phạm sẽ bồi thường,
WINNER X 2024 tiếp tục khẳng định chất riêng khác biệt hướng tới hình ảnh một mẫu siêu mô tô thể thao cỡ nhỏ hàng đầu tại Việt Nam. WINNER X 2024 sẵn sàng cùng các tay lái bứt tốc trên mọi hành trình khám phá.', 200000, N'Honda_WinnerX.jpg', 3),

(N'Honda CBR150R đỏ', N'Thủ tục thuê xe Honda CBR150R: Đặt cọc từ 100.000-500.000, yêu cầu chứng minh thư, bằng lái xe, thanh toán tiền xe sau khi kết thúc hợp đồng, cam kết theo hợp đồng vi phạm sẽ bồi thường,
CBR150R là đáp án cho những ai đang tìm kiếm mảnh ghép trong cuộc sống năng động. Tính thể thao và linh hoạt của CBR150R xứng danh chiến hữu đích thực giúp bạn tự tin làm chủ mọi cung đường.', 350000, N'Honda_CBR150R_đỏ.jpg', 3),

(N'Honda CBR150R 2021 đen', N'Thủ tục thuê xe Honda CBR150R: Đặt cọc từ 100.000-500.000, yêu cầu chứng minh thư, bằng lái xe, thanh toán tiền xe sau khi kết thúc hợp đồng, cam kết theo hợp đồng vi phạm sẽ bồi thường,
CBR150R là đáp án cho những ai đang tìm kiếm mảnh ghép trong cuộc sống năng động. Tính thể thao và linh hoạt của CBR150R xứng danh chiến hữu đích thực giúp bạn tự tin làm chủ mọi cung đường.', 350000, N'Honda_CBR150R_2021_đen.jpg', 3),


(N'CB500F 2022', N'Thủ tục thuê xe CB500F 2022: Đặt cọc từ 100.000-500.000, yêu cầu chứng minh thư, bằng lái xe, thanh toán tiền xe sau khi kết thúc hợp đồng, cam kết theo hợp đồng vi phạm sẽ bồi thường,
 Thiết kế trọng lượng khung xe của CB500F nhẹ nhàng, mang đến cảm giác lái nhanh nhẹn, thỏa mãn đam mê bứt phá. Phản ứng động cơ nhạy bén, cho bạn tận hưởng cảm giác hưng phấn trong từng chuyến đi.', 500000, N'CB500F_2022.jpg', 4),

(N'CB500X 2022', N'Thủ tục thuê xe CB500X 2022: Đặt cọc từ 100.000-500.000, yêu cầu chứng minh thư, bằng lái xe, thanh toán tiền xe sau khi kết thúc hợp đồng, cam kết theo hợp đồng vi phạm sẽ bồi thường,
 Mang đậm chất phiêu lưu, CB500X mạnh mẽ với các lựa chọn màu mới, cùng hệ thống giảm xóc hành trình dài và hệ thống phanh được nâng cấp, cho người lái thỏa sức trải nghiệm một chiếc xe vừa đầy sự thú vị mà vẫn an toàn.', 500000, N'CB500X_2022.jpg', 4),

(N'Honda CB1000R 2023', N'Thủ tục thuê xe Honda CB1000R 2023: Đặt cọc từ 100.000-500.000, yêu cầu chứng minh thư, bằng lái xe, thanh toán tiền xe sau khi kết thúc hợp đồng, cam kết theo hợp đồng vi phạm sẽ bồi thường,
Thiết kế hoàn toàn mới CB1000R, với đèn pha vuốt ngược tinh tế và khung phụ màu nhôm nguyên bản được trau chuốt chỉn chu, mang một nét cá tính phong trần và mạnh mẽ nổi bật.', 1300000, N'Honda_CB1000R_2023.jpg', 4),

(N'Rebel 1100 2023', N'Thủ tục thuê xe Rebel 1100 2023: Đặt cọc từ 100.000-500.000, yêu cầu chứng minh thư, bằng lái xe, thanh toán tiền xe sau khi kết thúc hợp đồng, cam kết theo hợp đồng vi phạm sẽ bồi thường,
Tự do tạo dấu ấn của riêng mình Mẫu xe Rebel 500 với khối động cơ 2 xy lanh song song mạnh mẽ, đặt gọn trong bộ khung xe với trọng tâm thấp, phong cách thiết kế tối giản đã đưa chiếc xe trở nên hấp dẫn trong mắt người lái.', 1300000, N'Rebel_1100_2023.jpg', 4),

(N'Transalp đen', N'Thủ tục thuê xe Transalp: Đặt cọc từ 100.000-500.000, yêu cầu chứng minh thư, bằng lái xe, thanh toán tiền xe sau khi kết thúc hợp đồng, cam kết theo hợp đồng vi phạm sẽ bồi thường,
 Transalp sở hữu công suất và mô-men xoắn dẫn đầu phân khúc, đặt trong bộ khung cho khả năng vận hành linh hoạt trên đường nhựa và khả năng kiểm soát tối ưu trên địa hình. Với Transalp, câu hỏi duy nhất cần được đặt ra là: Bạn muốn đi xa tới đâu?', 1500000, N'Transalp_đen.jpg', 4),

(N'Transalp tím', N'Thủ tục thuê xe Transalp: Đặt cọc từ 100.000-500.000, yêu cầu chứng minh thư, bằng lái xe, thanh toán tiền xe sau khi kết thúc hợp đồng, cam kết theo hợp đồng vi phạm sẽ bồi thường,
 Transalp sở hữu công suất và mô-men xoắn dẫn đầu phân khúc, đặt trong bộ khung cho khả năng vận hành linh hoạt trên đường nhựa và khả năng kiểm soát tối ưu trên địa hình. Với Transalp, câu hỏi duy nhất cần được đặt ra là: Bạn muốn đi xa tới đâu?', 1500000, N'Transalp_tím.jpg', 4);

go

--trang thai order 
insert into requestStatus (statusName)
VALUES
	('Opening'), -- request cua khach hang dang cho xac nhan
	('Waiting'), -- da dong y request, dang doi khach hang phan hoi nhan xe
	('Processing'), -- khach hang da nhan xe
	('Finished'), -- khach hang da tra xe
	('Rejected'), -- tu choi yeu cau thue xe cua khach hang
	('Re-opening'); -- mo lai 1 request da bi tu choi(rejected)

go

--thong tin khach hang da order va trang thai xu ly
INSERT INTO Request ([Name], [phonenumber], [Address], [receivedDate], [returnDate], [totalAmount], [statusID])
VALUES
(N'Bùi Minh Thanh', '0868123456',  N'315 Lý Thái Tổ, Kỳ Bá, Thái Bình', CAST(N'2024-02-20' AS Date), CAST(N'2024-02-20' AS Date), 200000, 1),
(N'Nguyễn Văn An', '0981456123',  N'80 Dương Khuê, Cầu Giấy, Hà Nội',CAST(N'2024-02-22' AS Date), CAST(N'2024-02-24' AS Date), 350000, 2),
(N'Phạm Thị Lan', '0227789234',  N'Thạch Hòa, Thạch Thất, Hà Nội',CAST(N'2024-02-25' AS Date), CAST(N'2024-02-26' AS Date), 150000, 1),
(N'Nguyễn Thị Hiền', '0818666123',  N'Hàm Nghi, Nam Từ Liêm, Hà Nội',CAST(N'2024-02-22' AS Date), CAST(N'2024-02-24' AS Date), 500000, 2);

go

--thong tin order (khach nao, xe gi, so luong)
INSERT INTO requestItems(requestID, ProductID, quantity)
VALUES 
(1,10,1),
(2,3,1),
(2,5,1),
(2,17,1),
(3,8,1),
(4,19,1);




