create database TinTuc
use TinTuc
create table TheLoai
(
MaTheLoai varchar(10)primary key,
TenTheLoai nvarchar(50) not null
)
create table LoaiTin
(
MaLoaiTin varchar(10)primary key,
TenLoaiTin nvarchar(50)not null,
MaTheLoai varchar(10) constraint fk_MaTL foreign key references TheLoai(MaTheLoai)
)
create table Tin
(
MaTin varchar(10)primary key,
TieuDe nvarchar(200)not null,
TomTat nvarchar(800)not null,
NgayDang date,
NoiDung nvarchar(max)not null,
HinhAnh nchar(200),
SoLanXem int,
TrangThai nvarchar(20)not null,
MaLoaiTin varchar(10) constraint fk_MaLT foreign key references LoaiTin(MaLoaiTin)
)
create table NguoiDung
(
MaNguoiDung int identity(1, 1) primary key,
HoTen nvarchar(50)not null,
TaiKhoan nvarchar(100),
MatKhau nvarchar(10),
DiaChi nvarchar(50)not null,
Email nvarchar(70),
GioiTinh nvarchar(10)not null,
NgaySinh date,
NgayDangKy date,
VaiTro int
)

create table BinhLuan
(
MaBinhLuan varchar(10)primary key,
NoiDung nvarchar(500)not null,
Ngay date,
MaTin varchar(10) constraint fk_MT foreign key references Tin(MaTin),
MaNguoiDung int
)
create table QuangCao
(
MaQC varchar(10) primary key,
TenQC nvarchar(100)not null,
HinhAnh nchar(200)
)

insert into TheLoai values('TL01',N'Bóng đá Anh')
insert into TheLoai values('TL02',N'Bóng đá Việt Nam')
insert into TheLoai values('TL03',N'Bóng đá quốc tế')
insert into TheLoai values('TL04',N'Quần vợt')
insert into TheLoai values('TL05',N'Bóng chuyền')
insert into TheLoai values('TL06',N'Thể thao')
insert into TheLoai values('TL07',N'Dữ liệu bóng đá')
insert into TheLoai values('TL08',N'Hậu trường')
insert into TheLoai values('TL09',N'Chuyện thể thao')

insert into LoaiTin values('LT01',N'Premier League','TL01')
insert into LoaiTin values('LT02',N'FA Cup','TL01')
insert into LoaiTin values('LT03',N'Đội tuyển Anh','TL01')
insert into LoaiTin values('LT04',N'V-League','TL02')
insert into LoaiTin values('LT05',N'Tuyển quốc gia','TL02')
insert into LoaiTin values('LT06',N'Bóng đá nữ','TL02')
insert into LoaiTin values('LT07',N'Tây Ban Nha','TL03')
insert into LoaiTin values('LT08',N'Đức','TL03')
insert into LoaiTin values('LT09',N'Italia','TL03')
insert into LoaiTin values('LT10',N'Champions League','TL03')
insert into LoaiTin values('LT11',N'Giải đấu','TL04')
insert into LoaiTin values('LT12',N'Gương mặt','TL04')
insert into LoaiTin values('LT13',N'Bóng chuyền','TL05')
insert into LoaiTin values('LT14',N'Cầu lông','TL06')
insert into LoaiTin values('LT15',N'Đua xe','TL06')
insert into LoaiTin values('LT16',N'Bóng rổ','TL06')
insert into LoaiTin values('LT17',N'ý kiến chuyên gia','TL07')
insert into LoaiTin values('LT18',N'Nhân vật','TL08')
insert into LoaiTin values('LT19',N'Bên lề','TL08')
insert into LoaiTin values('LT20',N'Ngôi sao','TL09')
insert into LoaiTin values('LT21',N'Câu chuyện','TL09')

insert into Tin values(
'MT01',
N'"100 năm nữa cũng không tìm được người thay Sir Alex"',
N'Tiền đạo Mexico Javier Hernandez vừa đăng đàn hết lời ca ngợi ông thầy cũ Sir Alex Ferguson.',
'04/18/2016',
N'Man United vật vã tìm người thay Sir Alex Ferguson kể từ khi chiến lược gia người Scotland nghỉ hưu nhưng không thành công với David Moyes và hiện tại là Van Gaal.
Theo Javier Hernandez, Man United sẽ rất, rất khó tìm được HLV thay Sir Alex đại tài. 
“Van Gaal là một HLV giỏi. Ông ấy có phương pháp làm việc riêng giống như rất nhiều HLV trên thế giới khác.
Trong 50 hoặc 100 năm nữa Man United cũng không thể tìm được ai thay Sir Alex bởi ông ấy là người độc nhất vô nhị. Ông ấy rất đặc biệt”, Javier Hernandez trả lời câu hỏi của phóng viên về Sir Alex cũng như nhà cầm quân hiện tại của đội bóng cũ M.U, Van Gaal.
Javier Hernandez chính là người bị Van Gaal đẩy khỏi Old Trafford dù tiền đạo Mexico tha thiết ở lại.
Tại Bayer Leverkusen, Chicharito toả sáng rực rỡ với tổng 25 bàn trên mọi mặt trận, kém 15 bàn so với tổng số 40 bàn của Man United ghi được tại Premier League đến thời điểm này. Dù bị Van Gaal đẩy khỏi Man United nhưng Chicharito không hề oán trách nhà cầm quân Hà Lan.',
'01.jpg',
'100',
N'Đăng',
'LT01')
insert into Tin values(
'MT02',
N'BẢN TIN TỐI 18/4: Sir Alex trở lại dẫn dắt Thế hệ 92',
N'Klopp phủ nhận cãi nhau với học trò; Sao Chelsea giữ chân cho Euro; Enrique nổi cáu với nhà báo; Fan Arsenal cắn bảo vệ..., là những nội dung chính trong bản tin tối nay.',
'04/18/2016',
N'Sir Alex trở lại dẫn dắt Thế hệ 92. Vào cuối năm nay, Sir Alex sẽ có cơ hội tái hợp với trò cũ David Beckham trong trận đấu từ thiện giữa Man United và Juve tại Sydney. Trận này còn có sự tham gia của một loạt huyền thoại Quỷ đỏ, trong đó có nhiều cựu cầu thủ thuộc thế hệ 92 của Man United như Phil Neville, Butt hay Ryan Giggs. 
Sao Chelsea giữ chân cho Euro. HLV Hiddink cho hay, một số cầu thủ Chelsea đã không thi đấu hết mình, đặc biệt ở trận thua Man City vì muốn giữ chân và giữ sức cho Euro 2016.
Klopp phủ nhận cãi nhau với học trò. Nhà cầm quân người Đức bác bỏ thông tin cho rằng ông đã có lời qua tiếng lại với Jordon Ibe ở trận Liverpool thắng Bournemouth 2-1.
Tôi thách Mourinho đến Leeds. Massimo Cellino, ông chủ của Leeds United vừa đưa ra tuyên bố với hàm ý rằng, ông chỉ công nhận tài năng của Jose Mourinho nếu Người đặc biệt đến Leeds United và đưa đội bóng này thăng hạng Premier League. 
Alves bị phạt. Theo AS, Dani Alves phải đá dự bị ở trận thua Valencia là do bị BHL phạt vì tung ra clip không chuẩn mực sau khi Barca bị loại khỏi Champions League.
Enrique nổi cáu với nhà báo. Sau trận thua Valencia, HLV Barca đã nổi cáu với một nhà báo khi ông này hỏi rằng có phải Barca sụp đổ trong thời gian qua là do vấn đề thể lực hay không.
Liverpool bị UEFA điều tra. UEFA đang điều tra để phạt Liverpool do họ để CĐV ném pháo hoa xuống sân Anfield ở trận thắng Dortmund tại Europa League.
Fan Arsenal cắn bảo vệ. Sự cố này xảy ra ở Emirates trong trận hoà 1-1 của Arsenal với Crystal Palace. Một CĐV Arsenal đã cắn một nhân viên an ninh khi xung đột xảy ra giữa các nhân viên an ninh và NHM Pháo thủ.',
'02.jpg',
'200',
N'Đăng',
'LT01')
insert into Tin values(
'MT03',
N'02h ngày 19/4, Stoke vs Tottenham: Leicester, hãy đợi đấy!',
N'Sau trận hòa nuối tiếc 2-2 trên sân nhà trước Arsenal ở vòng 29, HLV Mauricio Pochettino của Tottenham thừa nhận phải "cầu viện" đội bóng cũ Southampton níu chân Leicester City, nhưng họ đã không làm được. Tuy nhiên, Gà trống vẫn không từ bỏ và họ vẫn tiếp tục bám đuổi Bầy Cáo, để rồi đến tận 5 vòng sau, West Ham mới trao cơ hội cho Spurs.',
'04/18/2016',
N'Kể từ trận hòa 2-2 với Arsenal hôm 5/3, Tottenham vẫn kiên trì bám đuổi đội đầu bảng Leicester nhưng không thể thu hẹp khoảng cách, bởi đối thủ đã làm quá tốt việc của họ khi giành trọn vẹn 15 điểm trong 5 trận trước khi vòng 34 diễn ra, nhưng thầy trò Mauricio Pochettino chưa bao giờ từ bỏ giấc mơ lần đầu vô địch nước Anh sau 55 năm dài đội bóng thành London chờ đợi và nấp dưới 2 cái bóng quá lớn là Arsenal và Chelsea. Spurs vẫn chơi tốt cùng phong độ ấn tượng của Harry Kane, và mới đây nhất là chiến thắng hoành tráng 3-0 trước Man United để duy trì khoảng cách 7 điểm với Bầy Cáo. 
Tuy nhiên, trận hòa 2-2 của Leicester trước West Ham đã mở ra cơ hội lớn cho Gà trống, bởi nếu đánh bại Stoke City đêm nay, rất có thể Tottenham sẽ có một cuộc ngược dòng vĩ đại để đăng quang, bởi phía trước họ là lịch thi đấu "dễ thở" hơn rất nhiều. Nhưng trước hết, đoàn quân của Mauricio Pochettino phải làm tốt tại Britannia, bởi nếu trắng tay ở trận đấu muộn vòng 34 này, Spurs coi như chính thức giương cờ trắng.
Tottenham Hotspurs: Thời cơ là đây 
Tất nhiên là Gà trống sẽ không từ bỏ hy vọng chừng nào Leicester còn chưa chính thức đăng quang ngôi vô địch. Sau trận hòa trước West Ham ở vòng 34, Bầy cáo hiện đang tạm hơn Tottenham tới 8 điểm nhưng hy vọng lại thắp lên với Spurs bởi nếu giành được chiến thắng ở trận này, họ sẽ chính thức thu hẹp khoảng cách xuống còn 5 điểm. Trong khi mùa giải còn 4 vòng đấu nữa là kết thúc, mọi chuyện đều có thể xảy ra.
Nhưng kịch bản tệ hơn nữa với Tottenham là họ có thể bị văng ra khỏi top 3 đội dẫn đầu (3 đội dẫn đầu Premier League được tham dự trực tiếp vòng bảng Champions League) bởi Manchester City và Arsenal cũng đang bám đuổi rất gắt gao phía sau với chỉ 5 điểm ít hơn. 4 vòng đấu còn lại không kể trận đấu này, Tottenham sẽ phải đối mặt với khó khăn lớn nhất là Chelsea ở vòng 36. Đây cũng có thể coi là trận đấu quyết định nếu Leicester vẫn chưa vô địch. Và trận đấu với Stoke đêm nay như là trận đấu bản lề quyết định cho tham vọng của Spurs, bởi 3 đối thủ còn lại của thầy trò Pochettino sẽ khá dễ chịu, đó là những West Brom, Southampton và Newcastle    , trong khi Leicester phải đương đầu với cả Chelsea lẫn 2 đối thủ khó chịu khác là Everton và đặc biệt là Man United.
Chiến thắng tưng bừng 3-0 trước Man Utd là liều thuốc tinh thần cực lớn với Tottenham trước trận đấu này. Chân sút đang cùng với Jamie Vardy dẫn đầu danh sách làm bàn (22 bàn) Harry Kane và các đồng đội đã duy trì được sự ổn định suốt từ đầu mùa giải, và ở vào giai đoạn quyết định, họ chắc chắn sẽ biết cách vươn lên.
Hành quân đến sân Britannia Stadium của Stoke City, Tottenham mang đi đội hình mạnh nhất của mình với Harry Kane ở vị trí trung phong cắm, bộ 3 tiền vệ Alli, Lamela và Eriksen cùng cặp đôi tiền vệ phòng ngự Dier và Dembele. Tuy nhiên, lo ngại lớn nhất với đội khách đến từ chấn thương của Harry Kane, nhưng theo xác nhận mới nhất, chân sút người Anh đã sẵn sàng xung trận.
Đừng coi thường Stoke City 
Stoke City trên lý thuyết vẫn có thể chen chân vào top 5 đội dẫn đầu, tức nhóm dự Europa League mùa tới do hiện tại họ chỉ kém đội xếp thứ 5 trên BXH - Man Utd 9 điểm, tuy nhiên hiện thực phong độ thời gian gần đây lại không cho phép đội chủ sân Britannia Stadium làm được điều đó. Bởi vậy với thầy trò HLV Mark Hughes, vị trí hiện tại là tạm hài lòng để họ có những bước chuẩn bị cho một mùa giải mới với “bài học Leicester” của mùa giải năm nay.
Có vẻ như Stoke City đã không còn gây được khó chịu cho những đội bóng nước Anh mỗi khi phải đối đầu với họ. Trận thua 1-4 trên sân Anfield vòng đấu trước và trận thua 1-2 trước Southampton ngay trên sân nhà là minh chứng rõ ràng nhất. Còn trước đó là những thất bại trước Liverpool, Chelsea, Leicester, Man Utd.
Tuy nhiên, mọi chuyện sẽ không hề đơn giản cho mọi đối thủ khi phải hành quân tới Britannia. Nên nhớ ở mùa này, Man City, Man United, Chelsea đều phơi áo ra về, trong khi Arsenal cũng không thể đánh bại Stoke khi chỉ có được trận hòa 0-0. Như vậy, 4 đối thủ rất mạnh đã không thể chọc thủng lưới thủ thành Jack Butland, nhưng đáng tiếc, ngôi sao nằm trong danh sách 6 đề cử cho Cầu thủ trẻ xuất sắc nhất mùa này lại không thể ra sân vì chấn thương.
Chung quy lại, Stoke City thường rất khó lường khi được chơi trên sân nhà, nhưng xét về động lực, phong độ cũng như con người hiện tại, Tottenham Hotspur đương nhiên được đánh giá cao hơn hẳn đối thủ, và rất có thể cú vấp ngã của Leicester City đêm qua sẽ là liều thuốc tinh thần để đoàn quân của HLV Mauricio Pochettino bứt tốc mạnh mẽ.',
'03.jpg',
'300',
N'Đăng',
'LT01')
insert into Tin values(
'MT04',
N'Trọng tài Jon Moss lĩnh đủ sau khi đuổi Jamier Vardy',
N'Trang bách khoa toàn thư nổi tiếng Wikipedia đã quyết định đóng trang “Jon Moss” vì trọng tài sinh năm 1970 này liên tục bị chửi mắng và phần lớn những người chỉ trích ông là các CĐV Leicester.',
'04/18/2016',
N'Trang bách khoa toàn thư nổi tiếng Wikipedia cho phép các thành viên tự thay đổi nội dung. Đây là 1 trong những điều làm nên thương hiệu của họ, nhưng cũng khiến họ gặp không ít rắc rối và mới đây nó đến từ sự cố mang tên “Jon Moss” - vị trọng tài đã để lại nhiều tai tiếng sau trận cầm còi được cho là thảm họa ở trận đấu giữa Leicester City và West Ham United đêm 17/4.
Sau khi trận đấu kết thúc không lâu, trang này đã phải đóng trang thông tin của trọng tài Jon Moss và kèm theo thông báo khóa trang wiki của Moss vì ông này phải hứng chịu quá nhiều từ ngữ lạm dụng, thậm tệ hơn là chửi mắng tục tĩu sau khi ông mắc nhiều sai lầm trong việc điều khiển trận đấu giữa Leicester City và West Ham tối qua, mà tình huống nổi bật đến từ chiếc thẻ đỏ gây tranh cãi dành cho tiền đạo Jamie Vardy, để rồi sau đó đội nhà đánh mất lợi thế dẫn bàn và phải nhờ đến tiếng còi "sửa sai" của ông "vua áo đen" 46 tuổi này mới giữ được 1 điểm ở lại sân King Power. 
Về diễn biến dẫn đến sự cố mang tên “Jon Moss”. Ở trận đấu giữa Leicester hòa West Ham 2-2 tại vòng 34 Ngoại hạng Anh, trọng tài này đã mắc khá nhiều sai sót. Cụ thể, ông Moss đã rút thẻ vàng thứ 2 để truất quyền thi đấu của tiền đạo Jamie Vardy ở đầu hiệp 2 vì cho rằng tiền đạo này cố ý ăn vạ trong vòng cấm địa West Ham. Đây là tình huống không thực sự rõ ràng và theo nhận định của nhiều người chấn sút người Anh đã bị hậu vệ Ogbonna đốn ngã, nhưng thay vì đội nhà được hưởng quả phạt đền thì ông vua áo đen đã cho tay vào túi sau rút tấm thẻ đỏ cho tiền đạo Leicester. Chưa dừng lại ở đó, khi trận đấu bước vào những phút cuối, trong tình huống lộn xộn và pha kèm người thông thường của Christian Fuchs, nhưng cầu thủ West Ham bất ngỡ ngã trong vòng cấm và trọng tài Moss không ngần ngại chỉ tay vào chấm 11m.
Vì thẻ đỏ của Vardy, Leicester từ thế dẫn trước 1-0 đã bị san bằng tỉ số khi Andy Carroll thực hiện thành công quả phạt đền đó ở phút 84 và khi đội nhà chưa hết bức xúc, họ đã phải nhận tiếp đòn đau với pha dứt điểm chính xác của hậu vệ Aaron Cresswell nâng tỉ số lên 2-1 cho West Ham. Như cảm thấy "áy náy", ông Moss đã tặng cho Leicester quả phạt đền ở phút bù giờ thứ 4 của trận đấu khi Carroll chạm nhẹ vào cầu thủ đội nhà trong vòng cấm, và tiền đạo Jose Leonardo Ulloa đã tận dụng thành công gỡ hòa 2-2. Tuy nhiên, từng đó là chưa đủ để cổ động viên "Bầy sói" nguôi ngoai sự bực tức, và họ đã chửi bới, sỉ vả vị trọng tài 46 tuổi này sau trận đấu.
Hàng loạt người hâm mộ Leicester đã vào trang của Jon Moss và sử dụng các từ ngữ tục tĩu thay đổi thông tin cá nhân của trọng tài 45 tuổi này. Đứng trước tình trạng đó, Wikipedia buộc phải đóng tạm thời trang “Jon Moss”. Sau đó họ mở lại nhưng khóa chức năng chỉnh sửa của trang.
Hiện tại làn sóng phản đối trọng tài Jon Moss vẫn lan rộng trên mạng xã hội Twitter. Tuy nhiên, về phía tiền đạo Jamie Vardy, sau khi nhận thẻ vàng thứ 2 và bị đuổi khỏi sân, anh đã có những lời lẽ lăng mạ với trọng tài 46 tuổi này và chân sút người Anh không chỉ bị treo giò 1 trận mà rất có thể số 9 của Leicester sẽ bị FA phạt nặng hơn.
Sau trận hòa trước West Ham, Leicester đã có được 73 điểm sau 34 vòng đấu song khoảng cách giữa họ với Tottenham vẫn có thể bị thu hẹp xuống còn 5 điểm trong trường hợp đội bóng của HLV Mauricio Pochettino vượt qua Stoke. Phía trước Leicester City là lịch thi đấu hết sức khó khăn khi phải đương đầu với Everton, Man United và Chelsea trong 3 vòng đấu cuối cùng, và rất có thể bị mất 2 điểm trong trận đấu với West Ham sẽ là bước ngoặt trong cuộc đua vô địch, đó chính là lý do vì sau người hâm mộ The Foxes lại giận dữ đến vậy.',
'04.jpg',
'400',
N'Đăng',
'LT01')
insert into Tin values(
'MT05',
N'Arsene Wenger thừa nhận Arsenal đã ‘hết cửa’',
N'Hiện Pháo thủ đã bị Palace cầm chân và tụt hạng xuống vị trí thứ 4. Điều này khiến cho cơ hội vô địch mùa này của Arsenal gần như không thể cứu vãn nữa và chính thuyền trưởng Wenger cũng buộc phải thừa nhận điều đó với báo giới.',
'04/18/2016',
N'Nhập cuộc hoàn toàn chủ động và tỷ lệ kiểm soát bóng vượt trội, nhưng The Gunners lại tỏ ra bất lực trước hàng thủ được bố trí chơi khá kín kẽ của vị khách Crystal Palace. Tưởng như hiệp 1 sẽ kết thúc mà không có bàn thắng nào được ghi thì tới phút bù giờ thứ nhất của hiệp 1, Danny Welbeck đã bấm bóng rất kĩ thuật cho Sanchez băng xuống đánh đầu mở tỉ số cho Arsenal.
Nhưng dù dẫn trước, Arsenal một lần nữa đánh rơi chiến thắng trong cuộc tiếp đón Crystal Palace. Pha lập công của Yannick Bolasie ở phút 81 là sự trừng phạt đối với Arsenal sau những cơ hội mà đội chủ nhà đã bỏ lỡ ở hiệp hai.
Phát biểu sau trận đấu, HLV Arsene Wenger thừa nhận hết cơ hội vô địch. “Đây là một trận đấu vô cùng khó khăn đối với chúng tôi. Tuy kiểm soát được thế trận khi nắm giữ phần lớn thời gian kiểm soát bóng, nhưng chúng tôi lại không thể tận dụng điều đó để có được một chiến thắng. Thật khó để chấp nhận sự thật này.
“Sau hôm nay tôi không còn tâm trạng để mơ về danh hiệu Premier League nữa”, HLV của Arsenal thừa nhận. “Tôi sẽ phải xoa dịu đi những tổn thương về tinh thần và chuẩn bị cho trận đấu tới. Chúng tôi cần phải chiến đấu đến cùng để giành một vị trí trong top 4. Nếu có thể làm tốt hơn thế, chúng tôi sẽ làm nhưng lúc này nên dừng việc mơ mộng và tập trung vào trận đấu tiếp theo”, Giáo sư nói thêm.
Thủ thành Petr Cech cũng tỏ ra thất vọng về trận hòa của Arsenal. Anh chia sẻ: “Các đội bóng xếp trên có thể sảy chân bất cứ lúc nào và chúng tôi phải có được 3 điểm để rút gọn khoảng cách. Tuy nhiên Arsenal đã không làm được điều đó và thật đáng thất vọng. Chúng tôi phải chiến thắng tất cả các trận còn lại và chờ đợi kết quả tốt đẹp”.',
'05.jpg',
'500',
N'Đăng',
'LT01')
insert into Tin values(
'MT06',
N'Rashford lại nổ súng, Man Utd tiễn Aston Villa xuống hạng',
N'Marcus Rashford ghi bàn duy nhất giúp Man Utd giành chiến thắng 1-0 trước Aston Villa ở vòng 34 Ngoại hạng Anh.',
'04/17/2016',
N'Thế trận một chiều được Man Utd áp đặt ngay sau tiếng còi khai cuộc. Những cơ hội liên tiếp được đội chủ nhà tạo ra trước khung thành Aston Villa và có bàn mở tỷ số ở phút 32. Valencia băng xuống sát biên phải và căng ngang cho Marcus Rashford đệm bóng tung lưới thủ thành Brad Guzan. Tính đến thời điểm này, chân sút 18 tuổi ghi bàn trong năm trận cho Man Utd và đều giúp đội bóng ca khúc khải hoàn.
Bàn thắng duy nhất của Rashford giúp Man Utd thu hẹp cách biệt với Man City xuống còn một điểm trước khi người hàng xóm tới làm khách trước Chelsea.
Trong khi đó Aston Villa trở thành đội đầu tiên xuống hạng tại Ngoại hạng Anh mùa này. Aston Villa kém đội thứ 17 là Norwich tới 15 điểm khi mùa giải chỉ còn bốn vòng nữa. Đây là kết quả dự báo từ trước với đội bóng giàu truyền thống thành Birmingham khi họ liên tục làm chủ vị trí bét bảng từ giai đoạn lượt đi. Thất bại trên sân Old Trafford là trận thua thứ chín liên tiếp của Aston Villa tại Ngoại hạng Anh.
Đây là lần đầu tiên Aston Villa rời sân chơi cao nhất của bóng đá Anh từ năm 1987. Gần 30 năm đại diện của miền trung nước Anh mới phải nếm trải vị đắng xuống hạng.
Man Utd chào đón sự trở lại của Rooney và Antonio Valencia. Trong khi Rooney cầm nhịp ở tuyến giữa thì Valencia lại cho thấy sự hiệu quả bên hành lang cánh phải. Trong thế trận dồn ép, hai cầu thủ này đã mang tới đột biến. Rooney đá phạt nhanh cho Valencia băng xuống kiến tạo bàn mở tỷ số.
Depay là một trong những cầu thủ được cho đá chính trận này nhưng không thể tận dụng cơ hội để ghi điểm. Nếu như những trận đấu trước hành lang cánh trái của Man Utd luôn nguy hiểm với khả năng đi bóng của Martial thì Depay chơi vật vờ như thường thấy. Điều này khiến hướng tấn công của Man Utd chủ yếu đi từ cánh phải với bộ đôi Mata và Valencia. 
Tiền vệ người Hà Lan chỉ chơi tốt hơn trong hiệp hai. Depay có pha kiến tạo thuận lợi cho Rooney đối mặt Brad Guzan nhưng đội trưởng Man Utd lại bỏ lỡ cơ hội. Đến cuối trận, Depay đáng lẽ ghi bàn nhân đôi cách biệt thì thủ môn Brad Guzan đã đẩy bóng trúng cột dọc.
Aston Villa sẽ phải làm lại từ đầu ở Championship mùa giải tới. Ảnh: Reuters.
Aston Villa cho thấy họ buông xuôi từ ngay trước khi trận đấu bắt đầu. Đội khách chỉ có một tình huống đáng kể duy nhất trong cả hiệp một khi Jordan Ayew dứt điểm trúng chân hậu vệ Man Utd ở khu vực 16m50.
Hiệp hai chứng kiến màn trình diễn thiếu hấp dẫn của hai đội. Nhịp độ trận đấu chỉ trở nên kịch tính hơn khi Aston Villa tung Rudy Gestede vào sân. Ngay lập tức cầu thủ này khiến khung thành Man Utd hai lần chao đảo, trong đó có cú đá cận thành trúng cột dọc.
Tuy nhiên những nỗ lực khi tàn cuộc của Aston Villa không đủ giúp họ giành một điểm và làm chậm ngày xuống hạng.',
'06.jpg',
'600',
N'Đăng',
'LT02')
insert into Tin values(
'MT07',
N'Marcus Rashford lập tuyệt phẩm đưa MU vào bán kết FA Cup',
N'Bàn thắng muộn màng của Anthony Martial ở Old Trafford cách đây tròn 1 tháng đã níu kéo cơ hội tránh khỏi một mùa giải trắng tay tiếp theo của thầy trò HLV Louis van Gaal, và một tài năng trẻ khác là Marcus Rashford khiến cơ hội hội đó của Quỷ đỏ càng trở nên lớn hơn khi tuyệt phẩm của anh giúp Man United giành chiến thắng trên sân West Ham ở trận đá lại để giành quyền lọt vào bán kết FA Cup.',
'04/14/2016',
N'Mùa giải này, West Ham United của HLV Slaven Bilic tỏ ra vô cùng bản lĩnh trước Big Five (5 đội bóng lớn là Liverpool, Arsenal, Chelsea, Man City và MU) khi chưa từng để thua bất kỳ trận đấu nào với 4 điểm có được trước Arsenal, Chelsea, Man City tại Premier League, đánh bại Liverpool trong cả 3 lần gặp nhau mùa này, và cả Man United cũng hai lần bị đối thủ cầm hòa ở Old Trafford ở lượt đi Ngoại hạng Anh và gần nhất là trận hòa may mắn 1-1 tại tứ kết FA Cup nhờ bàn thắng muộn của tiền đạo Anthony Martial.
Chính vì vậy, chuyến làm khách tại Boleyn Ground ở trận đá lại với West Ham được dự báo vô cùng khó khăn với Man United, nhất là khi đoàn quân của HLV Louis van Gaal vừa trải qua cú sốc tâm lý sau thất bại 0-3 trên sân White Hart Lane của một đội bóng khác thành London, Tottenham. Nhưng quả thực, dù mới "trình làng" trong màu áo Quỷ đỏ hồi cuối tháng Hai vừa qua thôi, nhưng tiền đạo trẻ Marcus Rashford đúng như hình ảnh của Man United trong mùa giải này khi anh đang gây thất vọng và bị lãng quên thì lại tỏa sáng và mang lại cảm xúc ngọt ngào cho cổ động viên M.U, và trong trận đấu này cũng vậy, bàn thắng tuyệt đẹp của tiền đạo 18 tuổi này đã mở ra lợi thế lớn để rồi pha lập công của Marouane Fellaini đã mang về tấm vé vào bán kết FA Cup cho đội bóng áo trắng thành Manchester bằng chiến thắng 2-1 chung cuộc.
Trở lại với diễn biến ở Boleyn Ground. Trong trận đấu này, thủ quân Wayne Rooney đã trở lại nhưng HLV Van Gaal không vội tung anh vào sân mà tiếp tục tin dùng tiền đạo trẻ Marcus Rashford ở vị trí trung phong cắm, chơi 2 bên hành lang cánh vẫn là bộ đôi tiền vệ trẻ Martial và Lingard, trong khi Juan Mata được cho nghỉ để nhường chỗ cho Ander Herrera đá ở vị trí số 10, Marouane Fellaini cũng được sử dụng thay Morgan Schneiderlin để sát cánh cùng Michael Carrick ở vị trí tiền vệ trung tâm. Rất may cho MU là hậu vệ trẻ Timothy Fosu-Mensah đã kịp bình phục chấn thương để trở lại trấn giữ bên hành lang cánh phải thay "thảm họa" trận thua Tottenham, Matteo Darmian.
Không giống như thế trận chặt chẽ quen thuộc khi đối đầu với các đội bóng lớn, HLV Bilic thể hiện rõ ý đồ "tiêu diệt nhanh" một MU đang hoảng loạn sau thất bại 0-3 trên sân Tottenham, vì vậy ông cho West Ham chơi cởi mở ngay từ đầu, và Valencia đã cảnh báo hàng thủ đội khách ở ngay phút thứ 5 sau pha thoát xuống đối mặt thủ thành De Gea. Tiếc rằng pha dứt điểm quá hiền của chân sút người Colombia đã không thắng được thủ thành người Tây Ban Nha.
Như thường lệ, West Ham vẫn trông vào sự đột biến từ Dimitri Payet. Song các học trò của Louis van Gaal đã làm tốt nhiệm vụ khóa chặt ngòi nổ người Pháp trong hiệp một. Mặc dù chịu sức ép không nhỏ từ phía chủ nhà, đội bóng của Louis van Gaal vẫn biết cách gây nguy hiểm về phía khung thành đối phương nhờ lối chơi khá sắc sảo của các cầu thủ trẻ trên hàng công. 
Phút 18, Lingard có đường chuyền dọn cỗ cho Fellaini thoát xuống dứt điểm cận thành. Rất may cho West Ham là thủ môn Randolph dã kịp đẩy bóng ra ngoài. Tiếp đến chính tiền vệ người Anh có cơ hội ngon ăn ở phút 34 nhưng bỏ lỡ đáng tiếc khi đối mặt với Randolph nhưng lại dứt điểm trúng người thủ thành West Ham.
Khâu dứt điểm vô duyên trong hiệp một của Man United đã được cải thiện hoàn hảo trong hiệp hai. Và người khai thông bế tắc cho Quỷ đỏ không ai khác ngoài “gà son” Marcus Rashford. Từ một pha chuyền sai địa chỉ của Antonio ở phần sân nhà, cầu thủ M.U cướp được bóng và tổ chức tấn công nhanh. 
Rashford là người khép lại pha phối hợp ăn ý với một cú cứa lòng đẳng cấp vào góc xa khung thành West Ham. Đây là bàn thắng thứ 6 của tiền đạo 18 tuổi chỉ trong 12 trận gần đây, nhiều hơn bất kỳ cầu thủ nào khác của Man United kể từ cuối tháng 2.
Trong thế bị dẫn trước, West Ham buộc phải dâng cao và họ bắt đầu bộc lộ nhiều hơn những sơ hở. Những cơ hội liên tiếp đến với M.U và Fellaini đã tận dụng thành công một trong số đó. Tiền vệ người Bỉ lao vào dứt điểm cận thành nhân đôi cách biệt ở phút 67 sau đường căng ngang của Martial. Đây là bàn thắng đầu tiên của tiền vệ tóc xù cho MU kể từ tháng 12 năm ngoái.
West Ham cho thấy họ không phải đội bóng dễ chấp nhận đầu hàng. Tomkins rút ngắn cách biệt vào phút 79, và trong khoảng 5 phút cuối các chân sút chủ nhà liên tiếp đe dọa khung thành Man United. Thậm chí Kouyate đã đánh đầu tung lưới De Gea vào phút 89 nhưng không được trọng tài công nhận vì trước đó rơi vào thế việt vị. May mắn lại mỉm cười với thầy trò HLV Louis van Gaal ở thời điểm "nước sôi lửa bỏng".
Thắng 2-1 ngay tại London, đoàn quân của HLV Louis van Gaal sẽ tiến đến Wembley để đá bán kết với Everton vào ngày 23/4 tới. Với việc cặp bán kết còn lại là cuộc chạm trán giữa 2 hiện tượng Watford và Crystal Palace, Man United đang là ứng cử viên nặng ký nhất cho chức vô địch FA Cup mùa này.',
'07.jpg',
'700',
N'Đăng',
'LT02')
insert into Tin values(
'MT08',
N'01h00 ngày 14/04, West Ham vs Man United: Chào nhé, Van Gaal!',
N'FA Cup là cơ hội cuối cùng để nuôi hy vọng cứu vãn một mùa giải trắng tay tiếp theo Man United. Tuy nhiên, nhiệm vụ đánh bại West Ham tại Boleyn Ground thời điểm này xem ra quá sức với Quỷ đỏ. Một trận thua nữa đang chờ đợi đội bóng của Louis Van Gaal để chính thức biến mùa giải 2015/16 trở thành thảm họa.',
'04/13/2016',
N'Thảm bại 0-3 trên sân White Hart Lane của Tottenham tuần trước là đòn mạnh giáng vào tinh thần của đội bóng Louis van Gaal sau 2 trận thắng liên tiếp trước đó. Bởi trận thua đó khiến Quỷ đỏ hụt hơi rõ rệt trong cuộc đua giành vé dự Champions League mùa tới. Hiện tại, thầy trò Van Gaal mới có 53 điểm/32 vòng và đã kém vị trí thứ 4 của Man City 4 điểm. Với khả năng hiện tại của MU, không nhiều cổ động viên lạc quan của Quỷ đỏ nghĩ tới khả năng san lấp khoảng cách ấy khi chỉ còn 6 trận đấu nữa trong tay, và xem ra FA Cup là giải đấu cứu cánh để MU phần nào chuộc lỗi người hâm mộ nhà, nhưng đây cũng là nhiệm vụ khó khăn khi mà phía trước họ là thử thách mang tên West Ham United, đội bóng được đặt với biệt danh "kẻ hạ sát" ông lớn mùa giải này.
Về mặt tinh thần, đội quân của Louis Van Gaal vẫn ở lại London để vượt qua cú sốc thua 0-3 trước Spurs cách đây ít ngày và hướng đến trận đấu tại đội bóng láng giềng với Tottenham là West Ham tại Boleyn Ground. Đấy là chưa kể tờ The Times còn tiết lộ các học trò đã bắt đầu khó chịu và bất mãn vì những chỉ trích vô lý của Van Gaal nhắm vào họ. Xét về phong độ thì M.U cũng chẳng có tia hy vọng nào. Những vòng đấu vừa qua ở Premier League tiếp tục chứng kiến bộ mặt nhợt nhạt của Quỷ đỏ. Hôm 3/4, họ chơi tệ nhưng vẫn có chiến thắng 1-0 trước Everton. Nhưng rồi thì bộ mặt thật của M.U đã lộ ra tại White Hart Lane, nơi họ vừa thua tan tác 0-3 trong đó 3 bàn được ghi chỉ trong 6 phút. 
Chưa hết, khả năng đá sân khách của đoàn quân Louis Van Gaal cũng vô cùng kém cỏi. Trong 14 lần xa nhà gần nhất trên mọi đấu trường, M.U đã nhận tới 8 thất bại. Yếu bóng vía khi rời xa Old Trafford đang trở thành điểm yếu của M.U mà Van Gaal không thể khắc phục. Chẳng nói đâu xa, mùa này London bỗng trở thành "miền đất dữ" với Quỷ đỏ thành Manchester khi mà họ chưa có nổi 1 trận thắng nào và ghi được duy nhất 1 bàn vào lưới Chelsea trong trận hòa 1-1, còn lại trước trận thua 0-3 Tottenham là thất bại với tỉ số tương tự tại sân Emirates của Arsenal, và bị đối thủ yếu Crystal Palace cầm hòa 0-0.
Với phong độ tệ hại khi phải hành quân tới thủ đô London mùa này, rất ít người dám tin đội bóng của Louis van Gaal có thể đánh bại West Ham đêm nay. Trái với Quỷ đỏ, đội bóng thành London tiếp tục duy trì phong độ cao suốt từ đầu mùa bóng. Cuối tuần trước, họ còn suýt đánh bại Arsenal dù sớm bị Pháo thủ dẫn trước 2 bàn. West Ham một lần nữa cho thấy họ đang rất có bản lĩnh khi đụng độ Big Five. Mùa này, thầy trò HLV Slaven Bilic chưa một lần để thua Big Five tính trên mọi đấu trường, trong đó phải kể đến là việc đánh bại Man City, Arsenal ở Etihad và Emirates, giành 4 điểm trong 2 lần đối đầu với Chelsea, hay hạ Liverpool trong cả 2 lượt trận ở Premier League trước khi loại đội bóng của Jurgen Klopp ở đấu trường FA Cup. Ngay cả M.U, trong 2 lần gặp nhau mùa này, Quỷ đỏ cũng chỉ may mắn có được 2 trận hòa tại Old Trafford.
Cách đây 1 tháng, bàn thắng muộn của Anthony Martial đã giúp Man Utd thoát thua ngay tại Old Trafford, nhưng đêm nay, khi mà tinh thần Quỷ đỏ đang suy sụp sau thảm bại trên sân Tottenham, thầy trò HLV Louis van Gaal sẽ làm gì trước một West Ham đang hưng phấn sau trận hòa quả cảm với Arsenal. Một thất bại nữa cho M.U là điều nhiều người nghĩ đến và ngay Louis van Gaal rời chiếc ghế HLV trưởng sẽ không còn xa, bởi bị loại khỏi FA Cup sẽ như là giọt nước tràn lý khiến ông khó tại vị ở Old Trafford.',
'08.jpg',
'800',
N'Đăng',
'LT02')
insert into Tin values(
'MT09',
N'Tranh cãi chuyện MU đá lại FA Cup cùng ngày Barca và Bayern đá tứ kết C1',
N'LĐBĐ Anh (FA) vừa ấn định lịch trận đá lại vòng tứ kết FA Cup giữa West Ham và Man United sẽ diễn ra vào đêm 14/4 trên sân Upton Park (London).',
'03/23/2016',
N'Điều đáng nói là FA đã xếp lịch trận West Ham - Man United trùng với đêm diễn ra 2 trận lượt về vòng tứ kết Champions League giữa Atletico- Barcelona và Benfica -Bayern Munich. Hành động này được cho là coi thường những quy định của UEFA của FA, bởi theo quy định của LĐBĐ châu Âu, những trận đấu thuộc hệ thống giải quốc nội không được phép diễn ra vào ngày Champions League thi đấu.

Trước cặp West Ham- Man United, FA cũng tỏ ra cứng đầu khi xếp lịch trận đá lại vòng 1/8 FA Cup giữa Hull và Arsenal trùng với ngày Real Madrid đánh bại Roma và Wolfsburg hạ gục Gent ở vòng 1/8 Champions League. 

Lý do mà LĐBĐ Anh (FA) đưa ra cũng giống như cách xếp lịch đá lại vòng 5 FA Cup giữa Hull City và Arsenal (diễn ra hôm 9/3) đó là bởi trước đó trận đấu bù vòng 16 La Liga, Barcelona làm khách trên sân Sporting Gijon vào ngày thứ Tư (17/2), tức cùng thời điểm diễn ra vòng 1/8 Champions League (trận lượt đi giữa Paris Saint Germain gặp Chelsea và Benfica gặp Zenit). Hơn nữa, hiện Man United không còn lại đại diện đang chơi ở Champions League nên việc FA đưa ra quyết định này hoàn toàn không làm trái quy định của UEFA.

Hiện UEFA vẫn chưa lên tiếng về cách xếp lịch này của LĐBĐ Anh, tuy nhiên nhiều khả năng FA sẽ không bị phạt mà chỉ bị nhắc nhở trước khi LĐBĐ châu Âu có những quy định cứng rắn hơn về điều này.

Trận đấu giữa West Ham United gặp Manchester United ở trận đá lại vòng tứ kết FA Cup sẽ diễn ra vào lúc 01h ngày 14/4 trên sân Upton Park. Đội thắng trong cặp đấu này sẽ có vé đến Wembley gặp Everton, trận bán kết 2 là cuộc đối đầu giữa Watford và Crystal Palace.',
'09.jpg',
'900',
N'Đăng',
'LT02')
insert into Tin values(
'MT10',
N'Chính Thức: Diego Costa nhận án phạt từ FA do lỗi phản ứng',
N'Tổ chức FA đã xác nhận tin này trên trang web của họ hôm qua thứ hai, 14/3/2016 và Costa sẽ có thời hạn đến ngày thứ năm 17/3 để kháng cáo. Theo phát ngôn của FA thì án phạt này không liên quan đến hành vi được cho là cắn Gareth Barry của Diego Costa.',
'03/15/2016',
N'Thay vào đó, Diego Costa đã từ chối rời sân sau khi chiếc thẻ đỏ được rút ra và đã phản ứng rất dữ dội trước trọng tài chính Michael Oliver. Costa có thể sẽ còn gặp rắc rối nếu như FA điều tra ra anh có những cử chỉ không đẹp với cổ động viên của Everton trên đường rời sân vào hiệp hai trong trận đấu mà Chelsea đã để thua 0-2 trước đội chủ nhà.
Dù Gareth Barry bên phía Everton đã tiết lộ Diego Costa không hề có hành động cắn anh nhưng việc này cũng chỉ giúp cho Costa nhẹ án hơn một chút vì sau đó những phản ứng của anh đều đã được máy ghi hình trên sân thu được.

Cựu trọng tài Howard Webb cũng cho thấy rằng ông sẽ không hề ngac nhiên nếu như Diego Costa nhận án phạt sau trận đấu này, ông trả lời trên ​BBC Radio 5 live:

"Tôi sẽ rất ngạc nhiên nếu như Costa không bị phạt cho phản ứng của anh ấy sau thẻ vàng thứ hai."

"Anh ấy không chịu rời sân, tỏ thái độ giận dữ với trọng tài Michael Oliver và các trọng tài có nhiệm vụ báo cáo lại tình huống đó. Hoàn toàn có thể dẫn đến việc cấm thêm một trận nữaNhư vậy là FA đã chính thức tuyên bố án phạt dành cho tiền đạo Diego Costa về việc anh tỏ thái độ bất tuân sau chiếc thẻ đỏ nhận được tại trận Chelsea gặp Everton tứ kết cup FA hồi 13/3.',
'10.jpg',
'1000',
N'Đăng',
'LT02')
insert into Tin values(
'MT11',
N'Đội tuyển Anh: Hình bóng của người Đức… 10 năm trước',
N'Cả nước Anh đang rất hào hứng với chiến thắng 3-2 của đội tuyển Anh trước chủ nhà Đức hôm thứ Bảy vừa qua, tuy nhiên, theo đánh giá của HLV Roy Hodgson thì thời điểm này, Tam sư mới chỉ là đội tuyển Đức của... 10 năm trước.',
'03/30/2016',
N'Euro 2016 - một giải đấu lớn nữa chuẩn bị đến và như thường lệ, đội tuyển Anh nằm trong số những ứng viên được đánh giá về cơ hội đua tranh chức vô địch. Tuy nhiên, sự thực thì khi bước vào giải đấu, họ sẽ thấy mình ở vào đúng vị trí mà đã không ít lần họ đứng trước đây. 

Trận đấu tại Berlin hôm thứ Bảy, không nói tới kết quả, vẫn cần được gạch chân về sự khác biệt về khoảng cách giữa 2 đội bóng, đúng như Hodgson thừa nhận trước đó 1 ngày rằng, đội bóng của ông đang trong quá trình nỗ lực tăng cường số lượng và chất lượng để bắt kịp đội bóng vô địch thế giới của Joachim Low.
"Trên khía cạnh kinh nghiệm, chúng tôi phải chấp nhận những gì mình có. Nếu nhìn về thống kê số lần khoác áo ĐTQG của chúng tôi và người Đức thì rõ ràng là chúng tôi còn ở phía sau xa, rất xa", ông nói trong cuộc họp báo. 

Một cách rất thực tế, Hodgon thấy đội hình của ông đang ở vào đúng xuất phát điểm của đội tuyển Đức cách đây... 10 năm. "Có lẽ, chúng tôi giờ đây giống như tuyển Đức vào năm 2006. Khi đó, họ có những cầu thủ trẻ tốt mà họ tin tưởng và muốn phát triển. Đó là thời điểm mà chúng tôi nghĩ là chúng tôi đang có". 

Đó rõ ràng là một thông điệp quan trọng, bởi chính bản thân Hodgson hay những người kế nhiệm sau này sẽ phải duy trì một hành trình đúng đắn cho thế hệ cầu thủ trẻ hiện tại thay vì lại lạc lối giữa những quan điểm, để tiếp tục đi chậm hơn các đối thủ khác. 

Với đội hình hiện tại gồm các tài năng trẻ như Harry Kane, Jamie Vardy, Dele Alli và Eric Dier, họ có những lý do để hy vọng. Họ có thể tiến sâu tại giải đấu ở Pháp sắp tới, nhưng kinh nghiệm rõ ràng là thứ chưa thể bù đắp bằng nhiệt huyết. 4 cầu thủ này mới có tổng cộng 9 trận đấu trong màu áo Tam sư. 

Với việc Wayne Rooney và Joe Hart vắng mặt, Hodgson quá khó khăn để tìm một thủ lĩnh. Bởi dù Gary Cahill có lần thứ hai mang băng đội trưởng ở trận đấu tại sân Olimpia thì anh cũng chỉ mới có 40 trận đấu cho đội tuyển - 37 trận đá chính. Nên nhớ, 10 cầu thủ của đội tuyển Đức có nhiều kinh nghiệm thi đấu quốc tế hơn thế. 

Tính ra, đội hình mà Low triệu tập nhiều hơn các thành viên của đội tuyển Anh tới 407 trận đấu quốc tế, với trung bình 31 trận mỗi cầu thủ. Các cầu thủ Anh chỉ có trung bình 16 trận/cầu thủ. 

Hơn thế nữa, thành viên lớn tuổi nhất của Xe tăng Đức lúc này là Lukas Podolski cũng phải 2 tháng nữa mới bước sang tuổi 31. Đó là sự pha trộn giữa tuổi trẻ, kinh nghiệm, chất lượng và vai trò lãnh đạo mà Hodgson chỉ có thể mơ ước. 

Trong khi người Anh trở nên mơ mộng sau trận đấu tại Berlin thì ít nhất, Hodgson là người hiểu rõ rằng, chưa đến thời điểm để đội tuyển Anh giành chức vô địch châu Âu. Vẫn còn có những đội bóng lớn hơn, mạnh hơn đứng chắn trước họ, vậy nên, cũng như khi "Thế hệ vàng" cần phải đi qua World Cup 2002 và Euro 2004 để nằm trong số các ứng viên tại World Cup 2006, đội tuyển Anh hiện tại có lẽ sẽ phải chờ đến nước Nga năm 2018 để hy vọng. 

Và như đã nói trên, không có cách trưởng thành nào tốt hơn là để lứa cầu thủ trẻ được tôi luyện thường xuyên, kiên nhẫn với lý tưởng chứ không phải sống bằng sự mộng mơ sau một trận giao hữu. Nên nhớ, họ từng thắng Đức ở trận giao hữu năm 2008 trước khi bị chính đội bóng của Low loại tại Nam Phi sau đó 2 năm. Hay như trận thắng 5-1 ở Munich tại vòng loại World Cup 2002 cũng không giúp họ đi xa hơn vòng tứ kết giải đấu tại châu Á.',
'11.jpg',
'101',
N'Đăng',
'LT03')
insert into Tin values(
'MT12',
N'Jamie Vardy lại nổ súng, ĐT Anh thua ngược Hà Lan tại Wembley',
N'Sau chiến thắng 3-2 tại Berlin trước ĐT Đức cách đây ít ngày, "Những chú sư tử" Anh đã trở về mặt đất khi để thua ngược 1-2 trước đội bóng đang sa sút Hà Lan ngay trên sân nhà Wembley.',
'03/30/2016',
N'Dù tiền đạo đang lên Jamie Vardy đã lập công trong lần đầu tiên được đá chính, nhưng những sai lầm ngớ ngẩn nơi hàng thủ đã khiến đội bóng của HLV Roy Hodgson phải trả giá bằng 2 bàn thua, để rồi phải nhận thất bại 1-2 ngay tại Wembley. Trận thua này cho thấy ĐT Anh còn nhiều việc phải làm để hướng đến chức vô địch EURO lần đầu tiên trong lịch sử ở ngày hội bóng đá châu Âu mùa hè này.

So với chiến thắng 3-2 trước ĐT Đức cách đây ít ngày, HLV Roy Hodgson thay gần như toàn bộ đội hình để thử nghiệm trong trận giao hữu với Hà Lan đêm qua. Trong đó, Smalling đá cặp trung vệ cùng Stones, còn trấn giữ hành lang 2 cánh là bộ đôi hậu vệ của Tottenham Walker, Rose. Ở tuyến trên, tiền vệ đang chơi rất hay trong màu áo Leicester City Drinkwater ra mắt Tam sư trong đội hình xuất phát để sát cánh cùng người đồng đội Jamie Vardy, bên cạnh Barkley, Lallana và Sturridge.

Về phía đội khách, HLV Danny Blind đã quyết định sử dụng Memphis Depay và Afellay ngay từ đầu, trong khi thủ thành Zoet được bắt chính. Những ngôi sao đang chơi tại Anh như Bruma, Blind "con", Wijnaldum cũng có mặt trong đội hình xuất phát.

Dù có nhiều xáo trộn, nhưng ĐT Anh đã cho thấy lực lượng rất dồi dào và hùng hậu khi vẫn là đội kiểm soát thế trận tốt. Đội bóng của HLV Hodgson có tỷ lệ cầm bóng vượt trội (67%), tung ra nhiều cú dứt điểm hơn, song độ hiệu quả không cao trong ngày chân sút chủ lực Harry Kane ngồi trên băng ghế dự bị, còn Wayne Rooney không thể ra sân như dự kiến.

Trong hiệp thi đấu đầu tiên, tỷ lệ kiểm soát bóng của đội chủ nhà luôn ở mức 60%. Nhiều cơ hội nguy hiểm đã được Tam sư tạo ra về phía khung thành thủ môn Zoet. Tuy nhiên, phải tới phút 41, những nỗ lực của ĐT Anh mới được đền đáp khi Jamie Vardy mở tỷ số bằng cú dứt điểm cận thành từ đường căng ngang của Kyle Walker. Trước đó phải kể đến pha phối hợp hoàn hảo của đội bóng áo trắng. Đây là bàn thắng thứ 2 liên tiếp của tiền đạo Leicester City cho ĐT Anh.

Tuy nhiên, bước sang hiệp 2, Hà Lan đã vùng lên mạnh mẽ và may mắn có được bàn gỡ ở phút 50. Từ tình huống không mấy nguy hiểm, hậu vệ cánh Danny Rose lóng ngóng để bóng chạm tay trong vòng cấm, trao cơ hội để Janssen dễ dàng đánh bại Fraser Forster trên chấm 11m.

Sau bàn thua, ĐT Anh tiếp tục dồn ép đối phương nhưng không thể khoan thủng được hàng thủ đội khách. Dù tấn công ít nhưng Hà Lan có được điều cần thiết là may mắn để có bàn thắng.

Phút 77, lại là Jassen có đường kiến tạo để Narsingh ghi bàn ấn định chiến thắng 2-1. Tuy nhiên, ở tình huống này Jassen dường như đã phạm lỗi với John Stones trước khi chuyền bóng cho đồng đội lập công.

Thua trận 1-2 trước Hà Lan, Tam Sư tiếp tục nỗi sợ khi chạm trán "cơn lốc cam", với việc để thua 2, hòa 5 ở 7 trận đối đầu gần nhất. Tuy nhiên, nhìn chung trong trận đấu thử nghiệm tại Wembley của HLV Hodgson, cổ động viên ĐT Anh hoàn toàn có thể yên tâm trước khi các cầu thủ của họ trở về về giai đoạn cuối của mùa giải ở CLB và "hẹn gặp nhau" tại đội tuyển trong đợt tập trung vào cuối tháng 5 tới.',
'12.jpg',
'102',
N'Đăng',
'LT03')
insert into Tin values(
'MT13',
N'02h00 ngày 30/3, Anh vs Hà Lan: Sư tử trẻ gầm vang',
N'Trở về từ Berlin với chiến thắng ngược dòng ngoạn mục trước nhà ĐKVĐ thế giới Đức, thầy trò HLV Roy Hodgson tự tin mừng chiến thắng trước các cổ động viên nhà bằng cuộc tiếp đón ĐT Hà Lan tại Wembley.',
'03/29/2016',
N'Cũng bị đối thủ dẫn trước 2 bàn trong lượt trận giao hữu cách đây ít ngày, nhưng ĐT Hà Lan dù rất cố gắng nhưng không thể ngược dòng thành công và đành chấp nhận để thua Pháp 2-3 ngay tại Amsterdam. Chính vì vậy, chuyến làm khách đến xứ sương mù chạm trán một ĐT Anh rất mạnh là cơ hội để thầy trò Danny Blind lấy lại niềm tin nơi người hâm mộ, qua đó khẳng định họ đã sẵn sàng với vòng loại World Cup 2018 để sớm quên đi nỗi thất vọng với việc không giành được vé dự EURO 2016. Tuy nhiên, "lốc da cam" đã yếu đi nhiều liệu sẽ làm được gì trước "những chứ sư tử" Anh đang vô cùng hưng phấn !?

ĐT Anh: Sư tử trẻ gầm vang

Đội tuyển Anh đã kết thúc vòng loại EURO 2016 với thành tích tốt nhất trong tất cả các đại diện châu Âu, toàn thắng cả 10 trận, ghi được 31 bàn thắng và chỉ để thủng lưới có 3 bàn. Tuy nhiên, được xếp vào bảng E toàn những đội bóng ít tên tuổi, mà đối thủ khó nhằn nhất chỉ là đội bóng hạng trung ở châu Âu Thụy Sĩ thì việc có được thành tích đó là điều dễ hiểu.

Để nuôi tham vọng lần đầu tiên vô địch EURO, trước chuyến hành quân tới Pháp trong mùa hè này, ĐT Anh đã lựa chọn một loạt những tên tuổi lớn như Tây Ban Nha, Pháp, Đức, Hà Lan, Bồ Đào Nha…qua đó tích lũy kinh nghiệm cho các học trò, nhất là thế hệ cầu thủ trẻ đầy triển vọng đang chơi tuyệt hay tại Premier League. Và hai trận giao hữu vừa qua, thầy trò HLV Roy Hodgson đã khiến người hâm mộ cảm thấy yên tâm hơn với 2 chiến thắng ấn tượng trước những ứng cử viên lớn nhất cho chức vô địch EURO 2016, đó là đánh bại Pháp 2-0 và mới đây là ngược dòng hạ đương kim giữ cúp thế giới Đức. 

Có thể thấy, ĐT Anh giờ đây đang trong giai đoạn chuyển giao thế hệ với việc chia tay thế hệ vàng nhưng chẳng mấy để lại tiếng vang như Gerrad, Lampard, Ferdinand hay Terry, thay vào đó là những Dier, Lallana, Alli, Kane đang thi đấu rất tốt ở cấp độ CLB.

Thậm chí nhiều người còn lo lắng ĐT Anh đang...khủng hoảng thừa về nhân sự. Ngay cả ở vị trí trung phong, Wayne Rooney không thể lên tuyển lần này và đứng trước nguy cơ mất vị trí chính thức ở vòng chung kết mùa hè này khi mà HLV Hodgson thử nghiệm một mình Hary Kane đá cắm trong sơ đồ 4-5-1 vẫn rất tốt, còn trong bối cảnh cần thiết, ĐT Anh có thể chơi với 2 tiền đạo (như trong trận gặp Đức) với cầu thủ đang đứng thứ 2 trong danh sách làm bàn tại Premier League Jamie Vardy sát cánh cùng Kane, đó là chưa kể trong tay HLV Hodgson còn có Welbeck, Sturridge hay Walcott. Nhiều khả năng ĐT Anh sẽ chơi với 2 tiền đạo đa năng Kane và Vardy trong cuộc tiếp đón Hà Lan tại Wembley đêm nay, và có thể đó sẽ là gợi ý để HLV Roy Hodgson hướng đến sơ đồ 4-4-2 tại VCK EURO 2016.

Lốc cam suy yếu

Có thể nói “Cơn lốc màu da cam” đã thưc sự suy yếu trong vòng 1 năm trở lại đây. Có khá nhiều thay đổi trong giai đoạn chuyển giao thế hệ cùng với sự ra đi của Louis Van Gaal, Hà Lan đã không còn mạnh mẽ như trước bởi lứa thế hệ trẻ vẫn chưa thể hiện được gì nhiều trong những lần được lên tuyển. Giờ đây người ta chỉ chỉ ví dụ Hà Lan chỉ ngang bằng “áp thấp nhiệt đới”, thậm chí chỉ là cơn gió nhẹ bởi vị thế đó đã phai dần theo thời gian.

Thảm hoạ không thể giành được tấm vé tham dự vòng chung kết EURO 2016 trong một bảng đấu được xem là dễ dàng, vậy mà họ chỉ cán đích ở vị trí thứ 4 với thành tích 4 thắng, 1 hòa và 5 bại. HLV trưởng Danny Blind đã phải chịu rất nhiều áp lực từ giới truyền thông lẫn người hâm mộ. Vì vậy rất nhiều thay đổi trong những lần tập trung gần đây của ĐT quốc gia, đặc biệt là những công thần một thời như Van Persie, Robben không được gọi. Người còn lại duy nhất trong số đó chỉ là Sneider.

Trong lần tiếp đón Pháp trong trận giao hữu vừa rồi, Hà Lan cũng gây thất vọng với trận thua 2-3 và lần này lựa chọn tiếp theo sẽ là chuyến hành quân tới nước Anh. Nhìn về quá khứ, Hà Lan chưa từng thua Anh trong 6 lần chạm trán gần nhất, nhưng đó là thời điểm cơn lốc màu da cam tung hoành khắp châu Âu và cả thế giới, còn đây là lúc ĐT Anh đang hừng hực khí thế trên con đường chinh phục chức vô địch EURO lần đầu tiên trong lịch sử, trong khi đội bóng của HLV Danny Blind vẫn đang bế tắc tìm lối thoát khi thế hệ Van Persie, Robben, Sneider đã ở bên kia sườn dốc sự nghiệp.',
'13.jpg',
'103',
N'Đăng',
'LT03')
insert into Tin values(
'MT14',
N'Marcus Rashford ghi dấu ấn, U21 Anh vẫn thua bẽ bàng U21 Canada',
N'Đêm qua, dù cầu thủ đang "nổi đình nổi đám" ở Man United, Marcus Rashford đã tỏa sáng với pha kiến tạo giúp đồng đội lập công, nhưng U21 Anh đã để thua sốc U21 Canada trong trận giao hữu ngay trên sân nhà tại Doncaster.',
'03/28/2016',
N'Trong đội hình U21 Anh có rất nhiều cầu thủ đang nổi danh tại Premier League, đó là những Chuba Akpom, Calum Chambers (Arsenal), Ruben Loftus-Cheek (Chelsea), James Ward-Prowse (Southampton), Jordon Ibe (Liverpool), James Wilson (MU) hay tân binh của Leicester City Demarai Gray, nhưng ở trong lần tập trung lần này, HLV Gareth Southgate chỉ gọi duy nhất Marcus Rashford là cầu thủ đang chơi nổi bật ở giải đấu số 1 xứ sở sương mù. Tuy nhiên, từng đó đã đủ để thu hút tới hơn 3000 khán giả kéo đến Doncaster chứng kiến "những chú sư tử trẻ" thi đấu.

Bước vào cuộc tiếp đón đội bóng trẻ đến từ Trung Mỹ, Marcus Rashford và các đồng đội nhập cuộc tốt hơn và U21 Anh làm chủ thế trận ngay sau tiếng còi khai cuộc. Tuy nhiên, khi mà chân sút của Man Utd chưa kịp để lại dấu ấn, đội chủ nhà đã bất ngờ để thủng lưới sau pha dứt điểm tuyệt đẹp của hậu vệ Kadin Chung bên phía U21 Canada ở phút 13.

Sau đó, đội U21 Anh đã gây sức ép lớn. Như thường lệ, Marcus Rashford vẫn cho thấy sự năng nổ của mình. Tuy nhiên, anh không thể ghi được bàn thắng và các đồng đội của Rashford cũng không làm tốt hơn.

Thậm chí, tới phút 68, đội bóng của HLV Gareth Southgate tiếp tục để U21 Canada có bàn thắng nâng tỷ số lên 2-0 sau pha cứa lóng ngoài vòng cấm của Marco Bustos.

2 phút sau đó, Marcus Rashford đã đặt dấu ấn của mình với đường chuyền ngang cho Palmer (thuộc biên chế đội trẻ Chelsea) dứt điểm tung lưới U21 Canada.

Trong những phút còn lại, cả hai bên đều không ghi được bàn thắng. U21 Anh đành chấp nhận trận thua bẽ bàng 1-2 trước đối thủ yếu hơn rất nhiều. Thầy trò HLV Gareth Southgate sẽ còn nhiều việc phải làm nếu không muốn tiếp tục vắng bóng tại vòng chung kết U21 EURO giống như hồi mùa hè năm ngoái.

Liên quan đến Marcus Rashford và Gareth Southgate, trước đợt tập trung lần này, HLV đội U21 tuyển Anh đã thẳng thắn phát biểu rằng, nếu HLV trưởng ĐT Anh Roy Hodgson sớm đưa sao trẻ của MU lên tuyển, thì ông sẽ hủy hoại tài năng của Marcus Rashford.',
'14.jpg',
'104',
N'Đăng',
'LT03')
insert into Tin values(
'MT15',
N'Tình hình chấn thương ở ĐT Anh: Khủng hoảng trầm trọng vị trí thủ môn',
N'Do Joe Hart dính chấn thương, Jack Butland đã được HLV Roy Hodgson trao cơ hội bắt chính ở trận ĐT Anh đánh bại Đức 3-2 tại Berlin vừa qua. Nhưng thủ thành của Stoke City đã dính chấn thương mắt cá và phải rời sân giữa chừng.',
'03/28/2016',
N'HLV Roy Hodgson thông báo sau trận thắng ĐT Đức rằng: "Butland dính chấn thương mắt cá chân, nhưng tôi chưa biết mức độ ra sao. Những kiểu chấn thương này thường không nhẹ, nhưng chúng tôi hy vọng vấn đề cậu ấy gặp phải không quá nghiêm trọng".

Theo kết quả kiểm tra y tế mới được xác nhận, Jack Butland sẽ cần phải tham dự một cuộc phẫu thuật để dứt điểm chấn thương. Điều đó này có nghĩa, thủ thành số 1 của Stoke City sẽ mất ít nhất 3 tháng để hồi phục. Khoảng thời gian ấy sẽ khiến Butland không thể cùng ĐT Anh sang Pháp tham dự VCK EURO 2016 vào mùa Hè tới.

Đây là sự mất mát đáng tiếc của ĐT Anh bởi Jack Butland thi đấu rất ấn tượng ở Premier League mùa này. Với 103 lần cản phá, anh đang là thủ thành có số lần cản phá nhiều nhất ở sân chơi số 1 nước Anh, vượt qua cả những thủ thành nổi tiếng như Joe Hart, Petr Cech hay David De Gea. 

Như vậy, ĐT Anh đang đứng trước cơn khủng hoảng thủ môn trầm trọng, bởi trước Jack Butland, thủ thành số 1 của họ là Joe Hart (Man City) cũng đang chấn thương bắp chân nên không thể lên tuyển đợt này. Như vậy, trong thời gian tới HLV Roy Hodgson chỉ còn sự lựa chọn là thủ thành số 3 Fraser Forster. Được biết, Forster cũng chỉ mới trở lại sau một thời gian dài chấn thương ở CLB Southampton. Đây là cơ hội để chủ nhân của danh hiệu Cầu thủ xuất sắc nhất tháng Hai tại Premier League khẳng định mình và tìm vị trí chính thức tại VCK EURO 2016 mùa hè tới.

Về phía HLV Roy Hodgson, nhiều khả năng ông sẽ triệu tập thêm thủ môn trong thời gian tới và không còn nhiều cái tên triển vọng để nhà cầm quân 69 tuổi này đặt niềm tin. Theo SportMail, nhiều khả năng HLV Roy Hodgson sẽ triệu tập thủ thành Tom Heaton (Burnley) bên cạnh 2 sự lựa chọn hàng đầu là Joe Hart (Man City) và Fraser Forster (Southampton).

Ngoài Jack Butland, và Joe Hart, ĐT Anh cũng có nhiều trường hợp khác đối mặt khả năng không thể tham dự VCK EURO 2016 vì chấn thương như Jack Wilshere, Luke Shaw, Raheem Sterling hay Wayne Rooney.

Vào rạng sáng 30/3 tới, ĐT Anh sẽ thi đấu giao hữu với ĐT Hà Lan trên sân Wembley (London). Đến tháng 5, HLV Roy Hodgson sẽ có đợt tập trung đội tuyển tiếp theo để chuẩn bị cho 3 trận giao hữu trên sân nhà gặp Thổ Nhĩ Kỳ, Australia, Bồ Đào Nha trước khi lên đường sang Pháp dự VCK EURO 2016 vào tháng 6 tới.',
'15.jpg',
'105',
N'Đăng',
'LT03')
insert into Tin values(
'MT16',
N'HLV Lê Thụy Hải nói gì sau trận thắng trước SHB Đà Nẵng?',
N'Sau chiến thắng 3-1 của FLC Thanh Hóa trước SHB Đà Nẵng chiều qua, HLV Lê Thụy Hải cho biết nếu cứ chơi tưng bừng và tràn lên tấn công là ắt có niềm vui.',
'04/18/2016',
N'Như thethaovietnam.vn đã đưa tin, sau thất bại 0-2 trước QNK Quảng Nam tại vòng 5. Chiều qua (17/4), FLC Thanh Hóa đã khẳng định sự trở lại mạnh mẽ của mình với chiến thắng 3-1 trước SHB Đà Nẵng.

Đây là trận đấu nhiều cảm xúc với các fan hâm mộ đội chủ nhà và GĐKT Lê Thụy Hải của FLC Thanh Hóa bởi đội chủ nhà đã làm rất tốt việc kèm chặt ngòi nổ Gaston Merlo của SHB Đà Nẵng trước khi tung ra những đòn quyết định ở những phút cuối cùng của trận đấu. 

Trong trận đấu chiều qua, FLC Thanh Hóa có bàn thắng khai thông thế bế tắc trận đấu ở phút 50 với pha lập công của Quốc Phương. Tuy nhiên, đến phút 81, Merlo đã cân bằng tỷ số 1-1 cho SHB Đà Nẵng từ chấm 11m.

Nhưng ở những phút sau đó, tiền đạo người Argentina đã hoàn toàn đi bộ trên sân do gặp chấn thương. Phút 87, FLC Thanh Hóa đã có bàn thắng vươn lên dẫn trước 2-1 với pha lập công của tiền đạo vào sân thay người Lê Thanh Bình. Nhưng chỉ hơn 1 phút sau khi ghi bàn cho FLC Thanh Hóa tiền đạo 20 tuổi này đã bị truất quyền thi đấu do nhận thẻ vàng thứ hai do ăn mừng bàn thắng có phần khiêu khích.

Chiếc thẻ đỏ của Thanh Bình không phải là thẻ đỏ duy nhất trong trận đấu bởi ở phút bù giờ đầu hiệp hai, Hải Lâm của SHB Đà Nẵng cũng bị trọng tài Hoàng Anh Tuấn truất quyền thi đấu do lỗi đánh nguội với Quốc Phương.  Đến phút bù giờ thứ 5, Đình Tùng ấn định chiến thắng 3-1 cho đội nhà. Đây là bàn thắng ý nghĩa với Đình Tùng bởi nó được anh dành tặng cho con gái đầu lòng vừa sinh.

Phát biểu trong buổi họp báo sau trận đấu với SHB Đà Nẵng, HLV Hoàng Thanh Tùng của FLC Thanh Hóa cho biết: “Các cầu thủ Thanh Hóa đã chơi rất hay. Các vị trí đã hoàn thành tốt vai trò của mình. Đà Nẵng không thể triển khai tấn công khi mũi nhọn Merlo đã bị phong tỏa. Các đường bóng tạt từ hai cánh cũng bị chúng tôi chặn đứng gần hết nên Merlo không có cơ hội tỏa sáng. Trừ bàn gỡ hòa từ chấm phạt đền”.

Tuy nhiên, “kiến trúc sư trưởng” trong chiến thắng của FLC Thanh Hóa trước SHB Đà Nẵng chiều tối qua phải kể đến HLV Lê Thụy Hải – người ngồi ở chiếc ghế GĐKT của đội bóng xứ Thanh. Trao đổi với báo giới sau chiến thắng của FLC Thanh Hóa trước SHB Đà Nẵng vị chiến lược gia người Hà Đông khẳng định: “SHB Đà Nẵng suýt nữa thì đã đạt tỷ số hòa. Nhưng tôi đã nói rồi, FLC Thanh Hóa mà chơi với tinh thần quyết tâm cao thì giải quyết được nhiều vấn đề lắm. Cứ chơi tưng bừng và tràn lên tấn công là ắt có niềm vui”.

Trong bài phát biểu của mình, HLV Lê Thụy Hải cũng chỉ ra rằng trong trận đấu ngày hôm qua FLC Thanh Hóa đã phải trả giá khi có tư tưởng lui về phòng ngự. Tuy nhiên với sự có mặt của Thanh Bình trên sân đã giúp FLC Thanh Hóa lấy lại thế trận tấn công như ban đầu. Vị chiến lược gia lão làng nhấn mạnh: “Các bàn thắng ở cuối trận cũng là hợp lý. Và chúng mang lại cho tôi khá nhiều cảm xúc”.

Không chỉ giành trọn 3 điểm trước SHB Đà Nẵng, chiến thắng ở trận đấu chiều tối qua giúp FLC Thanh Hóa giành luôn vị trí thứ 2 trên bảng xếp hạng của đội bóng sông Hàn. Đây là động lực lớn của FLC Thanh Hóa trước chuyến làm khách của XSKT Cần Thơ vào cuối tuần tới tại vòng 7.',
'16.jpg',
'201',
N'Đăng',
'LT04')
insert into Tin values(
'MT17',
N'HLV Lê Huỳnh Đức nói gì sau thất bại trước FLC Thanh Hóa?',
N'HLV Lê Huỳnh Đức của SHB Đà Nẵng tỏ ra khá tiếc nuối khi không giữ được 1 điểm trong chuyến làm khách của FLC Thanh Hóa tại vòng 6 V.League 2016.',
'04/18/2016',
N'Cuộc đối đầu giữa FLC Thanh Hóa và SHB Đà Nẵng chiều ngày 17/4 là trận cầu tâm điểm của vòng 6 V.League 2016 bởi đây là hai ứng viên nặng ký trong cuộc đua vô địch mùa giải năm nay. 

Với FLC Thanh Hóa, trận đấu này có ý nghĩa rất quan trọng bởi họ đang quyết tâm khẳng định sự trở lại sau thất bại 0-2 trước QNK Quảng Nam tại vòng 5 vừa qua. Trước một SHB Đà Nẵng đang bay cao trên bảng xếp hạng, trong trận đấu chiều qua, ban lãnh đạo FLC Thanh Hóa đã tổ chức tấn công và phòng ngự hợp lý và bắt chết được cây săn bàn số 1 của SHB Đà Nẵng là tiền đạo Gaston Merlo.

Sau khi hòa nhau không bàn thắng ở hiệp thi đấu thứ nhất, FLC Thanh Hóa đã có được bàn thắng khai thông thế bế tắc trận đấu ở phút 50 với pha lập công của Quốc Phương. Tuy nhiên, phút 81, tỷ số là 1-1 khi Đình Đồng phạm lỗi với Merlo của SHB Đà Nẵng trong vòng cấm. Từ chấm 11m, tiền đạo người Argentina không bỏ lỡ cơ hội của mình giúp SHB Đà Nẵng cân bằng tỷ số 1-1.

Mặc dù vậy, trong những phút sau đó, Merlo đã hoàn toàn đi bộ trên sân do chấn thương. Tuy nhiên, HLV Lê Huỳnh Đức không thể thay thế bởi đã sử dụng hết quyền thay người. Trong thế trận chấp người, SHB Đà Nẵng đã nhận thêm hai bàn thua nữa ở phút 87 và phút bù giờ thứ 5 của hiệp hai để rồi nhận thất bại chung cuộc 3-1.

Thất bại trước FLC Thanh Hóa lượt trận chiều qua là trận thua thứ hai liên tiếp trên sân khách của SHB Đà Nẵng. Trước đó, tại vòng 4, đoàn quân của HLV Lê Huỳnh Đức cũng đã gục ngã trước tân binh Hà Nội – đội đã đổi tên thành Sài Gòn FC từ vòng 5 vừa qua.

Phát biểu với báo giới sau trận đấu chiều tối qua, HLV Lê Huỳnh Đức tỏ ra tiếc nuối khi SHB Đà Nẵng lỡ cơ hội rời sân Thanh Hóa với 1 điểm trong tay: “Tôi rất tiếc khi Đà Nẵng đã không giữ được 1 điểm. Xét một cách công bằng thì đáng nhẽ, tỷ số chỉ nên hòa thôi”, HLV Lê Huỳnh Đức mở đầu bài phát biểu của mình.

“Nhưng các cầu thủ của tôi đã đánh mất thành quả chỉ trong vài phút cuối do họ đã bị căng cứng tâm lý. Song tôi chả trách họ. Dẫu sao tay trắng rời sân Thanh Hóa cũng là nỗi buồn lớn rồi”, cựu danh thủ của ĐT Việt Nam cho biết thêm.

Cùng với thất bại ở trận đấu chiều qua, SHB Đà Nẵng còn bị thiệt quân khi Hải Lâm bị truất quyền thi đấu do lỗi đánh nguội với Quốc Phương ở những phút bù giờ đầu tiên trong hiệp hai. Hiện đang có những thông tin cho biết tiền đạo Merlo cũng phải nghỉ thi đấu tới 1 tháng. Đây thực sự là những vấn đề khiến HLV Lê Huỳnh Đức đau đầu bởi SHB Đà Nẵng có lịch thi đấu khó khăn thời gian tới.',
'17.jpg',
'209',
N'Đăng',
'LT04')
insert into Tin values(
'MT18',
N'SHB Đà Nẵng mất Gaston Merlo 1 tháng?',
N'Quyết tâm cạnh tranh chức vô địch V.League 2016 của SHB Đà Nẵng đang đối mặt thách thức lớn khi tiền đạo Gaston Merlo có thể phải nghỉ thi đấu 1 tháng tới.',
'04/18/2016',
N'Tiền đạo người Argentina của SHB Đà Nẵng đã dính chấn thương khá nặng trong trận thua 1-3 trước FLC Thanh Hóa tại vòng 6 V.League 2016 chiều ngày 17/4 vừa qua.

Phút 81 ở trong trận đấu chiều qua, chính Gaston Merlo là người đã mang về cho SHB Đà Nẵng quả penalty và trên chấm 11m, tiền đạo người Argentina đã không bỏ lỡ cơ hội ghi bàn thắng cân bằng tỷ số 1-1 cho SHB Đà Nẵng. 

Tuy nhiên, Merlo pha va chạm với Đình Đồng trước đó đã khiến Merlo bị đau. Tiền đạo người Argentina đã tập tễnh trên sân trong suốt thời gian còn lại của trận đấu do SHB Đà Nẵng không còn quyền thay đổi người.

Với việc Merlo chỉ đi bộ trên sân, FLC Thanh Hóa đã gây sức ép và có được 2 bàn thắng nữa để ấn định thắng lợi chung cuộc 3-1. Với 3 điểm giành được trước SHB Đà Nẵng, FLC Thanh Hóa đã trở lại với mạch thắng và chứng minh thất bại trước QNK Quảng Nam tại vòng 5 chỉ là một cú vấp ngã đáng tiếc. Đội bóng xứ Thanh cũng chiếm luôn vị trí thứ 2 trên bảng xếp hạng của SHB Đà Nẵng sau vòng đấu này.

Với Gaston Merlo, sau trận đấu với FLC Thanh Hóa, tiền đạo người Argentina đã được đội ngũ nhân viên y tế của SHB Đà Nẵng chẩn đoán bị chấn thương lật cổ chân.

Theo đội ngũ nhân viên y tế của SHB Đà Nẵng, hiện tại cổ chân của Merlo bị sưng to và trong tình trạng đau đớn nên chưa thể xác định được mức độ chính xác. Mặc dù vậy, các thành viên trong ban lãnh đạo CLB xác định tiền đạo người Argentina chỉ có thể trở lại thi đấu sau 1 tháng nữa.

Gaston Merlo là người đã ghi 6/7 bàn thắng của SHB Đà Nẵng ở mùa giải năm nay. Do đó không có sự phục vụ của tiền đạo người Argentina trong những vòng đấu tới sẽ là vấn đề đau đầu với HLV Lê Huỳnh Đức và ban lãnh đạo đội bóng sông Hàn.',
'18.jpg',
'212',
N'Đăng',
'LT04')
insert into Tin values(
'MT19',
N'Lý do Lê Thanh Bình của FLC Thanh Hóa bị truất quyền thi đấu',
N'Trong trận đấu với SHB Đà Nẵng chiều 17/4, tiền đạo Lê Thanh Bình của FLC Thanh Hóa đã bị truất quyền thi đấu ở phút 89. Một quyết định khiến Thanh Bình cũng như fan hâm mộ của đội bóng xứ Thanh cảm thấy bất ngờ. Vậy lý do bắt nguồn từ đâu?',
'04/18/2016',
N'Trận đấu giữa FLC Thanh Hóa gặp SHB Đà Nẵng là trận cầu tâm điểm tại vòng 6 V.League 2016 lượt trận ngày 17/4. Trong trận đấu chiều qua, cả FLC Thanh Hóa và SHB Đà Nẵng đã có những tình huống ăn miếng trả miếng về phía khung thành của nhau. 

Tuy nhiên, cục diện trận đấu đã thay đổi khi tiền đạo Gaston Merlo của SHB Đà Nẵng gặp chấn thương sau khi kiếm được quả penalty cho SHB Đà Nẵng ở phút 81. Và chính anh đã thực hiện thành công, giúp đội khách gỡ hòa 1-1. Nhưng ngay sau đó, anh bị lật cổ chân khá nặng và phải đi tập tễnh trên sân trong suốt những phút còn lại của trận đấu do SHB Đà Nẵng đã hết quyền thay người.

Tận dụng cơ hội này, FLC Thanh Hóa đã đẩy cao đội hình tấn công và phút 87 FLC Thanh Hóa được hưởng quả đá phạt góc bên phía cánh trái. Mai Tiến Thành đưa bóng về góc xa cho Đình Tùng ở tư thế trống trải băng vào dứt điểm cận thành. Bóng đập vào người thủ môn Văn Hưng dội ra tạo điều kiện để Lê Thanh Bình - tiền đạo vào sân thay người phút 56 đặt lòng tung lưới SHB Đà Nẵng.

Đây là bàn thắng đầu tiên của Thanh Bình trong một trận đấu chính thức kể từ tháng 7/2015. Do đó tiền đạo 20 tuổi đã ăng mừng rất cuồng nhiệt. Anh chạy vòng qua cầu môn rồi hướng về phía Ban huấn luyện để chia vui với các đồng đội cũng như HLV trưởng và GĐKT Lê Thụy Hải.

Thế nhưng khi trở lại sân thì bất ngờ Thanh Bình phải nhận thẻ vàng thứ 2 từ phía trọng tài Hoàng Anh Tuấn (trước đó anh nhận 1 thẻ vàng ở phút 59 vì pha cài chân với Mai Thanh Nam). Do đó, Thanh Bình đã buộc phải rời sân chỉ sau 1 phút có được bàn thắng đưa FLC Thanh Hóa vươn lên dẫn trước. Rất may là FLC Thanh Hóa đã có thêm 1 bàn thắng nữa ở phút bù giờ cuối cùng do công của Đình Tùng để ấn định chiến thắng đầy bất ngờ 3-1.

Giải thích về chiếc thẻ vàng thứ 2 của Thanh Bình trong trận đấu với SHB Đà Nẵng chiều tối qua, giám sát trận đấu Cao Đình Khôi cho biết Thanh Bình đã ăn mừng có phần quá đà khi chạy ngang và sát khu vực nhóm CĐV đội khách cộng với một số động tác ăn mừng khác.  

Chiếc thẻ đỏ của Thanh Bình không phải là thẻ đỏ duy nhất ở trận đấu chiều qua. Theo đó, ở những phút bù giờ đầu tiên của hiệp 2, Trần Hải Lâm của SHB Đà Nẵng cũng phải nhận thẻ đỏ sau khi cầu thủ này có pha đánh nguội khi cố ngăn cản Quốc Phương đi bóng tấn công. Việc thi đấu với thế trận chấp người đã khiến SHB Đà Nẵng phải nhận bàn thua thứ 3 ở phút bù giờ thứ 5 của trận đấu.',
'19.jpg',
'277',
N'Đăng',
'LT04')
insert into Tin values(
'MT20',
N'Hoàng Thịnh dùng toàn bộ tiền thưởng làm từ thiện',
N'Theo đó, tiền vệ Ngô Hoàng Thịnh của FLC Thanh Hóa đã dùng toàn bộ số tiền thưởng cho Bàn thắng đẹp nhất tháng 2 & 3 để làm từ thiện.',
'04/18/2016',
N'Như thethaovietnam.vn đã đưa tin, tiền vệ Ngô Hoàng Thịnh của FLC Thanh Hóa đã được ban tổ chức V.League 2016 vinh danh khi giành chiến thắng trong cuộc binh chọn Bàn thắng đẹp nhất tháng 2 & 3. 

Đây là pha lập công của Hoàng Thịnh ở phút 62 trận đấu giữa FLC Thanh Hóa và Than Quảng Ninh tại vòng 4 V.League 2016 trên sân Cẩm Phả. Hoàng Thịnh có một pha nã đại bác rất đẹp mắt vào lưới đội chủ nhà, góp phần giúp FLC Thanh Hóa đánh bại Than Quảng Ninh với tỷ số chung cuộc 4-2.

Trước khi trận đấu giữa FLC Thanh Hóa và SHB Đà Nẵng tại vòng 6 chiều qua diễn ra, ban tổ chức V.League 2016 đã tổ chức lễ trao thưởng cho Hoàng Thịnh. Sau khi nhận giải thưởng do BTC trao tặng, tiền vệ xứ Nghệ đã quyết định trao toàn bộ số tiền thưởng 5 triệu đồng cho công tác xã hội tại Thanh Hóa.

Đây không phải lần đầu tiên tuyển thủ ĐT Việt Nam làm từ thiện như vậy. Khi còn khoác áo SLNA, anh thường xuyên cùng hội CĐV SLNA tham gia các chương trình thiện nguyện hướng tới những hoàn cảnh khó khăn ở quê nhà.

Trước đó, khi thời gian V.League 2016 nghỉ để ĐT Việt Nam thi đấu tại vòng loại World Cup 2018, các cầu thủ và ban lãnh đạo của CLB FLC Thanh Hóa đã tích cực tham gia các hoạt động từ thiện tại địa phương. Trong thời gian này, HLV và cầu thủ CLB bóng đá FLC Thanh Hóa đã đến thăm và trao quà từ thiện cho 3 hộ gia đình có hoàn cảnh đặc biệt khó khăn trên địa bàn tỉnh.',
'20.jpg',
'239',
N'Đăng',
'LT04')
insert into Tin values(
'MT21',
N'HLV Kiatisak quyết cùng Thái Lan đánh bại Nhật Bản trên sân nhà',
N'Kết quả bốc thăm vòng loại thứ 3 tại World Cup 2018 đã đưa Thái Lan rơi vào bảng đấu “tử thần”, tuy nhiên phát biểu với báo giới, HLV Kiatisak tỏ ra rất tự tin và tiếp tục đặt mục tiêu cùng các học trò giành vé tới Nga trong hai năm tới.',
'04/13/2016',
N'Chiều 12/4, tại Kuala Lumpur, Malaysia, LĐBĐ châu Á đã tiến hành bốc thăm chia bảng vòng loại cuối cùng World Cup 2018 khu vực châu Á. Những lá thăm may rủi đã đưa ĐT Thái Lan – đại diện duy nhất của khu vực ĐNÁ rơi vào bảng B, một bảng đấu “tử thần” với sự góp mặt của những đội rất mạnh là Nhật Bản, Australia, Iraq, Saudi Arabia và UAE. Trong khi đó, bảng A gồm các đại diện là  Iran, Hàn Quốc, Uzbekistan, Trung Quốc, Qatar, Syria. 

Theo đánh giá của giới chuyên môn trong nước, Thái Lan sẽ không dễ để hoàn thành mục tiêu giành vé tham dự ngày hội bóng đá lớn nhất hành tinh tổ chức tại Nga vào năm 2018. Bởi Australia đang là nhà ĐKVĐ châu Á, Nhật Bản từng 5 lần liên tiếp dự World Cup, trong khi đó Saudi Arabia cũng đã có tới 4 lần đoạt vé dự ngày hội bóng đá lớn nhất hành tinh.

Mặc dù Thái Lan rơi vào bảng đấu đầy khó khăn. Tuy nhiên, phát biểu sau lễ bốc thăm HLV Kiatisak không hề tỏ ra nao núng mà khá bình tĩnh nhận định: "Tháng 10 tới sẽ vô cùng khó khăn. Thái Lan có 2 chuyến làm khách liên tiếp trước UAE và Iraq, các đối thủ cạnh tranh trực tiếp chiếc vé World Cup”.

“Nhưng trước tiên, chúng ta phải chơi tốt ở 2 trận gặp Nhật Bản và Saudi Arabia và tháng 9. Tôi hi vọng vào một thắng lợi trên sân nhà trước ĐT Nhật Bản", vị chiến lược gia trẻ tuổi khẳng định.

Theo kế hoạch, vòng loại cuối cùng sẽ bắt đầu từ ngày 1/9/2016 và kết thúc ngày 5/9/2017. Các đội sẽ thi đấu vòng tròn hai lượt đi và về để chọn ra 2 đội nhất, nhì mỗi bảng giành vé tham dự World Cup 2018. Trong khi đó hai đội xếp hạng 3 sẽ thi đấu play-off với đại diện của khu vực Bắc Trung Mỹ và CONCACAF để chọn ra đội đại diện cho châu Á tranh vé đến Nga.

Để chuẩn bị cho vòng loại thứ 3 World Cup 2018, ban huấn luyện đội tuyển Thái Lan đã lên kế hoạch sang Anh học hỏi kinh nghiệm từ 2 đội bóng Man City và Leicester. Bên cạnh đó, LĐBĐ Thái Lan cũng dự định tổ chức giải đấu góp mặt Uzbekistan và Croatia nhằm tăng cường kinh nghiệm.',
'21.jpg',
'333',
N'Đăng',
'LT05')
insert into Tin values(
'MT22',
N'Vòng loại cuối World Cup 2018: Thái Lan vào bảng tử thần',
N'Lá thăm may rủi đã đưa Thái Lan nằm cùng bảng với Australia, Nhật Bản, UAE, Saudi Arabia và Iraq tại vòng loại thứ 3 World Cup 2018 khu vực châu Á.',
'04/12/2016',
N'Chiều nay tại thủ đô Kuala Lumpur, Malaysia, LĐBĐ châu Á đã tiến hành bốc thăm chia bảng vòng loại cuối cùng World Cup 2018 khu vực châu Á.

Theo kết quả bốc thăm, tuyển Thái Lan đã rơi vào bảng B với rất nhiều những đội bóng mạnh gồm Australia, Nhật Bản, UAE, Saudi Arabia và Iraq.

Có thể xem bảng B là bảng tử thần tại vòng loại cuối cùng này. Bởi Australia đang là nhà ĐKVĐ châu Á, Nhật Bản từng 5 lần liên tiếp dự World Cup, trong khi đó Saudi Arabia cũng đã có tới 4 lần đoạt vé dự ngày hội bóng đá lớn nhất hành tinh.

Còn ở bảng A, Iran, đội bóng từng nằm cùng bảng với Việt Nam ở vòng loại thứ 2 sẽ phải chạm trán Hàn Quốc, Uzbekistan, Qatar, Trung Quốc và Syria. Dù vậy, so với bảng của Thái Lan thì bảng đấu này nhẹ ký hơn rất nhiều.

Theo kế hoạch, vòng loại cuối cùng sẽ bắt đầu từ ngày 1/9/2016 và kết thúc ngày 5/9/2017. Các đội sẽ thi đấu vòng tròn hai lượt đi và về để chọn ra 2 đội nhất, nhì mỗi bảng giành vé tham dự World Cup 2018. Trong khi đó hai đội xếp hạng 3 sẽ thi đấu play-off với đại diện của khu vực Bắc Trung Mỹ và CONCACAF để chọn ra đội đại diện cho châu Á tranh vé đến Nga.',
'22.jpg',
'423',
N'Đăng',
'LT05')
insert into Tin values(
'MT23',
N'ĐT Thái Lan đổi mục tiêu vì bất lợi ở vòng loại World Cup 2018?',
N'Với việc chỉ đứng nhóm 6, ĐT Thái Lan bị đánh giá sẽ gặp nhiều bất lợi tại vòng loại thứ 3 World Cup 2018 tới đây.',
'04/12/2016',
N'Lễ bốc thăm chia bảng vòng loại thứ 3 World Cup 2018 khu vực châu Á sẽ diễn ra chiều nay tại Kuala Lumpur (Malaysia). Đại diện duy nhất của khu vực ĐNÁ tham dự giải đấu này là ĐT Thái Lan đang nhận được sự chú ý bởi đây là lần thứ 2, Thái Lan giành quyền vào đến vòng loại cuối cùng tranh vé dự World Cup sau năm 2002. 

Cách đây không lâu Liên đoàn bóng đá Thái Lan đã khẳng định ưu tiên số 1 của đội bóng xứ sở chùa vàng là cạnh tranh một tấm vé tham dự World Cup 2018. Và họ chỉ có thể cử đội trẻ tham dự AFF Cup 2016. Với tuyên bố này, giới chuyên môn cho rằng Việt Nam sẽ được hưởng lợi từ việc Thái Lan tập trung cho đấu trường World Cup.  Đây là giải đấu mà đoàn quân của HLV Nguyễn Hữu Thắng được VFF giao nhiệm vụ giành quyền vào chơi trận chung kết.

Tuy nhiên, mục tiêu của ĐT Thái Lan có thể sẽ thay đổi sau lễ bốc thăm chia bảng vòng loại thứ 3 World Cup 2018 khu vực châu Á sẽ diễn ra chiều nay. Với việc đứng trong nhóm 6 cùng với Syria (hạng 110), do đó, đội bóng xứ chùa vàng chắc chắn sẽ phải chạm trán những đối thủ mạnh hàng đầu khu vực như Nhật Bản, Iran, Australia hay Hàn Quốc. Bên cạnh đó, những đối thủ còn lại mà Thái Lan có thể chạm trán như Saudi Arabia, UAE, Qatar… đều được đánh giá nhỉnh hơn thầy trò Kiatisak. Giới chuyên môn nhận định Thái Lan sẽ gặp nhiều khó khăn bởi dưới thời của HLV Kiatisak, đội bóng xứ sở chùa vàng chưa thắng được một đội bóng lớn nào của châu lục trong một trận đấu chính thức.

Theo quy định 12 đội vào vòng loại thứ 3 sẽ được chia vào 2 bảng, mỗi bảng có 6 đội. Các đội thi đấu vòng tròn một lượt, hai đội đứng đầu mỗi bảng sẽ giành vé dự World Cup 2018. Hai đội đứng 3 gặp nhau, đội thắng gặp đại diện của khu vực Bắc, Trung Mỹ và Caribbean để tranh vé vớt đến Nga.

Các trận đấu tại vòng loại thứ 3 World Cup 2018 diễn ra từ ngày 1/9/2016 đến 5/9/2017. Để chuẩn bị cho hành trình sắp tới, Kiatisak và Liên đoàn bóng đá Thái Lan (FAT) đang có kế hoạch cho ĐTQG thi đấu một loạt trận giao hữu chất lượng. Họ dự định sẽ sang Colombia thi đấu với đội chủ nhà. Ngoài ra, FAT còn tính mời Croatia, Uzbekistan, Costa Rica… sang tham dự King’s Cup, dự kiến diễn ra vào giữa năm nay.',
'23.jpg',
'407',
N'Đăng',
'LT05')
insert into Tin values(
'MT24',
N'Thái Lan không coi ĐT Việt Nam là địch thủ ở AFF Cup 2016?',
N'ĐT Việt Nam dường như không phải là địch thủ của AFF Cup 2016 khi trong phát biểu của mình với báo giới, HLV Kiatisak Senamuang của Thái Lan không hề nhắc đến đoàn quân của HLV Nguyễn Hữu Thắng.',
'04/12/2016',
N'Sau khi giành quyền vào vòng loại thứ 3 World Cup 2018, Liên đoàn bóng đá Thái Lan và HLV Kiatisak Senamuang đã lên kế hoạch quyết giành một tấm vé tham dự World Cup 2018 tổ chức tại Nga. Để hoàn thành mục tiêu này, Liên đoàn bóng đá Thái Lan đã đưa ra tuyên bố chỉ sử dụng đội hình trẻ tham dự AFF Cup 2016 bởi thời gian diễn ra giải đấu này sát ngày thi đấu của đoàn quân HLV Kiatisak Senamuang tại vòng loại thứ 3 World Cup 2018. 

Việc Thái Lan tuyên bố “bỏ” AFF Cup 2016 được đánh giá là cơ hội để đoàn quân của HLV Nguyễn Hữu Thắng có thể hoàn thành mục tiêu giành quyền vào chơi trận chung kết và có thể giành chức vô địch ở giải đấu này.

Tuy nhiên, trong bài phát biểu của mình với tờ Siam Sport của Thái Lan gần đây, HLV Kiatisak Senamuang không nhắc tới ĐT Việt Nam của HLV Nguyễn Hữu Thắng trong cuộc đua vô địch. Theo HLV Kiatisak Senamuang thì Myanmar và Philippinesmới là những đối thủ chính của đội bóng xứ sở chùa vàng trong mục tiêu bảo vệ thành công chức vô địch AFF Cup 2016:

“Tôi không chắc về việc Thái Lan có thể bảo vệ thành công chức vô địch AFF Suzuki Cup được hay không”, HLV Kiatisak mở đầu bài phát biểu với tờ Siam Sport.

Giải thích rõ hơn về điều này, HLV Kiatisak cho biết “Sự thăng tiến của các đội bóng trong khu vực có thể nhận thấy rõ. Đặc biệt là kết quả ở trận đấu cuối cùng vòng loại thứ 2 World Cup 2018 khu vực châu Á khi Philippines thắng ngược 3-2 trước CHCDND Triều Tiên còn Myanmar hòa Lebanon với tỷ số 1-1. Rõ ràng Thái Lan cần phải tôn trọng những đối thủ tại giải”.

Những lo lắng của HLV Kiatisak có thể sẽ là một vấn đề mà HLV Hữu Thắng và ĐT Việt Nam cần quan tâm trước khi bước vào tranh tài tại AFF Cup 2016 bởi ĐT Việt Nam đang trong quá trình xây dựng lại lực lượng sau khi chia tay cựu HLV Miura. Dưới thời HLV Hữu Thắng, ĐT Việt Nam đã thay đổi lối chơi từ bóng dài, bóng bổng thiên về thể lực sang lối chơi bóng ngắn, trung bình là chủ yếu, cố gắng kiểm soát bóng; tấn công và phòng ngự đồng bộ, phát huy lối chơi tập thể. Để nhận được sự tôn trọng của những đối thủ, đặc biệt là Thái Lan, có thể đoàn quân của HLV Nguyễn Hữu Thắng sẽ cần phải nỗ lực nhiều hơn nữa.

Ở hai trận đấu cuối cùng tại vòng loại World Cup 2018, ĐT Việt Nam dù có thắng lợi 4-1 trước Đài Loan Trung Quốc, nhưng ngay sau đó đã để thua 0-1 trước ĐT Iraq để rồi phải nói lời tạm biệt với giấc mơ World Cup.

Trong khi đó, trên bảng xếp hạng FIFA tháng 4/2016 được công bố cách đây vài ngày với chiến thắng ấn tượng trước ĐT Triều Tiên, Philippines lại tăng tới 19 bậc để vươn lên vị trí thứ 116 thế giới – thứ hạng cao nhất trong lịch sử, qua đó giữ vững ngôi đầu ở đấu trường Đông Nam Á. Thái Lan với vị trí 119 đứng vị trí thứ 2 khu vực  và với vị trí 144, ĐT Việt Nam của HLV Nguyễn Hữu Thắng đứng vị trí thứ 3.

ĐT Philippines đã có sự tiến bộ nhanh chóng thời gian gần đây sau khi tiến hành nhập tịch nhiều cầu thủ đang thi đấu tại Anh, Thụy Sỹ, Iran, CH Séc hay Áo. Với những nguồn lực tiềm tàng ấy, đoàn quân của HLV Thomas Dooley đang tỏ rõ tham vọng muốn giành chức vô địch AFF Cup 2016 cũng như một tấm vé tham dự VCK Asian Cup 2019.

Ngoài Philippines, Myanmar cũng được đánh giá sẽ là đối thủ đáng gờm ở đấu trường Đông Nam Á. Những cầu thủ từng tham dự U20 World Cup 2015 sẽ là nòng cốt trong tay của HLV Gerd Zeise trong mục tiêu chinh phục ngôi vương khu vực.',
'24.jpg',
'401',
N'Đăng',
'LT05')
insert into Tin values(
'MT25',
N'ĐT Việt Nam tập huấn nước ngoài để chinh phục vàng AFF Cup 2016?',
N'Trong cuộc họp Hội đồng Huấn luyện viên Quốc gia vừa được tổ chức, HLV Nguyễn Hữu Thắng cho biết ĐT Việt Nam được tăng thêm các đợt tập huấn nước ngoài.',
'04/12/2016',
N'Cuộc họp Hội đồng Huấn luyện viên Quốc gia vừa được tổ chức tại thành phố Đà Nẵng hôm 10/4 vừa qua. Trong cuộc họp này các thành viên tham dự đã tham gia bàn luận những vấn đề của bóng đá Việt Nam xảy ra trong thời gian từ đầu năm đến nay, đồng thời trình kế hoạch cụ thể cho thời gian tới. 

Trong cuộc họp HLV trưởng ĐTQG Nguyễn Hữu Thắng đã báo cáo kết quả tập trung đợt 1 và kế hoạch chuẩn bị của đội tuyển nam Quốc gia trong năm 2016. Hiện ĐT Việt Nam đang xây dựng lối chơi bóng ngắn, trung bình là chủ yếu, cố gắng kiểm soát bóng; tấn công và phòng ngự đồng bộ, phát huy lối chơi tập thể.

Về kế hoạch cho các giải đấu còn lại trong năm 2016, ĐT Việt Nam sẽ tập trung trở lại vào ngày 23/5 tới để đá giao hữu với Syria trên sân nhà Mỹ Đình.

Sau đó, đội sẽ đi Myanmar để tham dự giải tứ hùng bao gồm Myanmar, Singapore, Hong Kong (Trung Quốc) và Việt Nam. Đợt tập trung cuối cùng của ĐT Việt Nam trong năm 2016 diễn ra vào cuối tháng 9 khi đội tuyển chuẩn bị cho AFF Cup 2016. Đây là đợt tập trung dài nhất của đoàn quân HLV Nguyễn Hữu Thắng.

Trong phần ý kiến của mình, HLV Nguyễn Hữu Thắng kiến nghị bổ sung HLV thể lực cho các đội tuyển trẻ, tăng thêm các đợt tập huấn nước ngoài và tìm đối thủ cọ xát chất lượng cao cho ĐTQG trong lần tập trung tới: “Chúng tôi đang bàn VFF về đợt tập huấn cuối cùng là sẽ có nhiều hơn những trận đấu giao hữu để cọ xát. ĐT có thể đi tập huấn nước ngoài, thi đấu với những đối thủ có đẳng cấp cao để làm sao cho tâm lý, thể lực, kỹ chiến thuật hoàn thiện, có sự gắn kết trong lối chơi tập thể, tạo điểm rơi tốt nhất cho AFF Cup 2016”.

Dù kiến nghị ĐT Việt Nam cần tăng cường thêm các chuyến tập huấn nước ngoài để tăng cường vấn đề thể lực và chuyên môn. Tuy nhiên,  chia sẻ với báo giới về mục tiêu của ĐT Việt Nam trong năm 2016, HLV Nguyễn Hữu Thắng khẳng định: “VFF không đặt ra mục tiêu phải vào chung kết mà phải thi đấu vì màu cờ sắc áo, cống hiến hết mình. Đừng bao giờ nói là phải vượt qua người Thái mà ở khu vực hiện tại, có rất nhiều đối thủ mạnh như Philippines, Singapore, Myanmar hay Malaysia. Hãy chiến đấu từng trận, từng trận một. Đừng nghĩ vượt qua Thái mà hãy nghĩ đến vượt qua đối thủ mà mình gặp”.',
'25.jpg',
'456',
N'Đăng',
'LT05')
insert into Tin values(
'MT26',
N'Tuyển nữ Việt Nam suýt tạo nên bất ngờ trước CHDCND Triều Tiên',
N'Tuyển nữ Việt Nam đã suýt tạo nên bất ngờ trước CHDCND Triều Tiên – đối thủ được đánh giá cao hơn ở lượt trận thứ 3 tại vòng loại thứ 3 Olympic Rio 2016.',
'03/05/2016',
N'Sau hai thất bại liên tiếp trước Trung Quốc và Australia, chiều qua đội tuyển nữ Việt Nam của HLV Mai Đức Chung bước vào lượt trận thứ 3 vòng loại thứ 3 Olympic Rio 2016 diễn ra tại Osaka, Nhật Bản. 

Đối thủ của ĐT Việt Nam ở trận đấu này là CHDCND Triều Tiên – một đối thủ cũng được đánh giá cao hơn rất nhiều. Dù vừa trải qua thất bại kinh hoàng 0-9 trước Australia, nhưng ở trận đấu chiều qua Kiều Trinh cùng các đồng đội đã có một màn trình diễn hoàn toàn khác. Thậm chí có những lúc đội tuyển nữ Việt Nam đã đẩy đối thủ vào tình huống phải chống đỡ rất vất vả.

Huỳnh Như đã bỏ lỡ cơ hội đáng tiếc để ghi bàn thắng mở tỷ số cho ĐT nữ Việt Nam ở phút thứ 6 khi phá được bẫy việt vị của đối phương. Trong khi đó, với quyết tâm giành điểm số đầu tiên tại giải đấu năm nay, các học trò của HLV Mai Đức Chung đã khiến những ý đồ lên bóng của CHDCND Triều Tiên gặp rất nhiều trở ngại.

Phút 85, Bùi Thị Như để bóng chạm tay đáng tiếc trong vòng cấm dẫn đến quả 11m cho CHDCND Triều Tiên. Tuy nhiên, thủ môn Kiều Trinh đã sửa sai cho đồng đội sau khi cản phá thành công của sút của Kim Un-hyang.

Những tưởng ĐT nữ Việt Nam sẽ giành được điểm đầu tiên ở vòng loại thứ 3 Olympic Rio 2016. Tuy nhiên, tiếc thay khi ở phút 90 từ một tình huống lộn xộn Ju Hyo-sim đã nhanh chân chớp cơ hội để làm tung lưới thủ môn Kiều Trinh ghi bàn duy nhất của trận đấu.

Với 3 thất bại liên tiếp, cơ hội để ĐT nữ Việt Nam có thể giành vé đến Brazil vào tháng 8 đã hoàn toàn khép lại. Và vào tối ngày 7/3, tuyển nữ Việt Nam sẽ có trận thứ 4 ở vòng loại thứ 3 Olympic Rio 2016 khi gặp đội chủ nhà Nhật Bản, trên sân Kincho (Osaka).',
'26.jpg',
'535',
N'Đăng',
'LT06')
insert into Tin values(
'MT27',
N'HLV ĐT nữ Australia nói gì sau thắng lợi ‘hủy diệt’ ĐT Việt Nam?',
N'Sau chiến thắng hủy diệt ĐT nữ Việt Nam ở lượt trận thứ 2 vòng loại Olympic 2016 chiều ngày 2/3, HLV Alen Stajcic của ĐT Australia khẳng định đội bóng của ông vẫn còn những điểm yếu cần phải khắc phục.',
'03/03/2016',
N'Sau chiến thắng ấn tượng 3-1 trước chủ nhà nữ Nhật Bản ở lượt trận mở màn vòng loại thứ 3 Olympic 2016. Chiều qua, đội tuyển nữ Australia tiếp tục có chiến thắng “hủy diệt” trước đội tuyển nữ Việt Nam ở lượt trận thứ hai. 

Ở trận đấu này, Kyah Simon đã lập hat-trick bàn thắng với nhưng tình huống lập công ở phút 17, 38 và 43và cùng với pha lập công của Emily Gielnik phút thứ 10 và Alana Kennedy để giúp đội bóng xứ sở chuột túi dẫn trước 5-0 sau 45 phút thi đấu đầu tiên.

Trong hiệp hai, Australia tiếp tục ghi được 4 bàn thắng nữa nhờ các pha lập công của Sykes (64’), Egmond (68’), Heyman (77’) và Polkinghorn (85’) để ấn định thắng lợi chung cuộc 9-0 trước ĐT nữ Việt Nam.

Với chiến thắng tưng bừng này, đội tuyển Australi đang đứng vị trí số 1 trên bảng xếp hạng sau hai lượt trận với 6 điểm tuyệt đối. Trong khi đó, đội tuyển nữ Việt Nam chưa ghi được bàn thắng nào và đứng vị trí cuối cùng. Đoàn quân của HLV Mai Đức Chung sẽ phải nỗ lực rất nhiều nếu muốn có cơ hội giành vé đến Brazil vào tháng 8 tới.

Sau chiến thắng hủy diệt trước ĐT nữ Việt Nam chiều qua, phát biểu với báo giới trong buổi họp báo sau trận đấu, HLV Alen Stajcic của đội tuyển Australia cho biết: “Rõ ràng đó là một kết quả tốt và một màn trình diễn tuyệt vời trước một đội bóng được đánh giá là sẽ gây ra nhiều khó khăn cho chúng tôi”.

“Tôi rất hài lòng về kết quả trận đấu, chúng tôi ghi được 9 bàn và không để thủng lưới. Tuy nhiên, đội bóng của chúng tôi vẫn còn những điểm yếu cần phải cải thiện”.

“6 điểm là không đủ để giúp Australia giành vé đến Rio vào tháng 8, chúng tôi vẫn còn nhiều trận đấu ở phía trước. Chúng tôi đã có hai trận đấu tốt ở vòng đấu này, nhưng chúng tôi biết rằng 3 đối thủ phía trước của Australia là rất khó đánh bại. Và các cầu thủ của chúng tôi không được phép mắc bất kỳ sai sót nào ở những trận đấu này”.

“Cho đến nay, các cầu thủ của chúng tôi đã thể hiện được sức mạnh về thể lực và tinh thần, chúng tôi đã có một quá trình chuẩn bị cho giải đấu rất chu đáo. Tuy nhiên, điều quan trọng là các cầu thủ của chúng tôi cần nghỉ ngơi và phục hồi thể lực sau hai trận đấu. Chúng tôi biết rằng những trận đấu phía trước là rất khó khăn”, HLV Alen Stajcic của đội tuyển Australia cho biết thêm.',
'27.jpg',
'543',
N'Đăng',
'LT06')
insert into Tin values(
'MT28',
N'HLV Mai Đức Chung nói gì sau trận thua đậm của ĐT nữ Việt Nam?',
N'Sau thất bại đậm của ĐT nữ Việt Nam trước Australia chiều 2/3, HLV Mai Đức Chung cho biết các học trò của mình cần phải hạn chế những sai lầm ở những trận đấu tiếp theo.',
'03/03/2016',
N'Chiều ngày 2/3, đội tuyển nữ Việt Nam bước vào lượt trận thứ 2 vòng loại thứ 3 Olympic 2016. Đối thủ của đoàn quân HLV Mai Đức Chung là Australia – đội bóng được đánh giá rất cao sau khi giành chiến thắng 3-1 trước ĐT nữ Nhật Bản ở lượt trận mở màn và đang đứng vị trí số 1 trên bảng xếp hạng. 

Trước khi bước vào trận đấu chiều qua, HLV Mai Đức Chung thừa nhận đội tuyển nữ Việt Nam có nhiều bất lợi về thể hình và thể lực trước đại diện xứ sở chuột túi. HLV Mai Đức Chung cũng không giấu mục tiêu đội tuyển nữ Việt Nam sẽ bước vào trận đấu với lối chơi phòng ngự phản công để hạn chế sức mạnh của đối phương.

Tuy  nhiên, kế hoạch của HLV Mai Đức Chung cùng các học trò đã sớm bị phá sản khi Emily Gielnik giúp ĐT nữ Australia có được bàn thắng khai thông thế bế tắc ngay phút thứ 10. Ở những phút sau đó, Kyah Simon đã lập hat-trick với các bàn thắng ở phút 17, 38 và 43 cùng pha lập công của Alana Kennedy ở phút 19 đã giúp đại diện xứ sở chuột túi vươn lên dẫn trước 5-0 sau 45 phút đầu tiên.

Đây thực sự là một kết qủa nằm ngoài dự tính của HLV Mai Đức Chung cùng các học trò. Và nó cũng làm phá sản luôn kế hoạch thi đấu phòng ngự phản công của đội tuyển nữ Việt Nam.

Bước vào hiệp hai, đội tuyển nữ Việt Nam đẩy cao đội hình nhằm tìm kiếm bàn thắng danh dự. Tuy nhiên, khi những nỗ lực của đoàn quân HLV Mai Đức Chung chưa phát huy hiệu quả ĐT nữ Việt Nam đã nhận thêm 4 bàn thua nữa.

Những người đã ghi bàn cho Australia trong hiệp hai lần lượt là Sykes (64’), Egmond (68’), Heyman (77’) và Polkinghorn (85’) để ấn định thắng lợi chung cuộc 9-0 trước ĐT nữ Việt Nam.

Phát biểu trong buổi họp báo sau trận đấu, HLV Mai Đức Chung của ĐT nữ Việt Nam cho biết: “Australia đã tự tin hơn và mạnh hơn chúng tôi. Các cầu thủ của ĐT nữ Việt Nam đã nỗ lực thi đấu với phong độ tốt nhất của mình, nhưng Australia cho thấy họ mạnh hơn chúng tôi trong những tình huống không chiến”.

“Australia đã thi đấu đầy quyết tâm và khiến các cầu thủ của chúng tôi mất sự tự tin. Ở trận đấu tiếp theo, chúng tôi phải cố gắng để thay đổi cách tiếp cận trận đấu và phát huy tốt hơn những tình huống bóng thấp để cố gắng tránh mắc những sai lầm gặp phải trong trận đấu với Australia”.

Với hai trận thua liên tiếp và chưa có được bàn thắng nào, đội tuyển nữ Việt Nam đang đứng vị trí cuối cùng trên bảng xếp hạng. Với kết quả này, thầy trò HLV Mai Đức Chung sẽ phải nỗ lực tối đa ở 3 trận đấu tới nếu muốn hy vọng giành vé tới Rio de Janeiro vào tháng 8 tới đây.',
'28.jpg',
'256',
N'Đăng',
'LT06')
insert into Tin values(
'MT29',
N'ĐT nữ Việt Nam sớm bị phá sản về lối chơi trước Australia',
N'Hy vọng về một kết quả khả quan trước Australia của đoàn quân HLV Mai Đức Chung đã không thể thành hiện thực khi ĐT nữ Việt Nam gục ngã trước đối thủ với tỷ số rất đậm 0-9.',
'03/03/2016',
N'Chiều ngày 2/3, đội tuyển nữ Việt Nam bước vào lượt trận thứ 2 vòng loại thứ 3 Olympic Rio Brazil 2016. Sau thất bại 0-2 trước ĐT Trung Quốc ở trận mở màn, đội tuyển nữ Việt Nam tiếp tục đối mặt với một thử thách khó khăn nữa là Australia, đội đang đứng vị trí số 1 trên bảng xếp hạng sau lượt trận đầu tiên. 

Trước một đối thủ được đánh giá mạnh hơn, ĐT nữ Việt Nam bước vào trận đấu với lối đá phòng ngự phản công như đã thể hiện trước ĐT Trung Quốc trận mở màn. Tuy nhiên, ý đồ chiến thuật này của đoàn quân HLV Mai Đức Chung đã sớm bị phá sản khi Australia có được bàn thắng mở tỷ số ngay phút thứ 10 do công của Gielnik.

Có được bàn thắng vào lưới đội tuyển Việt Nam, các cô gái của Australia thi đấu tự tin hơn và đến phút thứ 10 và 19 lần lượt Simon và Kennedy ghi tên lên bảng tỷ số để giúp đội bóng xứ sở chuột túi vươn lên dẫn trước 3-0. Một kết quả nằm ngoài dự tính của đoàn quân HLV Mai Đức Chung và các fan hâm mộ Việt Nam trước khi trận đấu diễn ra.

Việc thua thiệt về thể hình và thể lực trước đối thủ khiến Minh Nguyệt và các đồng đội tiếp tục nhận bàn thua thứ 4 và thứ 5 ở các phút 38 và 43. Với những tình huống lập công này Simon đã hoàn tất cú hat-trick của mình trong trận đấu

Để cho Australia dẫn trước 5-0 chỉ sau hiệp thi đấu thứ nhất, bước vào hiệp hai, đội tuyển nữ Việt Nam đã đẩy cao đội hình tìm kiếm bàn thắng danh dự. Tuy nhiên, khi những nỗ lực của Minh Nguyệt chưa thực hiện được, đội tuyển nữ Việt Nam tiếp tục nhận thêm 4 bàn thua nữa.

Những người đã ghi bàn cho Australia trong hiệp hai lần lượt là Sykes (64’), Egmond (68’), Heyman (77’) và Polkinghorn (85’) để ấn định thắng lợi chung cuộc 9-0 trước ĐT nữ Việt Nam.

Với 2 trận toàn thắng, ĐT Australia đang tạm dẫn đầu bảng khu vực châu Á. Trong khi đó, do đã thua cả 2 trận đầu tiên và chưa ghi được bàn nào, ĐT nữ Việt Nam tạm xếp ở cuối BXH. Với kết quả này, thầy trò HLV Mai Đức Chung sẽ phải nỗ lực tối đa ở 3 trận đấu tới nếu muốn hy vọng giành vé tới Rio de Janeiro vào tháng 8 tới đây.',
'29.jpg',
'567',
N'Đăng',
'LT06')
insert into Tin values(
'MT30',
N'ĐT nữ Việt Nam: Có một nỗi đau còn hơn cả "rổ đựng bóng"',
N'Chiều 2.3, những hình ảnh về trận thua tan tác 0-9 của ĐT bóng đá nữ Việt Nam trước Australia tại Nhật Bản không được chuyển về Việt Nam. Rất, rất nhiều người hâm mộ chờ đợi được xem, được chia sẻ, được nghẹn ngào, thổn thức cùng các học trò HLV Mai Đức Chung, nhưng đã không có cơ hội thể hiện tình cảm ấy…',
'03/02/2016',
N'Tại sao những người hâm mộ chân chính lại mong được xem trận đấu ĐT nữ Việt Nam đối đầu với Australia như thế? Đơn giản, nhiều người biết, ngay từ trước khi lên đường sang Nhật Bản dự vòng loại thứ 3 Olympic 2016, các cô gái của chúng ta đã rất buồn. Họ đã chiến đấu để ghi tên mình vào vòng tuyển chọn cuối cùng xác định 2 suất dự Olympic 2016. Vậy mà đổi lại, trong một bản tin thể thao của Đài truyền hình Việt Nam (VTV), tuyển nữ Việt Nam có cảm giác mình là “đồ ăn hại”. Người ta nói, có đáng không khi phải tốn tiền tỷ cho một chuyến “du lịch”?  

Các cô gái từng được tung hô, từng được vinh danh khi mang về những tấm HCV SEA Games, xoa dịu nỗi đau, sự thất vọng mà bóng đá nam mang đến đã bị đối xử như thế!  

Bỏ qua những lời cay nghiệt của VTV, rất nhiều người hâm mộ Việt Nam đã chịu khó mày mò xem trận ra quân giữa ĐT nữ Việt Nam – Trung Quốc chiều 29.2 qua một kênh truyền hình Trung Quốc và thật sự hài lòng. Những Minh Nguyệt, Huỳnh Như, Chương Thị Kiều, Bùi Thị Như… đã chiến đấu bằng tất cả năng lượng mà mình có được trong kết quả thua chung cuộc 0-2. Sự quả cảm của các học trò HLV Mai Đức Chung đã “lay động” cả những phóng viên, bình luận viên Trung Quốc. Họ không hiểu tại sao, chỉ trong vỏn vẹn hơn 1 tháng, một đội bóng từng thua dễ họ 0-8 lại có thể “lột xác” đến vậy! Câu trả lời chỉ đơn giản: Ý chí, tinh thần của ĐT nữ Việt Nam là thứ mà không phải đội bóng đẳng cấp nào cũng có được!  

Bao nhiêu sinh lực, ý chí của ĐT nữ Việt Nam đã dồn cả vào trận ra quân như một cách chứng minh mình đến Nhật Bản không hề để “du lịch”. Và chiều 2.3, chuyện họ thua Australia đến 0-9 chẳng làm ai bất ngờ. Chẳng ai có thể trách họ được cũng như cách ĐT futsal Việt Nam đã từng thua đậm Iran, Thái Lan lần lượt ở bán kết, trận tranh HCĐ giải châu Á vừa qua, sau khi đã thăng hoa trong trận gặp Nhật Bản để giành vé dự World Cup. 

Phía trước, có thể ĐT nữ Việt Nam sẽ còn thua đậm 3 “đại tỷ” khác là CHDCND Triều Tiên, Nhật Bản, Hàn Quốc và trắng tay ra về, liệu lúc đó, có ai đó ra sân bay đón họ?  

Nhưng dù sao, đó chỉ là câu chuyện của tương lai. Ngay bây giờ, người hâm mộ Việt Nam đang rất cần được xem các cô gái thể hiện mình mà không được: “V.League có thực sự hấp dẫn đến thế không khi 1 vòng đấu có lúc có tới 4 đài thi nhau quay, còn khi đội tuyển nữ thi đấu nơi đất khách quê người thì chúng tôi lại không hề được biết các cháu chơi bóng ra sao. Chuyện VTV làm tin cho rằng đội tuyển nữ sang Nhật Bản theo kiểu “du lịch”, tốn tiền là rất phản cảm rồi. Riêng việc truyền trực tiếp các trận đấu của bóng đá nữ, tôi thấy trách nhiệm đầu tiên thuộc về VFF. Có ai ở VFF đã thực sự ngỏ ý muốn phối hợp với VTV để mang những trận đấu tại giải tới với người hâm mộ chưa?”, CĐV nổi tiếng người Hải Phòng Văn Trần Hoàn nói lên tiếng nói đại diện cho người hâm mộ nước nhà.  

Còn với người viết, việc không được truyền hình trực tiếp thực sự là một nỗi đau không chỉ với các cô gái đá bóng, mà còn là sự nghiệt ngã nói chung của hầu hết các VĐV khác. Chẳng được như các chàng trai đá bóng đâu, các cô gái đá bóng, các VĐV ở các môn khác rất hiếm khi nhận được một bức hình đẹp khi thi đấu, nữa là chuyện lên sóng trên kênh quảng bá của VTV.  

Câu chuyện rất gần thôi, tại SEA Games 2015 ở Singapore, đội U23 Việt Nam thua tơi tả mà vẫn được truyền trực tiếp về nước. Trong khi đó, bên trong nhà thi đấu môn đấu kiếm, các kiếm thủ đã phải “gặt vàng” trong thầm lặng. Một VĐV đấu kiếm khi đó đã nói với tôi: “Cùng là VĐV, sao bất công đến vậy hả anh?”.',
'30.jpg',
'848',
N'Đăng',
'LT06')
insert into Tin values(
'MT31',
N'Giới thiệu 24 đội dự EURO 2016: Tây Ban Nha - Ngai vàng lung lay',
N'Với đội hình đồng đều và sở hữu nhiều tiền vệ sáng tạo bậc nhất thế giới, nhà đương kim giữ cúp 2 mùa liên tiếp Tây Ban Nha vẫn được kỳ vọng sẽ tiến sâu tại VCK EURO 2016 trên đất Pháp vào mùa hè này.',
'03/29/2016',
N'Không còn một nhạc trưởng tài ba Xavi Hernandez, một thủ lĩnh thực thụ ở tuyến phòng ngự Carles Puyol hay "thánh Iker" đã qua thời kỳ đỉnh cao phong độ, và cũng chẳng còn sở hữu cặp song sát trứ danh David Villa - Fernando Torres, nhưng nhà vô địch EURO 2 mùa liên tiếp (2008 và 2012) vẫn còn đó những chân chuyền thượng hạng như "phù thủy" David Silva, Cesc Fàbregas, Juan Mata hay Andrés Iniesta, cùng với giàn ngôi sao đẳng cấp đang khoác áo những câu lạc bộ hàng đầu châu Âu, Tây Ban Nha vẫn được đánh giá là một trong những ứng cử viên sáng giá cho danh hiệu cao quý nhất tại ngày hội bóng đá châu Âu mùa hè 2016, bên cạnh đội chủ nhà Pháp và Đức, Italia hay Anh. 

Con đường đến tới nước Pháp

Sau thảm bại tại World Cup 2014 với tư cách là nhà ĐKVĐ bị loại ngay sau vòng bảng, Tây Ban Nha tiếp tục chịu ảnh hưởng tâm lý khi khởi đầu khá tệ tại vòng loại EURO 2016, đỉnh điểm là trận thua Slovakia với tỉ số 1-2, qua đó đứt mạch 36 trận bất bại tại vòng loại. Tuy nhiên, thầy trò Vicente Del Bosque nhanh chóng lấy lại đẳng cấp của đội bóng thống trị toàn châu Âu và thế giới trong vòng 6 năm với 2 chức vô địch EURO và 1 lần đăng quang ở World Cup bằng việc toàn thắng 8 trận cuối cùng để kết thúc ở vị trí nhất bảng, nhiều hơn đội xếp thứ hai 5 điểm.

Giành vé tới EURO 2016, những chướng ngại vật mà La Roja cần vượt qua trên con đường bảo vệ "ngai vàng" là CH Séc, Croatia và Thổ Nhĩ Kỳ ở bảng D. Đây đều là những đối thủ bị đánh giá yếu hơn hẳn Tây Ban Nha, ngoại trừ Croatia của Luke Modric, Mateo Kovacic, Ivan Rakitić - những ngôi sao đang tỏa sáng tại La Liga trong màu áo Real và Barca.

Tây Ban Nha vs CH Séc (Tiệp Khắc cũ): Thắng 7, hòa 2, thua 7
Tây Ban Nha vs Croatia: Thắng 3, hòa 1, thua 1
Tây Ban Nha vs Thổ Nhĩ Kỳ: Thắng 8, hòa 4, thua 1. 

Thành tích ở các kỳ EURO: Vô địch (1964, 2008 và 2012)

Tây Ban Nha cùng với Tây Đức/Đức (vô địch 1972, 1980 và 1996) là hai đội bóng giàu thành tích nhất lịch sử EURO. Năm 1964, ngay ở kỳ EURO thứ hai và cũng là lần đầu tiên đăng cai, La Roja đã lên ngôi nhờ màn trình diễn chói sáng của Luis Suarez. 

Tuy nhiên, Tây Ban Nha phải chờ tới 44 năm sau mới có chức vô địch thứ hai nhờ bàn thắng của Fernando Torres vào lưới đội tuyển Đức trong trận chung kết EURO 2008.

Ở kỳ EURO gần nhất, Tây Ban Nha trở thành đội bóng đầu tiên trong lịch sử bảo vệ thành công chức vô địch bằng chiến thắng tưng bừng 4-0 trước Italia trong trận chung kết.

HLV trưởng: Vicente Del Bosque

Vicente Del Bosque nằm trong danh sách những chiến lược gia thành công nhất trong lịch sử bóng đá thế giới. Giai đoạn dẫn dắt Real Madrid, ông đã giúp đội bóng Hoàng gia 2 lần vô địch La Liga và 2 lần đăng quang tại Champions League. Những năm tiếp theo, Del Bosque chỉ có duy nhất một mùa giải dẫn dắt Besiktas cho đến khi thay thế Luis Aragones dẫn dắt Tây Ban Nha sau EURO 2008.

Dưới sự dẫn dắt của “Ngài râu kẽm”, Tây Ban Nha bảo vệ thành công chức vô địch EURO cũng như bước lên đỉnh thế giới vào năm 2010. Tuy nhiên, tại World Cup 2014, thầy trò Del Bosque thất bại thảm hại khi hàng loạt trụ cột như Xavi, Casillas, Villa, Xabi Alonso hay Torres bước qua giai đoạn đỉnh cao phong độ.

Tại kỳ EURO sắp tới, lực lượng Tây Ban Nha sẽ có nhiều xáo trộn song Del Bosque vẫn bị chỉ trích là khá bảo thủ, không chịu thay đổi sơ đồ chiến thuật lẫn lối chơi bị cho là đã lỗi thời. 

Những ngôi sao đáng chú ý:

Andres Iniesta: Tác giả của bàn thắng "vàng" mang về chiến thắng 1-0 trước Hà Lan trong trận chung kết World Cup 2010 vẫn là linh hồn trong lối chơi của đội tuyển Tây Ban Nha. Nhãn quan chiến thuật nhạy bén, kỹ thuật điêu luyện và khả năng giữ thăng bằng tuyệt vời, tiền vệ của Barcelona là gương mặt mà mọi đối thủ đều phải e sợ.

Ngoài ra, Gerard Pique tiếp tục hoàn thành xuất sắc vai trò thủ lĩnh hàng phòng ngự, Sergio Ramos chưa bao giờ đánh mất đi sự mạnh mẽ và David Silva gây ấn tượng bởi sự sáng tạo pha chút tinh quái. Bên cạnh đó là giàn tiền vệ đồng đều, chất lượng với những gương mặt quen thuộc như Koke, Cesc Fàbregas, Juan Mata, Sergio Busquets, Isco...

Còn trong khung gỗ, những năm qua Tây Ban Nha thường không thiếu những thủ môn xuất chúng. Có lẽ điều khó khăn với Del Bosque tiếp tục tin dùng "công thần" Iker Casillas hay đặt trọn niền tin vào thủ môn đang chơi tuyệt hay ở MU David De Gea. Tây Ban Nha cũng đang sở hữu nhiều tiền đạo đẳng cấp như Paco Alcácer, Diego Costa hay Álvaro Morata, nhưng để tìm được cặp "song sát" như Villa - Torres là điều gần như không thể ở thời điểm này.',
'31.jpg',
'923',
N'Đăng',
'LT07')
insert into Tin values(
'MT32',
N'Italia vs Tây Ban Nha, 02h45 ngày 25/03: Thay đổi lịch sử',
N'Tây Ban Nha chưa từng đánh bại được Italia trên sân khách, với một đội hình chất lượng cùng phong độ tốt, sẽ là cơ hội để HLV Del Bosque thay đổi lịch sử đó.',
'03/24/2016',
N'Italia - Sự kết hợp giữa sức trẻ và kinh nghiệm  

Đội tuyển Italia đang đứng thứ 15 trên BXH FIFA, hiện tại đội bóng thiên thanh cũng đã giành quyền góp mặt ở Pháp trong năm tới để tham dự ngày hội bóng đá lớn nhất Châu Âu. Vượt qua vòng bảng với thành tích ấn tượng, trong 10 trận họ có được 7 chiến thắng cùng 3 trận hòa, điều đó giúp Antonio Conte và các học trò giành 24 điểm và dẫn đầu bảng H. Nhưng trong 2 trận giao hữu quốc tế gần nhất, Ý đang thi đấu không tốt, thua 1-3 trước Bỉ và để Romania cầm hòa với tỷ số 2-2. Đó rõ ràng là điều các CĐV nhà không hề mong muốn, vì vậy họ đặt quyết tâm rất nhiều trong lần đón tiếp Tây Ban Nha này.  

Hiện tại, đội tuyển Ý đang có một đội hình khá chất lượng, mặc dù tuổi đã cao nhưng thủ thành – đội trưởng Buffon vẫn khẳng định “gừng càng già càng cay”, thủ môn 38 tuổi này vẫn đang là người gác đền vững chắc của Juventus cũng như ĐT quốc gia. Bên cạnh đó là sức trẻ đến từ những Florenzi, Darmian kết hợp với kinh nghiệm của những Bonuci hay Pelle tạo nên đội bóng thiên thanh đáng xem hơn bao giờ hết.

Điều đáng tiếc nhất có lẽ là chấn thương của tài năng trẻ Verratti, cùng với đó là tiền đạo Immobile đang thi đấu rất hay cho màu áo CLB, hậu vệ Barzagli cũng không thể góp mặt vì chấn thương. Đây cũng sẽ là cơ hội cho tiền đạo đang thuộc biên chế của Southampton - Pelle trong những lần hiếm hoi được đá chính. Mặc dù tính chất của một trận giao hữu sẽ rất khác, nhưng chắc chắn thầy trò Antonio Conte sẽ thi đấu quyết tâm không để thua trên sân nhà.

Tây Ban Nha đang dần thể hiện chính mình  

Bên kia chiến tuyến, Del Bosque cùng các học trò đang có vị trí cao hơn trên BXH FIFA, với thành tích không tốt ở những giải đấu gần đây các cầu thủ “xứ bò tót” bị đẩy xuống thứ 3, sau Argentina và Bỉ. Nhưng dù sao họ cũng là đội vượt qua vòng loại xuất sắc với tư cách đội đầu bảng, giành được 27 điểm sau 9 trận thắng và 1 trận thua, nhưng bảng C là một bảng đấu khá dễ dàng bởi không có đội bóng nào thực sự mạnh.  

Bóng đá Tây Ban Nha luôn sản sinh ra rất nhiều tài năng, mặc dù ở thế hệ nào họ cũng có được một đội hình chất lượng. Rất bất ngờ khi tiền đạo Diego Costa không có tên trong danh sách ra sân trong trận đấu này, điều đó đồng nghĩa với việc cơ hội sẽ giành cho Morata. Ngoài những gương mặt quen thuộc thi có hai gương mặt mới, đó là San Jose thay thế cho Busquets chấn thương, và hậu vệ đang thuộc biên chế của Villarreal – Mario. Với đội hình 4-3-3 quen thuộc đã làm mưa làm gió trong nhiều năm qua, người hâm mộ “xứ đấu bò” đang rất tự tin cho một chiến thắng mặc dù phải thi đấu tại Communale Friuli, bởi mới đây họ cũng có được chiến thắng 2-0 trên đất Anh.

Một lý do để các CĐV thêm hi vọng nữa đó là lịch sử đối đầu đang nghiêng về họ, Tây Ban Nha thắng 3, hòa 1 và thua 1 trong 5 lần chạm trán gần nhất. Nhưng khi thi đấu trên đất Ý, những “chú bò tót” chưa một lần giành chiến thắng, vì vậy đây sẽ là cơ hội để những cầu thủ trẻ có thể làm được điều khác biệt so với những thế hệ trước.',
'32.jpg',
'516',
N'Đăng',
'LT07')
insert into Tin values(
'MT33',
N'Busquets đủ sức dự Siêu kinh điển',
N'Nỗi lo của Barcelona và CĐV của đội bóng này đã vơi đi rất nhiều khi hay tin chấn thương của tiền vệ Sergio Busquets là không nghiêm trọng và anh có thể kịp bình phục dự trận đấu với Real Madrid.',
'11/15/2015',
N'Busquets đã dính chấn thương ở trận giao hữu giữa ĐT TBN và ĐT Anh mới đây. Trận đấu đó, Busquets đã phải rời sân ở phút 78 vì chấn thương. Theo đánh giá ban đầu của các bác sỹ, cầu thủ sinh năm 1988 này đã dính chấn thương gân khoeo. Chấn thương đó thường sẽ khiến các cầu thủ phải nghỉ tới cả tháng trời mới có thể thi đấu bình thường trở lại.

Chấn thương này khiến Busquets sẽ phải vắng mặt ở trận đấu tiếp theo của ĐT TBN  gặp ĐT Bỉ trên sân khách. Nhìn tiền vệ này bị đau và phải rời sân, những người lo nhất hẳn là BHL của Barca bởi lẽ sắp tới họ sẽ phải đối mặt với kình địch Real Madrid trong trận Siêu kinh điển đầy khó khăn thử thách. 

Nếu Busquets phải nghỉ tới 3 tuần, đó thực sự là thảm họa với Barca. Tuyển thủ TBN này là mắt xích hết sức quan trọng ở khu vực giữa sân nhờ khả năng điều phối và cầm trịch trận đấu rất tốt. Không chỉ vậy, Busquets cũng có khả năng đánh chặn nhờ khả năng phá đoán cực tốt của mình và thực sự là ông chủ ở khu vực giữa sân. 

Không có Busquets, Barca khó lòng có thể đảm bảo giữ được sự cân bằng ở khu vực giữa sân trong trận siêu kinh điển sắp tới đây bởi Real cũng đang có trong tay hàng tiền vệ cực mạnh và đầy sáng tạo với những cái tên đáng chú ý như Kroos, Modric hay Carsemiro. 

May mắn cho Barca là chấn thương của Busquets không quá nghiêm trọng như dự đoán. Tin từ báo chí TBN cho biết tiền vệ này chỉ bị tổn thương dây chằng mức độ nhẹ và có thể thi đấu trở lại ở trận Siêu kinh điển vào ngày 22/11 sắp tới.',
'33.jpg',
'777',
N'Đăng',
'LT07')
insert into Tin values(
'MT34',
N'Nhận định và dự đoán trận Tây Ban Nha vs Anh, 02h45 ngày 14/11',
N'Thethaovietnam.vn cập nhật thông tin, nhận định và dự đoán trận Tây Ban Nha gặp ĐT Anh, giao hữu quốc tế.',
'11/13/2015',
N'Thành tích đối đầu gần đây:

Giao hữu    13/11/11    Anh 1-0 Tây Ban Nha
Giao hữu 12/02/09    Tây Ban Nha 2-0 Anh
Giao hữu 08/02/07    Anh 0-1 Tây Ban Nha
Giao hữu 18/11/04    Tây Ban Nha 1-0 Anh 

Thành tích của Tây Ban Nha tại vòng loại Euro 2016:

UEFA EURO    13/10/15    Ukraine 0-1 Tây Ban Nha
UEFA EURO    10/10/15    Tây Ban Nha 4-0 Luxembourg
UEFA EURO    09/09/15    FYR Macedonia 0-1 Tây Ban Nha
UEFA EURO    06/09/15    Tây Ban Nha 2-0 Slovakia
UEFA EURO    15/06/15    Belarus 0-1 Tây Ban Nha
UEFA EURO    28/03/15    Tây Ban Nha 1-0 Ukraine
UEFA EURO    16/11/14    Tây Ban Nha 3-0 Belarus
UEFA EURO    13/10/14    Luxembourg 0-4 Tây Ban Nha
UEFA EURO    10/10/14    Slovakia 2-1 Tây Ban Nha
UEFA EURO    09/09/14    Tây Ban Nha 5-1 FYR Macedonia

Thành tích của Anh  tại vòng loại Euro 2016:

UEFA EURO    13/10/15    Lithuania 0-3 Anh 
UEFA EURO    10/10/15    Anh 2-0 Estonia
UEFA EURO    09/09/15    Anh 2-0 Thụy Sĩ
UEFA EURO    05/09/15    San Marino 0-6 Anh
UEFA EURO    14/06/15    Slovenia 2-3 Anh
UEFA EURO    28/03/15    Anh 4-0 Lithuania    
UEFA EURO    16/11/14    Anh 3-1 Slovenia
UEFA EURO    12/10/14     Estonia 0-1 Anh
UEFA EURO    10/10/14    Anh 5-0 San Marino
UEFA EURO    09/09/14    Thụy Sĩ 0-2 Anh

NHẬN ĐỊNH:

So sánh màn trình diễn ở vòng loại Euro 2016 vừa qua, nhà vô địch châu Âu 2 mùa liên tiếp Tây Ban Nha có phần kém ĐT Anh của HLV Roy Hogson. Cụ thể, sau 10 trận ở vòng loại La Roja thắng 9 và có 1 trận thua, trong khi Tam sư là đội bóng duy nhất có thành tích toàn thắng. Chính vì lẽ đó, cuộc chạm trán giữa hai ứng cử viên hàng đầu cho chức vô địch EURO 2016 tại Alicante được kỳ vọng sẽ rất cân tài cân sức. Nhưng có nhiều lý do để đánh giá cao đội bóng của HLV Vicente Del Bosque.

Đó chính là sự nhỉnh hơn về đẳng cấp và kinh nghiệm của nhà đương kim vô địch châu Âu. Ở lần triệu tập hiện tại, HLV Del Bosque đã cho gọi những cầu thủ tốt nhất của mình khi tất cả những ngôi sao đang thi đấu tại La Liga và Premier League đều có mặt. Trong đó đáng kể đến hàng công với sự trở lại của Diego Costa. Chân sút gố Brazil từng được xem là hy vọng của ĐT song với màn trình diễn thất vọng tại World Cup 2014 và mới đây là phong độ nghèo nàn tại Chelsea, Costa đang NHM và giới chuyên môn nghi ngờ. Bởi vậy, những trận giao hữu trước thềm Euro 2016 sẽ là khoảng thời gian để tiền đạo 27 tuổi chứng tỏ. Bên cạnh đó, những Fabregas, Mata, Navas, Cazorla hay thủ thành David de Gea đều có mặt trong cuộc nghênh tiếp ĐT Anh.

Về phía đội khách, ở lần triệu tập này ĐT Anh không có nhiều thay đổi khi họ vẫn tuân thủ với công cuộc trẻ hóa đội hình. Theo danh sách được công bố, đa phần những cầu thủ HLV Roy Hodgson triệu tập đều có tuổi đời khá trẻ và có ít kinh nghiệm thi đấu ở cấp đội tuyển. Trong đó có thể kể đến  Alli, Dier, Stones, Barkley – những cầu thủ có độ tuổi dưới 21. Đáng chú ý, trong đợt triệu tập lần này Tam Sư đã cho gọi Jamie Vardy, ngôi sao mới nổi ở nước Anh, cầu thủ đang bất ngờ dẫn đầu danh sách làm bàn tại Premier League với 12 pha lập công sau 12 vòng đấu, nhưng nhiều khả năng với kinh nghiệm chỉ vỏn vẹn 4 lần được khoác áo ĐT Anh và chưa để lại bất kỳ dấu ấn nào, chân sút của Leicester khó cạnh tranh được vị trí chính thức của Harry Kane hay Wayne Rooney. Nhưng cũng không loại trừ khả năng, HLV Hodgson ở lượt trận giao hữu này chỉ là thử nghiệm cũng như để các cầu thủ trẻ cọ xát kinh nghiêm, bởi vậy chiến lược gia 68 sẽ không đặt nặng kết quả và trao cơ hội cho nhiều gương mặt mới.

Ngoài nhỉnh hơn về kinh nghiệm và đẳng cấp, Tây Ban Nha được đánh giá cao hơn hẳn bởi thành tích tối đầu. Trong hơn một thập kỷ trở lại đây, Tây Ban Nha và Anh chưa một lần gặp nhau ở một giải đấu chính thức nào song họ có 4 trận giao hữu với 3 chiến thắng thuộc về Tây Ban Nha, còn ĐT Anh chỉ 1 lần đánh bại đối thủ.',
'34.jpg',
'854',
N'Đăng',
'LT07')
insert into Tin values(
'MT35',
N'Tây Ban Nha ra mắt trang phục dự VCK EURO 2016',
N'Nhà ĐKVĐ Tây Ban Nha vừa ra mắt trang phục chính thức tại vòng chung kết EURO 2016 tại Pháp.',
'11/11/2015',
N'La Roja đang hướng đến chức vô địch lần thứ 3 liên tiếp sau 2 kỳ EURO lên ngôi vào các năm 2008 và 2012. Sau khi kết thúc vòng loại để có vé đến nước Pháp bảo vệ chức vô địch vào mùa hè sang năm với tư cách nhất bảng B với 9 trận thắng và 1 trận thua, mới đây đội bóng xứ Bò tót đã trình làng trang phục chính thức cho vòng chung kết.

Trong buổi ra mắt trang phục mới, nhưng ngôi sao được kỳ vọng sẽ giúp La Roja bảo vệ thành công chức vô địch vào mùa hè sang năm như hậu vệ Jordi Alba của Barca, Manchester City tiền vệ David Silva của Man City, thủ thành Iker Casillas của Porto, tiền vệ Koke của Atletico Madrid hay tiền đạo Diego Costa đều có mặt.

Hiện HLV Vicente Del Bosque cùng các học trò đang tích cực chuẩn bị cho trận giao hữu đầu tiên hướng đến VCK Euro 2016, đó là cuộc tiếp đón ĐT Anh tại Alicante vào thứ Sáu, trước khi hành quân tới nước Bỉ để chạm trán đội bóng đang đứng đầu trên BXH của FIFA vào ngày thứ Ba tuần tới.

Trong đợt tập trung lần này, HLV Del Bosque không có sự phục vụ của trung vệ Sergio Ramos và hậu vệ cánh Juanfran vì lý do chấn thương, thay vào đó, "Ngài râu kẽm" đã cho gọi hậu vệ Nacho Fernandez của Real và Oscar de Marcos của Athletic Bilbao.',
'35.jpg',
'999',
N'Đăng',
'LT07')
insert into Tin values(
'MT36',
N'Ozil và Gotze lập công, ĐT Đức lần đầu đánh bại Italia sau 21 năm',
N'Trong trận giao hữu tại Allianz Arena rạng sáng nay, ĐT Đức đã hủy diệt Italia 4-1 nhờ các pha lập công của Kroos, Goetze, Hector và Oezil. Đây là chiến thắng đầu tiên của Mannschaft trước Azzurri sau 21 năm trong ngày Thomas Mueller lần đầu tiên mang băng thủ quân.',
'03/30/2016',
N'Sau trận thua ngược 2-3 trước Anh, HLV Joachim Loew đã có nhiều điều chỉnh cho nhà đương kim vô địch thế giới Đức. Trong đó, thủ thành của Barcelona Marc-Andre ter Stegen trấn giữ khung thành, thay cho Manuel Neuer bị đau bụng. Hàng thủ 5 người với bộ ba trung vệ Ruediger - Hummels - Mustafi mang đến sự chắc chắn hơn. Trên hàng công Mario Goetze đá cắm thay Mario Gomez, Julian Draxler chạy cánh trái thay Marco Reus để sát cánh cùng Mesut Ozil và thủ lĩnh mới toanh Thomas Mueller ở bộ 3 tiền vệ.

Về phía đội khách, HLV Conte sử dụng đội hình lạ lẫm trong quá trình thử nghiệm và sàng lọc chuẩn bị cho VCK EURO 2016 với bộ 3 tấn công là Bernardeschi, Zaza, Insigne, chơi ngay phía sau là những tiền vệ kỳ cựu Motta, Montolivo, Giaccherini. Ở tuyến phòng ngự, Bonucci đá cặp trung vệ cùng Acerbi, còn hậu vệ của MU Matteo Darmian trấn giữ bên hành lang phải, cánh đối diện là Florenzi. 

Với đội hình gồm toàn những gương mặt đã mang về chiếc Cúp Vàng 2 năm về trước, đội chủ nhà Đức không mấy khó khăn để hoàn toàn áp đặt lối chơi lên đội hình chắp vá của các nhà ĐK Á quân EURO Italia. Phút 24, tân đội trưởng Mueller để lại dấu ấn bằng cú căng ngang từ bên cánh phải khiến hậu vệ đội khách phá bóng ra tạo điều kiện cho Toni Kroos dứt điểm chân phải hiểm hóc hạ gục Gianluigi Buffon. Đáng chú ý, tiền vệ của Real Madrid cũng chính là người mở tỷ số ở trận gặp Anh cách đây ít ngày. Lần đầu tiên trong sự nghiệp, Kroos lập công trong 2 trận liên tiếp cho Đức.

Sau bàn khai thông thế bế tắc, đội bóng áo trắng thi đấu hưng phấn và liên tiếp dồn ép đối thủ. Sự chậm chạp của các tiền vệ Thiago Motta và Riccardo Montolivo cùng sự đơn độc của trung phong Simone Zaza khiến Italia gần như không gây nổi sức ép lên hàng thủ Đức được HLV Loew "gia cố" ở trận đấu này. Và điều gì đến cũng phải đến, Buffon phải vào lưới nhặt bóng lần thứ 2 ngay trước khi hiệp 1 khép lại với pha lập công của tiền vệ đang được nhiều đội bóng Anh theo đuổi, Mario Gotze. 

Bằng thắng thứ 2 của Đức vẫn do thủ quân Mueller châm ngòi khi có pha phối hợp hoàn hảo với người đồng đội ở Bayern Munich. Từ pha tạt bóng cực dẻo của Mueller đưa bóng đến đúng tầm đầu Gotze và tiền đạo cắm này không cần bật lên vẫn dễ dàng dùng đầu ghi bàn.

Sang hiệp 2, Italia tổ chức được nhiều đợt lên bóng hơn. Nhưng đúng lúc có hi vọng tìm kiếm bàn thắng thì Azzurri lại dính đòn phản công. Phút 59, bộ ba Draxler - Gotze - Hector có màn phối hợp ngẫu hứng như đá tập để người dứt điểm là Hector nâng tỷ số lên 3-0. 

Ác mộng chưa dứt với Azzurri. Phút 73, Buffon phạm lỗi với Rudy trong vòng cấm. Từ chấm 11, Mesut Ozil dễ dàng đánh lừa Buffon, nâng tỉ số thành 4-0 cho "Cỗ xe tăng" Đức. Những điều chỉnh nhân sự của HLV Antonio Conte chỉ giúp Italia ghi được 1 bàn danh dự vào phút 83. Tiền đạo vào sân thay người El Shaarawy là người lập công mang về bàn rút ngắn tỉ số cho Italia và 1-4 cũng là kết quả cuối cùng của trận đấu.

Không những nhận trận thua thảm bại trước đợt tập trung cuối cùng vào tháng 5 này, Italia còn chịu tổn thất lớn về nhân sự khi trung vệ Leonardo Bonucci dính chấn thương nặng và có nguy cơ mất EURO 2016. Một sự chuẩn bị tồi của nhà đương kim Á quân châu Âu.',
'36.jpg',
'222',
N'Đăng',
'LT08')
insert into Tin values(
'MT37',
N'01h45 ngày 30/3, Đức vs Italia: Hẹn nhau tại Pháp',
N'Người hâm mộ đang cảm thấy bất an cho nhà ĐKVĐ thế giới khi ngày hội bóng đá châu Âu đang cận kề mà ĐT Đức vẫn chưa tìm lại được phong độ đáng sợ. Nhưng HLV Joachim Loew lại không nghĩ như vậy, ông vẫn rất kiên trì với những thử nghiệm mới của mình và trận giao hữu với đối thủ truyền kiếp Italia đêm nay cũng đơn thuần chỉ vì mục đích này.',
'03/29/2016',
N'Thất bại 2-3 trước ĐT Anh vừa qua lại một lần nữa cho thấy điểm yếu cố hữu của ĐT Đức ở hàng phòng ngự. Bộ đôi trung vệ Ruediger và Hummels không tìm được tiếng nói chung. Trong khi đó ở hai bên cánh Emre Can và Hector cũng không thể hiện được gì nhiều.

Lần tiếp đón ĐT Italia này, chắc chắn HLV Joachim Loew sẽ có những thay đổi lớn ở khâu phòng ngự. Bộ đôi trung vệ trẻ Jonathan Tah và Shkodran Mustafi có thể được trao cơ hội đá chính để tích lũy kinh nghiệm. Emre Can rõ ràng không phù hợp với vị trí hậu vệ cánh phải nên cả Sebastian Rudy và Matthias Ginter đều có hy vọng được ra sân ngay từ đầu. HLV Joachim Loew cũng cần phải trao thêm cơ hội cho 2 cầu thủ đang chơi tuyệt hay tại Bundesliga là Julian Draxler và Karim Bellarabi, trong khi Lukas Podolski và Mario Goetze cũng rất cần lấy lại cảm giác sau thời gian không được trọng dụng ở CLB. Dù đã để thua liên tiếp trong 2 trận giao hữu gần đây nhưng dường như HLV Loew không mấy quan tâm đến điều đó. Trước mắt chiến lược gia 56 tuổi vẫn muốn có thêm những thử nghiệm để tìm ra những nhân tố mới cho ĐT Đức tại VCK EURO 2016 trên đất Pháp mùa hè tới, và đương nhiên ông có lý do để làm điều này, bởi thành công của Cỗ xe tăng với chức vô địch World Cup 2014 là điểm tựa để Joachim Loew được phép thử nghiêm trước trận đánh lớn.

Trái ngược với ĐT Đức, Italia vừa có một trận giao hữu tương đối thành công với nhà Tây Ban Nha. Các cầu thủ Italia đã thi đấu lấn át hoàn toàn trước nhà ĐKVĐ châu Âu. HLV Antonio Conte cũng tỏ ra rất hài lòng về màn trình diễn của các họ trò ở trận đấu trên. Nhưng cũng giống như người đồng nghiệp bên kia chiến tuyến, HLV Antonio Conte vẫn muốn có thêm những thử nghiệm mới cả về nhân sự lẫn chiến thuật. Ở trận gặp Tây Ban Nha, Italia đã ra sân với bộ 3 tấn công là Eder, Pelle và Candvera. Tuy nhiên, cả 3 đều đã bị thay ra ở hiệp 2 bởi Insigne, Bernardeschi và Simone Zaza. Thực tế đã cho thấy những người vào sau đã thi đấu tốt hơn nên hoàn toàn có thế được đá chính ngay từ đầu ở trận đấu này.

Đức và Italia là hai đội bóng đã có quá nhiều duyên nợ trong quá khứ. Tuy nhiên, chuyện "ân oán" chỉ được giải quyết nếu hai đội lại gặp nhau tại EURO 2016, còn trên con đường chuẩn bị hành trang tới Pháp, trận đấu tại Allianz-Arena đêm nay chỉ mang tính thăm dò lực lượng và là cơ hội để HLV Antonio Conte cũng như Joachim Loew tiếp tục thử nghiệm đội hình. Đó là lý do kết quả trận đấu sẽ phụ thuộc nhiều yếu tố, nhưng với phong cách "lấy công bù thủ" như hiện nay của ĐT Đức, rất có thể sẽ có thêm màn rượt đuổi tỉ số hấp dẫn nữa tại Munich.',
'37.jpg',
'234',
N'Đăng',
'LT08')
insert into Tin values(
'MT38',
N'Harry Kane và Jamie Vardy tỏa sáng giúp ĐT Anh ngược dòng khó tin trước Đức',
N'Rạng sáng nay, ĐT Anh đã có màn ngược dòng ấn tượng trước nhà ĐKVĐ World  Cup - Đức ngay tại Olympiastadion (Berlin) để giành chiến thắng 3-2 chung cuộc.',
'03/27/2016',
N'Sau khi bị dẫn trước 0-2 trong vòng 60 phút đầu tiên, đội bóng của HLV Roy Hodgson đã ghi liên tiếp 3 bàn thắng nhờ công của bộ đôi tiền đạo đang dẫn đầu danh sách làm bàn tại giải Ngoại hạng Anh Harry Kane và Jamie Vardy cùng với pha ấn định chiến thắng ở phút bù giờ của tiền vệ trẻ Tottenham Eric Dier, qua đó giành chiến thắng 3-2 hết sức ấn tượng ngay tại Berlin.

Do chỉ là 1 trận giao hữu nên HLV Roy Hodgson tiếp tục sử dụng rất nhiều cầu thủ trẻ để thử nghiệm các phương án, qua đó sàng lọc đội hình chuẩn bị cho EURO 2016 diễn ra vào tháng 6 tới, và gặp nhà ĐKVĐ thế giới Đức là cơ hội không thể tốt hơn cho những Rose; Henderson, Dier; Lallana, Kane, Alli hay Jamie Vardy khẳng định mình để tìm 1 suất đến Pháp mùa hè này. 

Về phía Đức, HLV Loew chỉ có 1 thay đổi duy nhất so với dự đoán ban đầu là việc hậu vệ trẻ Antonio Rudiger được đá chính thay cho Sebastian Rudy. Phía trên hàng công, Mesut Ozil, Muller, Reus và Gomez đều ra sân ngay từ đầu. 

Với lực lượng chất lượng và dày dặn kinh nghiệm hơn hẳn ở khu vực giữa sân đổ lên, Đức không gặp khó khăn trong việc cầm bóng và tạo sức ép lên khung thành của Butland. Tuy nhiên cũng phải đến phút 43 họ mới có bàn mở tỉ số sau cú sút xa tuyệt đẹp của Kroos.

Không chỉ ghi bàn, Kroos còn gián tiếp khiến thủ môn của tuyển Anh, Butland chấn thương vì cú sút này. Bước sang hiệp 2, Đức cố gắng duy trì sức ép trước sự kháng cự của Anh và có thêm bàn thắng thứ 2 nhờ công của Mario Gomez. 

Ngay sau đó, Harry Kane có câu trả lời, gỡ lại 1-2 cho đội khách. Bước ngoặt của trận đấu chỉ đến khi HLV Hodgson quyết định tung Jamie Vardy vào sân thay cho Danny Welbeck ở phút 71 và chuyển sang thi đấu với 2 tiền đạo. Chỉ 4 phút sau khi có mặt trên sân, tiền đạo đang thăng hoa cùng Leicester đã tỏa sáng với cú đánh gót thành bàn tuyệt hảo, cân bằng tỉ số 2-2 cho Anh. 

Trên đà hưng phấn, ĐT Anh chơi ép sân trong phần còn lại của trận đấu. Nhờ tinh thần lên cao, các cầu thủ của Hodgson tạo ra nhiều cơ hội ngon ăn hơn hẳn và điều gì đến cũng phải đến. Phút 90, từ cú đá phạt góc chính xác của thủ quân Liverpool Henderson, tiền vệ trẻ đang khoác áo Tottenham Dier đã băng lên đánh đầu dũng mãnh khiến Neuer chỉ biết chôn chân chịu thua và đây cũng là bàn ấn định chiến thắng 3-2 cho những chú Sư tử Anh.

Với chiến thắng này, Anh sẽ có thêm rất nhiều sự tự tin trước khi bước vào Euro 2016 với đội hình được dự đoán trẻ nhất trong nhiều năm trở lại đây. Trong khi đó, Đức tiếp tục bộc lộ nhiều vấn đề kể từ khi đăng quang ở World Cup 2014 và HLV Joachim Loew vẫn còn rất nhiều việc phải làm trong gần 2 tháng còn lại nếu muốn tái lập thành tích của đội tuyển Tây Ban Nha cách đây 4-6 năm, đó là vô địch World Cup rồi lên ngôi ở EURO.',
'38.jpg',
'654',
N'Đăng',
'LT08')
insert into Tin values(
'MT39',
N'Nhận định và dự đoán trận Đức gặp Anh, 02h45 ngày 27/3',
N'Thethaovietnam.vn cập nhật nhận định, thông tin và dự đoán kết quả trận Đức gặp Anh, trong khuôn khổ loạt trận giao hữu quốc tế trước thềm vòng chung kết EURO 2016.',
'03/26/2016',
N'NHẬN ĐỊNH:

Đội tuyển Anh có phong độ thuyết phục nhất ở vòng loại Euro 2016 vừa diễn ra khi họ là đội bóng duy nhất có được mạch 10 trận toàn thắng và chỉ để thủng lưới vỏn vẹn 3 bàn. Tuy nhiên với nhiều người khó tính, thành tích trên chẳng quá ấn tượng bởi ĐT Anh nằm trong bảng đấu dễ thở khi chỉ có Thụy Sỹ là đội bóng có tên tuổi.

Sau vòng loại, Anh đã có thêm 2 trận giao hữu với thành tích 1 thắng trước ĐT Pháp vừa trải quan cơn kinh hoàng ở vụ khủng bố tại Paris hồi cuối năm ngoái và 1 trận thua trước Tây Ban Nha. Nếu để ý kỹ, thầy trò Roy Hodgson vẫn cần cải thiện khá nhiều đặc biệt là tâm lý thi đấu khi xa nhà. 

Đêm nay, ĐT Anh sẽ có trận đấu đầy thử thách khi phải làm khách trên sân của nhà đương kim vô địch thế giới Đức và với lực lượng được đánh giá khá cao với sự góp mặt của hàng loạt tài năng trẻ đang trưởng thành ở giải Ngoại Hạng Anh, nhưng đội hình "chắp vá" và thử nghiệm của Hodgson sẽ gặp nhiều khó khăn trước đoàn quân của Joachim Loew.

Về phần đội chủ nhà, Đức gặp đội chút về vấn đề nhân sự khi thiếu vắng một số vị trí quan trọng ở hàng phong ngự khi Boateng gặp chấn thương. Tuy nhiên sức mạnh của “cỗ xe tăng” không vì thế giảm sút. Ở lần triệu tập này, HLV Loew vẫn còn đó Hummels và Mustafi hay Ginter có thể thay thế trung vệ đang thi đấu cho Bayern Munich. Ở các tuyến còn lại, Đức có được những nhân tố tốt nhất. Nhìn chung với lợi thế sân nhà và đội hình đồng đều với những cầu thủ thi đấu cùng nhau trong một vài năm trở lại đây, Đức đang được đánh giá cao hơn ĐT Anh.

Thành tích đối đầu gần nhất:

INTERF    20/11/13    Anh 0-1 Đức
WORLD CUP    27/06/10    Đức(N) 4-1 Anh
INTERF    20/11/08    Đức 1-2 Anh
INTERF    23/08/07    Anh 1-2 Đức

Phong độ gần đây của Đức

UEFA EURO    12/10/15    Đức 2-1 Georgia
UEFA EURO    05/09/15    Đức 3-1 Poland
INTERF    11/06/15    Đức 1-2 Mỹ
INTERF    26/03/15    Đức 2-2 Australia
UEFA EURO    15/11/14    Đức 4-0 Gibraltar
UEFA EURO    15/10/14    Đức 1-1 CH Ireland
UEFA EURO    08/09/14    Đức 2-1 Scotland 
INTERF    04/09/14    Đức 2-4 Argentina    
INTERF    07/06/14    Đức 6-1 Armenia
INTERF    02/06/14    Đức 2-2 Cameroon
INTERF    14/05/14    Đức 0-0 Ba Lan
INTERF    06/03/14    Đức 1-0 Chile    

Phong độ gần đây của Anh:

INTERF    18/11/15    Anh 2-0 Pháp
INTERF    14/11/15    Tây Ban Nha 2-0 Anh
UEFA EURO    13/10/15    Lithuania 0-3 Anh
UEFA EURO    10/10/15    Anh 2-0 Estonia
UEFA EURO    09/09/15    Anh 2-0 Thụy Sĩ
UEFA EURO    05/09/15    San Marino 0-6 Anh
UEFA EURO    14/06/15    Slovenia 2-3 Anh
INTERF    07/06/15    CH Ireland 0-0 Anh
INTERF    01/04/15    Italy 1-1 Anh
UEFA EURO    28/03/15    Anh 4-0 Lithuania
INTERF    19/11/14    Scotland 1-3 Anh',
'39.jpg',
'732',
N'Đăng',
'LT08')
insert into Tin values(
'MT40',
N'Mesut Ozil giật giải Cầu thủ xuất sắc nhất năm 2015 của Đức',
N'Mới đây, tiền vệ Mesut Ozil của Arsenal đã được vinh danh ở quê nhà khi được bầu chọn là Cầu thủ người Đức xuất sắc nhất năm 2015.',
'01/15/2016',
N'Trong danh sách đội hình tiêu biểu của năm do FIFA, chỉ có duy nhất Manuel Neuer là cầu thủ người Đức được bình chọn. Tuy nhiên, thủ thành của Bayern Munich không thể đánh bại các đồng đội ở ĐTQG để giật giải Cầu thủ xuất sắc nhất năm 2015, mà người được vinh danh không ai khác chính là tiền vệ Mesut Ozil khi ngôi sao của Arsenal đã áp đảo với số lượng phiếu bầu của người hâm mộ.

Ở mùa giải 2015/2016, Ozil đã thi đấu hết sức ấn tượng và là nhân vật có tầm ảnh hưởng lớn nhất đến lối chơi của Arsenal. Với phong độ cao khi đang ở độ chín nhất của sự nghiệp, chân chuyền 27 tuổi này đã có được 3 bàn thắng cùng 16 đường kiến tạo thành bàn tại giải Ngoại hạng Anh, qua đó trở thành cầu thủ kiến tạo nhiều nhất châu Âu cho tới thời điểm này của mùa giải. Anh còn đứng trước cơ hội phá kỷ lục 20 lần kiến tạo trong 1 mùa do huyền thoại Arsenal Thierry Henry lập ở mùa giải 2002/03.

Sự đóng góp vô cùng lớn của tiền vệ người Đức đưa Arsenal từng bước vượt qua hàng loạt các ứng cử viên khác như MU, Man City, Chelsea hay Leicester City để đứng đầu BXH sau 21 vòng tại Ngoại Hạng Anh. Ozil đã cho thấy số tiền kỷ lục 42.5 triệu bảng mà Arsenal bỏ ra vào mùa hè năm 2013 để rước anh về từ Real Madrid xứng đáng đến từng đồng xu. Chính phong độ chói sáng của chàng cầu thủ gốc Thổ Nhĩ Kỳ đã khiến các CĐV của Arsenal tự tin hi vọng đội bóng sẽ đoạt chiếc chức vô địch Premier League sau 11 năm nhìn Chelsea và 2 đội bóng thành Manchester thay nhau xưng vương.

Năm 2015 cũng đánh dấu những thành công của anh trong màu áo ĐTQG. Ozil đã có 14 cú sút và 6 đường kiến tạo thành bàn sau 8 lần thi đấu cho ĐT Đức. Thống kê trận đấu cũng chỉ ra, trong 8 trận đấu này, Oezil đã phải chạy một quãng đường tổng cộng lên tới 92,71 km, trung bình 11,59 km mỗi trận, khác hẳn với những gì mà người ta hãy nghĩ về anh là một cầu thủ lười di chuyển.

Với những thành tích đó, Ozil đã thuyết phục NHM nước Đức viết lá phiếu bầu chọn cho mình. Và kết quả cuối cùng, tiền vệ Arseanal đã giành được hơn 51 nghìn lượt bầu chọn, chiếm 45,9% tổng số phiếu. Con số này vượt xa người xếp sau là ngôi sao Thomas Mueller của Bayern Munich (15,9%). Cầu thủ cán đích ở vị trí thứ 3 là thủ thành của Cologne, Jonas Hector (13,6%). 

Đây cũng là lần thứ 4 trong vòng 5 năm trở lại đây, Mesut Ozil giành được giải thưởng cao quý này. Trước đó, anh cũng được bình chọn là cầu thủ xuất sắc nhất vào các năm 2011, 2012 và 2013.',
'40.jpg',
'123',
N'Đăng',
'LT08')
insert into Tin values(
'MT41',
N'01h45 ngày 30/3, Đức vs Italia: Hẹn nhau tại Pháp',
N'Người hâm mộ đang cảm thấy bất an cho nhà ĐKVĐ thế giới khi ngày hội bóng đá châu Âu đang cận kề mà ĐT Đức vẫn chưa tìm lại được phong độ đáng sợ. Nhưng HLV Joachim Loew lại không nghĩ như vậy, ông vẫn rất kiên trì với những thử nghiệm mới của mình và trận giao hữu với đối thủ truyền kiếp Italia đêm nay cũng đơn thuần chỉ vì mục đích này.',
'03/29/2016',
N'Thất bại 2-3 trước ĐT Anh vừa qua lại một lần nữa cho thấy điểm yếu cố hữu của ĐT Đức ở hàng phòng ngự. Bộ đôi trung vệ Ruediger và Hummels không tìm được tiếng nói chung. Trong khi đó ở hai bên cánh Emre Can và Hector cũng không thể hiện được gì nhiều.

Lần tiếp đón ĐT Italia này, chắc chắn HLV Joachim Loew sẽ có những thay đổi lớn ở khâu phòng ngự. Bộ đôi trung vệ trẻ Jonathan Tah và Shkodran Mustafi có thể được trao cơ hội đá chính để tích lũy kinh nghiệm. Emre Can rõ ràng không phù hợp với vị trí hậu vệ cánh phải nên cả Sebastian Rudy và Matthias Ginter đều có hy vọng được ra sân ngay từ đầu. HLV Joachim Loew cũng cần phải trao thêm cơ hội cho 2 cầu thủ đang chơi tuyệt hay tại Bundesliga là Julian Draxler và Karim Bellarabi, trong khi Lukas Podolski và Mario Goetze cũng rất cần lấy lại cảm giác sau thời gian không được trọng dụng ở CLB. Dù đã để thua liên tiếp trong 2 trận giao hữu gần đây nhưng dường như HLV Loew không mấy quan tâm đến điều đó. Trước mắt chiến lược gia 56 tuổi vẫn muốn có thêm những thử nghiệm để tìm ra những nhân tố mới cho ĐT Đức tại VCK EURO 2016 trên đất Pháp mùa hè tới, và đương nhiên ông có lý do để làm điều này, bởi thành công của Cỗ xe tăng với chức vô địch World Cup 2014 là điểm tựa để Joachim Loew được phép thử nghiêm trước trận đánh lớn.

Trái ngược với ĐT Đức, Italia vừa có một trận giao hữu tương đối thành công với nhà Tây Ban Nha. Các cầu thủ Italia đã thi đấu lấn át hoàn toàn trước nhà ĐKVĐ châu Âu. HLV Antonio Conte cũng tỏ ra rất hài lòng về màn trình diễn của các họ trò ở trận đấu trên. Nhưng cũng giống như người đồng nghiệp bên kia chiến tuyến, HLV Antonio Conte vẫn muốn có thêm những thử nghiệm mới cả về nhân sự lẫn chiến thuật. Ở trận gặp Tây Ban Nha, Italia đã ra sân với bộ 3 tấn công là Eder, Pelle và Candvera. Tuy nhiên, cả 3 đều đã bị thay ra ở hiệp 2 bởi Insigne, Bernardeschi và Simone Zaza. Thực tế đã cho thấy những người vào sau đã thi đấu tốt hơn nên hoàn toàn có thế được đá chính ngay từ đầu ở trận đấu này.

Đức và Italia là hai đội bóng đã có quá nhiều duyên nợ trong quá khứ. Tuy nhiên, chuyện "ân oán" chỉ được giải quyết nếu hai đội lại gặp nhau tại EURO 2016, còn trên con đường chuẩn bị hành trang tới Pháp, trận đấu tại Allianz-Arena đêm nay chỉ mang tính thăm dò lực lượng và là cơ hội để HLV Antonio Conte cũng như Joachim Loew tiếp tục thử nghiệm đội hình. Đó là lý do kết quả trận đấu sẽ phụ thuộc nhiều yếu tố, nhưng với phong cách "lấy công bù thủ" như hiện nay của ĐT Đức, rất có thể sẽ có thêm màn rượt đuổi tỉ số hấp dẫn nữa tại Munich.',
'41.jpg',
'555',
N'Đăng',
'LT09')
insert into Tin values(
'MT42',
N'Italia gặp HỌA: Marchisio coi như mất EURO 2016',
N'Do dính chấn thương đầu gối ở trận thắng Palermo, tiền vệ Claudio Marchisio sẽ phải phẫu thuật và coi như không thể tham dự VCK EURO 2016.',
'03/24/2016',
N'Trong bối cảnh VCK EURO 2016 chỉ còn cách gần 2 tháng nữa, ĐT Italia đã phải đón nhận hung tin  về tình hình nhân sự khi tiền vệ Claudio Marchisio mới dính ca chấn thương gối khá nặng và có khả năng không thể hành quân sang Pháp. 

Cụ thể, ở trận gặp Palermo vừa qua, Marchisio đã dính chấn thương đầu gối sau pha va chạm với Franco Vazquez. Kết quả, anh phải rời sân ngay ở phút 16 bằng cáng cứu thương và được chuyển đi xét nghiệm.

Câu chuyện trở nên nghiêm trọng bởi trong buổi họp báo sau trận, HLV Max Allegri xác nhận đây là ca chấn thương nặng. Theo đó, Claudio Marchisio sẽ phải tham dự một ca phẫu thuật. Điều đó cũng đồng nghĩa tiền vệ này gần như chắc chắn nghỉ hết mùa và không có cơ hội tham dự VCK EURO 2016.

Nếu Marchisio không thể hành quân sang Pháp, đây sẽ là mất mát rất lớn với ĐT Italia. Đơn giản bởi tiền vệ của Juventus đang là 1 trong những nhân tố trụ cột của Azzurri dưới thời HLV Antonio Conte.

Tân HLV của Chelsea sẽ rất đau đầu với sự tổn thất này bởi Daniele De Rossi chưa tìm lại phong độ tốt nhất, trong khi Marco Verratti vẫn đang dính chấn thương ở PSG.

Claudio Marchisio ra mắt ĐT Italia hồi năm 2009. Tính đến nay, tiền vệ này đã có 54 lần khoác áo Azzurri, ghi được 5 bàn thắng.

Ở VCK EURO 2016, ĐT Italia nằm ở bảng E cùng với Bỉ, Thụy Điển và CH Ailen. Thầy trò Conte sẽ mở màn giải đấu này với trận gặp Bỉ vào ngày 13/6. Dự kiến sau khi mùa giải này kết thúc, ĐT Italia sẽ công bố danh sách sơ bộ dự EURO 2016.',
'42.jpg',
'701',
N'Đăng',
'LT09')
insert into Tin values(
'MT43',
N'Nhận định và dự đoán trận Italia vs Romania, 02h45 ngày 18/11',
N'Thethaovietnam.vn cập nhật thông tin, nhận định và dự đoán kết quả trận Italia gặp Romania, giao hữu bóng đá quốc tế.',
'11/17/2015',
N'Thành tích đối đầu gần đây:

Giao hữu    18/11/10    Romania(N) 1-1 Italy
UEFA EURO 13/06/08 Italy(N) 1-1 Romania
Giao hữu    17/11/03    Italy 1-0 Romania

Phong độ của Italia tại vòng loại EURO 2016:

UEFA EURO    14/10/15    Italy 2-1 Norway
UEFA EURO    10/10/15     Azerbaijan 1-3 Italy
UEFA EURO    07/09/15     Italy 1-0 Bulgaria
UEFA EURO    04/09/15    Italy 1-0 Malta
UEFA EURO    13/06/15     Croatia 1-1 Italy
UEFA EURO    29/03/15    Bulgaria 2-2 Italy
UEFA EURO    17/11/14    Italy 1-1 Croatia
UEFA EURO    14/10/14     Malta 0-1 Italy
UEFA EURO    11/10/14    Italy 2-1 Azerbaijan
UEFA EURO    10/09/14    Norway 0-2 Italy

Phong độ của Romania tại vòng loại EURO 2016:

UEFA EURO    11/10/15    Faroe Islands 0-3 Romania
UEFA EURO    09/10/15    Romania 1-1 Phần Lan
UEFA EURO    08/09/15    Romania 0-0 Hy Lạp
UEFA EURO    05/09/15    Hungary 0-0 Romania
UEFA EURO    14/06/15    Bắc Ireland 0-0 Romania
UEFA EURO    29/03/15    Romania 1-0 Faroe Islands
UEFA EURO    15/11/14    Romania 2-0 Bắc Ireland 
UEFA EURO    15/10/14     Phần Lan 0-2 Romania
UEFA EURO    11/10/14    Romania    1-1 Hungary
UEFA EURO    08/09/14    Hy Lạp 0-1 Romania

NHẬN ĐỊNH:

Cho dù vượt qua vòng loại Euro 2016 với vị trí nhất bảng nhưng Italia vẫn nhận khá nhiều lời chỉ trích từ khá giả nhà. Cũng dể hiểu bởi ở vòng loại vừa qua, thầy trò Antonio Conte đã trình diễn một lối chơi nghèo nàn và không bản sắc. Mọi chuyện càng trở lên căng thẳng khi mới đây ở trận giao hữu với ĐT Bỉ, đội bóng áo thiên thanh dễ dàng để thua 1-3.

Trái ngược không khí nặng nề của đội chủ nhà, Romania bước vào trận đấu này với tâm lý hưng phấn khi có được tấm vé tham dự VCK Euro 2016. Dẫu biết thành tích ở vòng loai của Romania vòng loại không ấn tượng như Italia khi họ chỉ đứng ở vị trí thứ hai. Tuy nhiên nếu phân tích kỹ hơn, Romania cho thấy là họ tập thể ổn định và không dễ bị đánh bại. Cụ thể, 10 trận đã đá ở vòng loại Romania thắng 5 hòa 5 và là một trong 4 đội bất bại tại vòng loại Euro. Trong trận giao hữu rạng sáng mai, mục tiêu thủ hòa trước Italia xem ra không phải là quá sức với thầy trò HLV Anghel Iordanescu.',
'43.jpg',
'705',
N'Đăng',
'LT09')
insert into Tin values(
'MT44',
N'Sao MU tỏa sáng, Italia chính thức giành vé đến Pháp',
N'Hậu vệ của Man Utd, Matteo Darmian đã có bàn thắng đầu tiên cho đội tuyển Italia, giúp Azzurri đánh bại Azerbaijan với tỉ số 3-1, qua đó đưa thầy trò Antonio Conte tới Pháp tham dự VCK EURO 2016…',
'10/11/2015',
N'Trước loạt trận thứ 9 bảng H vòng loại EURO 2016, Italia dẫn đầu với 18 điểm, nhiều hơn 4 điểm so với đội xếp thứ 3 (Croatia). Điều đó đồng nghĩa thầy trò Antonio Conte sẽ chính thức giành vé tham dự VCK nếu đánh bại Azerbaijan.

Trước đối thủ không còn động lực thi đấu, Italia đã không gặp quá nhiều khó khăn để giành chiến thắng với tỉ số 3-1. Trong 3 bàn thắng ghi được của Azzurri, đáng chú ý có pha lập công của Matteo Darmian. Đây là bàn thắng đầu tiên của hậu vệ Man Utd sau 16 lần khoác áo Azzurri.

Ở trận đấu này, HLV Antonio Conte sử dụng đội hình mạnh nhất hiện có ngoại trừ Andrea Pirlo (chấn thương). Nhưng ở Baku đêm qua, Italia đã ít nhiều bị bất ngờ bởi cách nhập cuộc đầy hưng phấn của Azerbaijan. Trong khoảng 10 phút đầu tiên, đội chủ nhà gây sức ép khá mạnh mẽ, tung ra 2 cú dứt điểm về phía khung thành Buffon. 

Tuy nhiên, cũng ở thời điểm đó, Italia đã chứng tỏ bản lĩnh ông lớn bằng bàn thắng vượt lên dẫn trước ở phút 11. Marco Verratti chính là người tạo nên sự khác biệt với cú phất bóng chẳng kém Andrea Pirlo, đặt Eder vào thế đối mặt thủ thành Aghayev. Với cú "xỏ kim" khéo léo, chân sút của Sampdoria đã đưa Azzurri vượt lên dẫn trước 1-0.

Trên đà hưng phấn, Italia chút nữa có bàn thắng thứ 2 ở phút 16. Nhưng ở tình huống này, cú dứt điểm cận thành của Graziano Pelle lại bị người gác đền của Azerbaijan cản phá đi hết đường biên ngang.

Trước đối thủ không quá mạnh, hàng thủ Italia đã tỏ rõ sự khinh suất. Hệ quả, họ phải nhận bàn thua ở phút 30. Bonucci là người mắc sai lầm với cú bật nhảy đánh đầu thiếu chính xác, trong khi Chiellini lại mắc lỗi kèm người, để Dimitrij Nazarov tung cú sút chìm hiểm hóc gỡ hòa 1-1 cho Azerbaijan. 

Sau khi bị gỡ hòa, Italia đã vùng lên chơi tấn công. Và đoàn quân áo thiên thanh không mất quá nhiều thời gian để tái lập thế dẫn trước. Phút 43, Eder đã xé toang hàng thủ Azerbaijan với cú chọc khe tinh tế để Candreva thoát xuống đối mặt thủ thành Aghayev. Tiền vệ của Lazio quyết định không dứt điểm mà chuyền bóng dọn cỗ để El Shaarawy ghi bàn, nâng tỉ số lên 2-1. Đây là bàn thắng đầu tiên của "Tiểu Pharaoh" cho Azzurri kể từ tháng 11/2012.

Bước sang hiệp 2, Italia không vội vã chơi tấn công. Tuy vậy, các vị khách vẫn có thêm 1 bàn thắng nữa ở phút 65. Hậu vệ của Man Utd, Matteo Darmian chính là người đã lập công với cú sút xa ngoài vòng cấm sau sai lầm của hàng thủ Azerbaijan.

Sau khi dẫn trước 3-1, HLV Conte đã tung Florenzi và Giovinco vào sân. Azerbaijan dù tấn công và tạo ra khá nhiều cơ hội song không thể ghi bàn. Tệ hơn, ở cuối trận, họ còn dính tổn thất khi trung vệ Badavi Huseynov phải nhận thẻ đỏ rời sân.

Giành chiến thắng với tỉ số 3-1, Italia đã chính thức đoạt vé tới Pháp tham dự VCK EURO 2016. Thực tế, Azzurri chỉ hơn đội xếp thứ 3 (Croatia) 3 điểm. Nhưng do Croatia bị trừ 1 điểm nên thầy trò Conte đã sớm đoạt vé đi tiếp. Ở loạt trận cuối, Croatia và Na Uy sẽ cạnh tranh tấm vé thứ 2 bảng H. Na Uy hơn Croatia 2 điểm nhưng phải đụng độ Italia ở loạt trận cuối, trong khi Croatia chỉ phải gặp Malta.',
'44.jpg',
'766',
N'Đăng',
'LT09')
insert into Tin values(
'MT45',
N'Chi 18 triệu euro cho tuyển thủ Italia, Juventus đón tân binh thứ 6',
N'Trang chủ Juventus đăng tin nhà Á quân Champions League đã chiêu mộ thành công tiền đạo Simone Zaza từ Sassuolo với mức giá 18 triệu euro. Đây là tân binh thứ 5 của đội chủ sân Juventus Stadium trong mùa hè này.',
'07/08/2015',
N'Sau mùa giải thành công với chức vô địch Serie A lần thứ 4 liên tiếp, cùng chiếc cúp Coppa Italia và giành ngôi Á quân UEFA Champions League, đội bóng của HLV Massimiliano Allegri đã có nhiều xáo trộn về đội hình khi họ chia tay các công thần như Andrea Pirlo (đến New York City FC), Carlos Tevez (trở lại Boca Junior) và đứng trước nguy cơ mất một số trụ cột khác như bộ đôi tiền vệ Arturo Vidal, Paul Pogba, Morata...trước sự lôi kéo của hàng loạt các "ông lớn" châu Âu.

Tuy vậy, tham vọng thống trị Serie A và chinh phục giấc mơ trở lại ngôi vương Champions League vẫn còn nguyên với Bà đầm già thành Turin, đó là lý do họ rầm rộ "tuyển quân" trong mùa hè này. Mới đây, đội chủ sân Juventus Stadium đã đón tân binh thứ 5, đó là tiền đạo Simone Zaza từ Sassuolo với bản hợp đồng trị giá 18 triệu euro.

Cựu tiền đạo Sassuolo sẽ gắn bó với Juventus theo bản hợp đồng 5 năm. Đây là tân binh thứ 6 của nhà đương kim vô địch Serie A trong hè này sau thủ thành Murara Neto (Fiorentina), tiền vệ Sami Khedira (Real Madrid), Roberto Pereyra (Udinese) và cặp tiền đạo Paulo Dybala (Palermo), Mario Mandzukic (Atletico Madrid).

Simone Zaza năm nay 24 tuổi, và được đánh giá là một trong những tiền đạo sáng giá nhất của bóng đá Italia ở thời điểm hiện tại. Đây cũng là lý do vì sao Juventus quyết định chi đậm để đưa Zaza về Turin tránh sự nhòm ngó của các ông lớn châu Âu.

Ở mùa giải vừa qua Simone Zaza đã thi đấu khá ấn tượng trong màu áo Sassuolo. Chân sút này ghi được 21 bàn thắng sau 64 lần ra sân cùng Sassuolo trên mọi đấu trường. Cũng bởi màn trình diễn ấn tượng ấy, Zaza đã được HLV Antonio Conte triệu tập lên ĐT Italia tham dự vòng loại EURO 2016.

Simone Zaza xuất hiện khiến hàng công của Juventus đang khá đông đúc nên nhiều khả năng đội bóng này sẽ bán Fernando Llorente nếu nhận được lời đề nghị hợp lý. Chân sút người Tây Ban Nha đang là mục tiêu theo đuổi của Liverpool, Real Madrid và cả Arsenal.',
'45.jpg',
'375',
N'Đăng',
'LT09')
insert into Tin values(
'MT46',
N'Ronaldo tiết lộ về lời khuyên sút phạt từ thủ môn Keylor Navas',
N'Tiền đạo Bồ Đào Nha thay đổi cách chạy đà sút phạt trong trận lập hat-trick hạ Wolfsburg tại tứ kết lượt về Champions League, sau khi nghe theo lời khuyên từ thủ môn người Costa Rica.',
'04/17/2016',
N'Cú hat-trick của Ronaldo giúp Real giành thắng lợi 3-0 trước Wolfsburg trên sân Bernabeu hôm thứ ba 12/4. Đoàn quân của Zidane nhờ thế vào bán kết Champions League với kết quả chung cuộc 3-2. 

Trước khi tiền đạo người Bồ Đào Nha ghi được bàn thứ ba hôm đó, thủ môn Navas đã chạy từ khu cấm địa tới vị trí Ronaldo thực hiện cú sút phạt hàng rào để đưa ra vài lời khuyên cho đồng đội.

“Chúng tôi luyện tập việc đó cùng nhau”, Ronaldo cho biết.

Anh tiết lộ thêm: “Navas có lẽ sẽ giết tôi vì nói với bạn điều này. Nhưng thực tế là anh ấy đã nói rằng tôi cần phải thực hiện cú sút phạt đó từ từ, chậm thôi, không chạy đà với tốc độ tối đa bởi vì anh ấy biết tôi sẽ ghi bàn theo kiểu đó”.',
'46.jpg',
'898',
N'Đăng',
'LT10')
insert into Tin values(
'MT47',
N'CLB nào là ứng cử viên số 1 cho ngôi vô địch Champions League?',
N'Theo đánh giá của nhà cái Sky Bet, Bayern Munich chính là ứng cử viên số 1 cho ngôi vô địch Champions League mùa giải này.',
'04/16/2016',
N'Như vậy là hai cặp bán kết Champions League đã được xác định. Theo đó, Man City sẽ đối đầu với Real Madrid còn Atletico Madrid chạm trán với Bayern Muinich. 

Bất chấp việc phải đối đầu với Atletico Madrid, đội bóng vừa loại nhà vô địch Barcelona, nhưng Bayern Munich vẫn được nhà cái Sky Bet đánh giá là ứng cử viên số 1 cho ngôi vô địch mùa này.

Tỷ lệ đặt cược cho khả năng đoàn quân của Pep Guardiola sẽ lên ngôi là 6/4 (đặt 4 ăn 6). Trong khi đó, Real Madrid đứng thứ 2 với tỷ lệ ăn cao hơn một chút (7/4).

Nếu đặt cược vào khả năng đoàn quân của HLV Diego Simeone lên ngôi vô địch, bạn sẽ ăn gấp 4 lần. Cuối cùng, tỷ lệ ăn nếu Man City đăng quang là 15/2.

Mặc dù vậy, ai cũng hiểu mọi chuyện có thể xảy ra ở Champions League, nhất là ở vòng bán kết. Ngay cả đội bóng bị đánh giá thấp nhất là Man City cũng cho thấy được bản lĩnh ở mùa giải này, đặc biệt sau chiến thắng trước PSG.

Theo lịch, các trận đấu ở vòng bán kết sẽ diễn ra vào ngày 26,27/4. Các trận lượt về sẽ diễn ra 1 tuần sau đó. Trận chung kết sẽ được tổ chức ở thành phố Milan vào ngày 28/5.',
'47.jpg',
'989',
N'Đăng',
'LT10')
insert into Tin values(
'MT48',
N'Luis Enrique: Dám thay đổi cho mùa giải tới?',
N'Câu chuyện về xoay vòng cầu thủ ở Barcelona lúc này không còn cần thiết nữa mà vấn đề quan trọng là HLV Luis Enrique phải làm gì cho mùa giải 2016/17.',
'04/16/2016',
N'Thất bại trước Atletico Madrid hồi giữa tuần biến Barcelona thành cựu vương ở Champions League nên từ giờ đến cuối mùa giải – hơn 1 tháng nữa, họ chỉ còn 7 trận đấu (6 tại La Liga và 1 trận chung kết Cúp Nhà vua). Cũng từ thất bại trước Atletico, HLV Luis Enrique nhận “100% lỗi” thuộc về mình, để sau đó, giới chuyên môn đưa ra đánh giá về vấn đề nghiêm trọng nhất đối với chiến lược gia người Tây Ban Nha là vấn đề xoay vòng cầu thủ, đặc biệt ở bộ ba tấn công Lionel Messi, Neymar, Luis Suarez. 

Có một thống kê cho thấy, tổng cộng số trận đấu của 3 siêu sao người Nam Mỹ ở mùa giải này là 130 – trung bình mỗi người 43 trận. Ngoại trừ chấn thương và thẻ phạt khiến họ vắng mặt, hiếm khi Enrique tận dụng quyền thay đổi người để rút ai đó trong bộ ba MSN ra nghỉ, kể cả khi đã có khoảng cách an toàn.

Với Messi, anh chỉ buộc phải rời sân sớm do chấn thương dây chằng (trận gặp Las Palmas) và cơ (trận gặp Athletic Bilbao). Ngoài ra, anh không đá chính ở 2 trận đấu với Atletico và Real Madrid tại Madrid vì mới bình phục chấn thương.

Trong khi Suarez luôn thi đấu trọn vẹn những trận anh có mặt thì chỉ có Neymar là người duy nhất có 2 lần được thay ra ở cuối trận – phút 86 trận đấu với Malaga ở vòng 2 La Liga và phút 88 trận chung kết Cúp thế giới các CLB gặp River Plate.

Đây là mùa giải mà Pedro Rodriguez đã chia tay sân Nou Camp vì không thể cạnh tranh nổi với MSN, trong khi các cầu thủ trẻ như Munir, Sandro Ramirez không nhận được sự tin tưởng từ Enrique. Họ chỉ có cơ hội khi bộ ba MSN khuyết vị trí vì lý do bất khả kháng.

Đây là vấn đề thực sự nghiêm trọng mà Enrique sẽ phải tính toán cho mùa giải tới. Ở đây, khó có thể nói rằng, vì vấn đề hợp đồng hay quảng bá thương mại mà Enrique không được phép thay Messi, Neymar hay Suarez, bởi nếu có điều khoản đó thì cũng chỉ là sự đảm bảo phải có mặt của các siêu sao trong đội hình xuất phát cùng thời lượng nhất định thi đấu trên sân.

Có quá nhiều cơ hội để Enrique rút MSN ra nghỉ khi mà Barca có những chiến thắng cách biệt với khoảng cách từ 3 bàn trở lên. Cho họ nghỉ cũng là tăng thời gian cho các cầu thủ trẻ cơ hội tích lũy thêm kinh nghiệm.

Phải chăng, Enrique sợ các siêu sao của mình dỗi, dẫn tới mối quan hệ rạn nứt? Phải chăng, từ việc “dám” để cả Messi, Neymar, Daniel Alves, Gerard Pique, Ivan Rakitic ngồi dự bị ở trận đấu với Real Sociedad trên sân Anoeta hồi tháng 1/2015 dẫn tới những đồn thổi về sự rạn nứt giữa ông với Messi đã “đánh vào tiềm thức” của HLV 45 tuổi này? 

Nếu vậy, mùa giải tới sẽ là sự lặp lại? Giải pháp cho Enrique về bổ sung nhân sự là đương nhiên, nhưng liệu có dễ dàng thuyết phục một chân sút nào đó về Nou Camp chỉ để mài đũng quần trên ghế dự bị, mỏi mòn chờ đến thời điểm MSN chấn thương hoặc treo giò trong khi Enrique chẳng buồn nghĩ tới việc thay đổi?

Cứ tưởng như ông đã đủ kiên nhẫn để chờ thời điểm án phạt cấm chuyển nhượng hết hiệu lực để sử dụng 2 tân binh Arda Turan, Aleix Vidal nhiều hơn, vừa xoay vòng cầu thủ, vừa tạo ra các giải pháp mới cho lối chơi, nhưng rốt cuộc, Enrique vẫn cứ bào mòn sức lực của các học trò.

Thành thực mà nói, dù không phủ nhận sức mạnh hủy diệt của MSN thì vẫn phải thấy rằng, bóng đá hiện đại không đứng yên một chỗ cho họ tung hoành mãi. Luôn có những giải pháp mới được đưa ra cho khâu phòng ngự, trong khi chỉ với MSN mãi thì cũng trở nên đơn điệu.

Vậy nên, mùa tới, nếu có sự tăng cường cho hàng công, Enrique sẽ phải đảm bảo không để MSN đi vào ngõ cụt khi về cuối mùa giải và nhân tố mới có đủ thời lượng thi đấu trên sân, đảm bảo sự hài lòng cho tất cả.',
'48.jpg',
'154',
N'Đăng',
'LT10')
insert into Tin values(
'MT49',
N'Atletico Madrid: Simeone là “doping” chứ đâu',
N'Chỉ mất 4 năm, HLV người Argentina như một thứ doping mang đến sức mạnh toàn diện cho đội bóng chủ sân Vicente Calderon.',
'04/16/2016',
N'Từ việc chỉ là cái bóng của Real Madrid trở thành kẻ thách thức cả kình địch cùng thành phố lẫn Barcelona trong cuộc đua vô địch tại La Liga, cũng như trở thành “kẻ lãng tử kiêu hãnh” tại trời Âu, Atletico Madrid đã biến đổi dưới bàn tay của Diego Simeone. Chỉ mất 4 năm, HLV người Argentina như một thứ doping mang đến sức mạnh toàn diện cho đội bóng chủ sân Vicente Calderon.

Diego Simeone và các thành viên trong Ban huấn luyện (Mono Burgos, Profe Ortega, Vizcaino, Pablo Vercellone) lần đầu tiên chỉ huy Atletico vào ngày 7/1/2012, ở trận gặp Malaga tại vòng 18 La Liga. Khi đó, Rojiblancos đang đứng thứ 11 trên bảng xếp hạng, đã sớm bị loại khỏi Cúp Nhà vua bởi Albacete – đội bóng hạng Ba. Nhưng kể từ đó, họ đi “từ lễ hội này đến lễ hội khác”.

Tính đến thời điểm này, 252 trận đấu đã qua, thành tích của Atletico là 158 trận thắng, 52 hòa và 42 thua (tỉ lệ thắng 62%). Làm phép so sánh với 252 trận đấu trước khi HLV người Argentina đến, Atletico thắng 113 trận, hòa 58 và để thua tới 81 lần – gấp đôi số trận thua và tỉ lệ thắng chỉ là 44%.

Trước trận đấu với Malaga, Atletico chỉ giành được 22 điểm từ 17 trận đấu và không một trận thắng nào khi rời xa sân nhà Vicente Calderon. Cho đến khi mùa giải kết thúc, họ vươn lên vị trí thứ 5 với 56 điểm – vị trí cao nhất kể từ mùa giải 2008/09, kém 2 điểm so với nhóm các đội giành suất dự Cúp châu Âu và giành chức vô địch Europa League sau khi vượt qua Athletic Bilbao 3-0.
Mùa giải chính thức đầu tiên của Simeone (2012/13) bắt đầu bằng danh hiệu Siêu cúp châu Âu nhờ trận thắng 4-1 trước Chelsea, rồi kết thúc với chức vô địch Cúp Nhà vua và một sự kiện đáng chú ý khác – kết thúc 14 năm không thể giành thắng lợi trước Real Madrid. Ngoài ra, họ lọt vào Top 4 ở La Liga với vị trí thứ 3 (76 điểm) và là đội có hàng phòng ngự mạnh nhất – thủng lưới 31 bàn/38 trận, giúp Thibaut Courtois nhận danh hiệu Zamora cho thủ môn xuất sắc nhất. Thủ môn trẻ người Bỉ còn có được chuỗi 820 phút không để thủng lưới. 

2 chiếc chìa khóa quan trọng của Simeone là phòng ngự an toàn và sân nhà Calderon.
Yếu tố thực sự đánh giá năng lực của Simeone là bất chấp việc qua mỗi mùa giải lại mất đi những cầu thủ quan trọng thì ông vẫn duy trì cho đội bóng của mình sự ổn định về sức mạnh. Như mùa 2013/14 chẳng hạn, dù chia tay Radamel Falcao nhưng Atletico vẫn vô địch La Liga và vào tới chung kết Champions League.

Năm đó, Atletico đăng quang ở Liga với 90 điểm (thắng 28, hòa 6, thua 4) và chính thức vô địch đúng ở vòng đấu cuối cùng trên sân Nou Camp của Barca. Trận đấu mà họ sớm mất Diego Costa, Arda Turan vì chấn thương, lại để Alexis Sanchez ghi bàn dẫn trước, nhưng Diego Godin đã ghi bàn gỡ hòa. Một lần nữa, Courtois nhận được giải Zamora khi chỉ để thủng lưới 26 bàn/38 trận. Họ không thua một trận nào trên sân nhà (thắng 15, hòa 4).

Tại Champions League, Atletico loại AC Milan ở vòng 1/8, Barca ở tứ kết, Chelsea tại bán kết và chỉ chịu thua Real Madrid sau hiệp phụ ở chung kết. Họ ghi bàn trước và chỉ còn cách chiến thắng có vài giây, tuy nhiên, Sergio Ramos gỡ hòa ở những giây cuối cùng, trước lúc Atletico suy sụp vì yếu tố thể lực.

Mùa trước, Atletico lại mở đầu bằng Siêu cúp Tây Ban Nha thắng Real Madrid, kéo dài chuỗi 7 trận không thua trước kình địch cùng thành phố (trong đó có trận thắng 4-0 ở Liga). Rojiblancos cũng vào tới tứ kết Champions League, đứng thứ 3 tại Liga (78 điểm), và bắt đầu giai đoạn của các cầu thủ trẻ như Jan Oblak, Jose Gimenez, Saul Niguez và Antoine Griezmann sau khi Courtois, Filipe Luis, Toby Alderweireld, Adrian và Diego Costa ra đi.

Còn mùa giải hiện tại, Atletico đang đứng thứ 2, kém Barca 3 điểm và mới chỉ để thủng lưới 16 lần sau 32 vòng đấu tại Liga. Họ mới loại Barca tại tứ kết Champions League. Atletico là đội có thành tích tốt nhất trên sân khách – thắng 12/17 trận. Đáng nói là, những tên tuổi từng được đào tạo bởi chính CLB như Gabi, Koke, Fernando Torres, Oliver Torres, Lucas Hernandez, Thomas Partey, Nacho Monsalve đã khẳng định vai trò quan trọng trong đội.

Ở Champions League, Atletico chỉ thua duy nhất 1 trận trên sân nhà kể từ khi Simeone dẫn dắt (thua Benfica tại vòng đấu bảng) – thắng 12, hòa 3. 

Nhưng Simeone không chỉ thay đổi CLB trên khía cạnh bóng đá mà ở hầu hết các mặt khác. Đầu tháng này, CLB thông báo, số lượng người đăng ký thành viên đã lên đến 85.071 người, trong khi thời điểm kết thúc mùa giải trước là 78.000. Năm 2013, sau khi Simeone làm việc được 1 năm, số thành viên là 60.000. Ssau 3 năm, con số này được tăng thêm 25.071 người (tăng 25%) và họ đang phấn đấu đạt đến 100.000 để xây dựng sân mới.

Trên khía cạnh tài chính, 5 năm trước, báo cáo của CLB còn ghi số tiền nợ là 200 triệu euro. Đến tháng 10/2017, CLB phấn đầu xóa hoàn toàn các khoản nợ. Mùa giải này, CLB đã có số tiền thưởng 37 triệu euro nhờ lọt vào bán kết Champions League, trong khi sự đầu tư của Wanda Group vào 20% cổ phiếu CLB mang lại 45 triệu euro.

Chưa hết, Simeone biết cách làm tăng giá trị cầu thủ lên gấp nhiều lần nhờ giúp họ tỏa sáng. Diego Costa từ 6 triệu euro khi mua về đến lúc bán đi là 35 triệu euro. Turan từ 15 triệu tăng lên 35 triệu. Hay như Griezmann trong đội hình hiện tại được định giá 60 triệu euro, gấp đôi so với khi CLB mua anh về.

Chưa hết, sau chuyến du đấu tại Trung Quốc và Nhật Bản vào mùa Hè năm ngoái, CLB mới xác nhận rằng, sẽ tham dự giải giao hữu danh tiếng Internacional Champions Cup tại Australia vào mùa Hè năm nay.

Trên bảng hệ số điểm của UEFA dựa trên thành tích của 5 năm, nếu như từ mùa giải 2006/07 đến 2010/11, họ chỉ có 70.463 điểm và đứng thứ 24 thì 5 năm gần đây (từ khi Simeone đến), hệ số điểm của họ là 136.199, vươn lên vị trí thứ 4.

Rõ ràng, việc lựa chọn và bổ nhiệm Simeone là một quyết định quá xuất sắc của lãnh đạo Atletico, mang lại sự thay đổi tích cực, toàn diện cho đội bóng.',
'49.jpg',
'158',
N'Đăng',
'LT10')
insert into Tin values(
'MT50',
N'Phản ứng của người trong cuộc sau lễ bốc thăm bán kết C.L',
N'Sau lễ bốc thăm vòng bán kết Champions League, những người trong cuộc đã có những phản ứng khác nhau về kết quả bốc thăm.',
'04/15/2016',
N'Như vậy là hai cặp bán kết Champions League mùa này đã được xác định. Theo đó, Man City sẽ chạm trán với Real Madrid, còn Atletico Madrid đụng độ với Bayern Munich. Những cặp đấu trên hứa hẹn sẽ có rất nhiều kịch tính.

Hãy cùng xem người trong cuộc phản ứng ra sao sau lễ bốc thăm vòng bán kết:

Toni Kroos (tiền vệ Real Madrid): “Chúng tôi sẽ phải đối mặt với nhiều khó khăn trong hai trận đấu bán kết. Thẳng tiến tới Milan nào”.

Zidane (HLV Real Madrid): “Đây hứa hẹn là vòng đấu khó khăn của chúng tôi. Điều tích cực duy nhất là chúng tôi được thi đấu trận lượt về trên sân nhà”.

Txiki Begiristain (GĐTT Man City): “Đây là trận đấu lớn. Chúng tôi sẽ phải đối đầu với CLB giành nhiều chức vô địch Champions League nhất trong lịch sử. Tuy nhiên, hãy chờ xem. Chúng tôi muốn tiếp tục nối dài giấc mơ”.

Robert Lewandowski (tiền đạo Bayern Munich): “Atletico Madrid đã thể hiện được sức mạnh trong trận đấu với Barcelona. Chúng tôi sẽ phải duy trì sự tập trung tối đa”.

Pep Guardiola (HLV Bayern Munich): “Trong những năm qua, các đại diện của Tây Ban Nha luôn được đánh giá rất cao ở Champions League. Tuy nhiên, tôi đã theo dõi La Liga trong nhiều năm qua và biết cách để đánh bại Atletico Madrid”.

Clemente Villaverde (phát ngôn viên của Atletico Madrid): “Được đụng độ với Bayern Munich là niềm vinh dự lớn. Chúng tôi đã chứng minh vì sao góp mặt ở vòng bán kết. Atletico Madrid sẽ tiếp tục cho thấy sức mạnh của mình”.',
'50.jpg',
'167',
N'Đăng',
'LT10')
insert into Tin values(
'MT51',
N'Fed Cup 2016: Pháp và CH Séc vào chung kết',
N'Hai nhân vật chính của trận chung kết Fed Cup năm nay (dự kiến sẽ diễn ra trong 2 ngày 12-11 và 13-11 trên đất Pháp, nhưng địa điểm cụ thể vẫn chưa được xác định) sẽ là tuyển Pháp và tuyển CH Séc.',
'04/19/2016',
N'Tuyển Pháp với sự kết hợp của bộ đôi trẻ trung giàu tài năng là Caroline Garcia và Kristina Mladenovic (đều sinh năm 1993) đã chật vật đánh bại tuyển Hà Lan với tỷ số chung cuộc sát sao là 3-0; trong khi đó, nhà ĐKVĐ CH Séc dù không có Petra Kvitova trong đội hình vẫn đánh bại tuyển Thụy Sĩ có Martina Hingis với chiến thắng 3-2 chung cuộc.
Dù bị dẫn trước 1-2 (Garcia thua Kiki Bertens chỉ sau 2 ván đấu, Mladenovic thắng lại Richel Hogenkamp cũng sau 2 ván đấu nhưng sau đó lại để thua Bertens cũng với tỷ số 0-2), tuyển Pháp vẫn ngược dòng thần kỳ để giành tấm vé chơi trận chung kết đầu tiên kể từ năm 1995. Garcia đã gỡ hòa 2-2 cho tuyển Pháp sau chiến thắng 2-0 trước Arantxa Rus, để rồi, Garcia và Mladenovic cùng sát cánh với nhau để đánh bại Bertens và Hogenkamp với tỷ số 2-1.

Amelie Mauresmo, HLV trưởng kiêm đội trưởng tuyển Pháp tỏ ra rất hạnh phúc. Ít ra, cô cũng nhận ra, cô huấn luyện quần vợt nữ tốt hơn… nam. “Quả là một khoảnh khắc quá tuyệt vời cho  các cô gái, cho tôi và cho cả Ban huấn luyện. Ba năm trước, chúng tôi ở trong một tình huống rất khác. Còn giờ đây, chúng tôi sẽ hiện diện ở chung kết, làm tốt lắm các cô nương à. Họ đã chơi thật tuyệt vời, thật không thể tin nổi. Ngay cả trận đánh đôi cũng không dễ dàng, nhưng họ đã làm xoay chuyển cục diện của trận đấu. Tôi không biết điều đó đến từ đâu, từ rất xa, xin chúc mừng các cô nàng”, Mauresmo tâm sự.

Hồi 3 năm trước, tuyển Pháp rơi xuống trận play-off tranh suất  World Group nhóm 2, giờ đây, họ đã ở chung kết. Hồi 11 năm trước, họ lọt đến trận đấu chung kết nhưng để thua tuyển Nga khi đó có một đội hình cực kỳ hùng mạnh, còn lần này thì sao?

Trong khi đó, tuyển CH Séc tiếp tục chứng tỏ “quyền uy” của nhà vô địch khi lọt đến trận chung kết Fed Cup thứ… 5 trong vòng 6 mùa giải gần đây. Trước đó, tuyển CH Séc đã lập kỷ lục là cứ mỗi lần lọt đến trận chung kết, họ đều đăng quang ngôi vô địch, thắng tuyển Nga 3-2 hồi năm 2011, thắng tuyển Serbia 3-1 hồi năm 2012, thắng tuyển Đức 3-1 hồi năm 2014 và thắng tuyển Nga  3-2 hồi mùa giải năm ngoái. Không có Petra, CH Séc vẫn quá mạnh với Karoline Pliskova và Barboa Strycova trong đội hình, họ đã đánh bại Thụy Sĩ “có Hingis mà như không” (vì không sử dụng cô một trận nào trên sân đấu).

Vào tháng 11 này, khi Petra nhiều khả năng quay trở lại, tuyển CH Séc nhắm đến mục tiêu thắng danh hiệu thứ 5 trong 6 năm qua và cũng là danh hiệu thứ 10 trong lịch sử, biến tuyển CH Séc trở thành đội tuyển có thành tích tốt thứ 2 thế giới, chỉ  sau tuyển Mỹ (thành tích của tuyển CH Séc được gộp chung với cả thành tích cũ của Tiệp Khắc, với 5 ngôi vô địch Fed Cup từ năm 1975 đến năm 1988).',
'51.jpg',
'822',
N'Đăng',
'LT11')
insert into Tin values(
'MT52',
N'Dư âm Monte Carlo Masters 2016: Nhà vua quay trở về',
N'Khi trận đấu chung kết của Monte Carlo Masters 2016 khép lại với chiến thắng thuộc về Rafael Nadal – anh đã đánh bại Gael Monfils với điểm số 7/5, 5/7, 6/0 – cả 4 phía khán đài sân Ranier III như vỡ òa. Nadal, người hùng một thời của CLB đồng quê Monte Carlo đã thật sự quay trở lại.',
'04/19/2016',
N'Anh đã giành lại ngôi vô địch sau 3 năm trời đánh mất nó vào tay của những người khác. Anh đã giành lại Ngai vàng ở Monte Carlo, và chuẩn bị giành lại Ngai vàng trên mặt sân đất nện. “Vua sân đất nện” đang trên đường tìm lại bản ngã của mình…
Nadal đã thống trị CLB đồng quê Monte Carlo suốt từ năm 2005 đến năm 2012. Trong suốt quãng thời gian đó, anh đã liên tục đăng quang 8 ngôi vô địch, lần lượt đánh bại Guillermo Coria, Roger Federer, Novak Djokovic, Fernando Verdasco, David Ferrer trong các trận đấu chung kết. Nhờ vào thành tích “vô tiền khoáng hậu” này, đã có thời điểm, người ta xưng tụng “Vua sân đất nện Nadal” là “Lãnh chúa của Monte Carlo”. Dù vậy, sau khi bị Djokovic chấm dứt chuỗi 46 trận thắng liên tiếp ở chung kết Monte Carlo Masters 2013, Nadal đã lần lượt phải đau đớn chứng kiến “lãnh địa Monte Carlo” rồi cả “vương triều sân đất nện” của anh phải lung lay  và sụp đổ.

Trong suốt thời gian đó, ngôi vô địch Monte Carlo thuộc về “những người khác”, đó là Djokovic (vô địch trong các năm 2013 và 2015) và Stan Wawrinka (vô địch trong năm 2014). Không ai dám nghĩ rằng, Nadal có thể quay trở lại nơi này, đòi lại những gì từng thuộc về mình, cho  đến giải đấu vào năm nay. Nadal đã thật sự quay trở lại!

“Chiến thắng ở đây ngày hôm nay đã xác nhận rằng tôi đang trở nên tốt hơn, và tôi đang rất, rất  hạnh phúc… Đây là một tuần lễ ngập tràn cảm xúc đối với cá nhân tôi, là một sự kiện vô cùng đặc biệt. Monte Carlo là một nơi chốn đặc biệt nhất trong sự nghiệp của tôi, trong cuộc đời của tôi, không có gì phải nghi ngờ về điều đó. Vì thế, đăng quang ngôi vô địch ở nơi này sau 3 năm chờ đợi là một điều vô cùng đặc biệt đối với tôi. Đăng quang ngôi vô địch ở đây lần thứ 9 là một điều gì đó thật là khó tin. Và tôi cần phải giữ vững bước tiến này, Nadal tâm sự.

Có thể nói, chiến thắng ở Monte Carlo Masters tối hôm 17-4 mang một ý nghĩa sống còn đối với Nadal. Đây không chỉ đơn thuần là danh hiệu đầu tiên sau 8 tháng rưỡi khô hạn và khủng hoảng của anh (lần cuối cùng Nadal đăng quang một danh hiệu ATP World Tour đó là ở German Tennis Championships tại Hamburg hồi tháng 8 năm ngoái), đây cũng không chỉ đơn thuần là một chiến thắng để Nadal tìm lại sự tự tin thoát khỏi mùa giải thảm họa đang hiển hiện trước mắt, mà nó là chiến thắng minh chứng rằng, anh vẫn chưa đánh mất năng lực chiến thắng trên mặt sân đất nện ở CLB đồng quê Monte Carlo nói riêng mà cả trong mùa giải  sân đất nện nói chung.

Chiến thắng này giúp Nadal tiến rất sát “tiền bối người Argentina” Guillermo Vilas trên bảng danh sách những tay vợt sở hữu nhiều danh hiệu sân đất nện nhất (anh đang có 48 danh hiệu so với 49 danh hiệu của huyền thoại người Argentina). Nếu có thể đăng quang ngôi vô địch ở Barcelona Open sắp sửa khởi tranh, Nadal  không chỉ cân bằng kỷ lục của Vilas, mà còn có thể đòi lại danh vị “Vua sân đất nện”. Nên nhớ, Barcelona Open cũng là nơi anh từng đăng quang 8 lần và đang nhắm đến danh hiệu  thứ 9. Và từ đó, sau khi đã đòi lại danh vị “Vua sân đất nện”, Nadal sẽ lạc quan hướng về  French Open, nơi anh đã thắng 9 danh hiệu và đang nhắm đến kỷ lục đăng quang lần thứ 10.

Khi cả thế giới cần một khoảng lặng, Djokovic cũng cần một khoảng lặng sau một giai đoạn thống trị quá dài, đây là thời điểm đúng đắn để Nadal hồi sinh, để anh chứng minh rằng, sự nghiệp của anh sẽ không đơn giản kết thúc trong tăm tối như vậy, dù đó có thể chỉ là sự hồi sinh trên mặt sân đất nện, không phải sân cứng, cũng không phải sân cỏ, nhưng điều đó với Nadal là quan trọng đến nhường nào. Lại được trải nghiệm khoảnh khắc ghé răng cắn chiếc cúp vô địch, lại tìm lại được sự tự tin, tìm lại thói quên chiến thắng trên mặt sân đất nện, Nadal đã sẵn sàng, sẵn sàng để quay trở về và tìm lại chính bản ngã của mình.

“Nhà vua” quay trở về, thật sự, anh đã quay trở về! Không chỉ ở Monte Carlo Masters, không chỉ ở Barcelona Open, không chỉ ở Roland Garros, mà ở trọn vẹn mùa giải sân đất nện năm nay.',
'52.jpg',
'390',
N'Đăng',
'LT11')
insert into Tin values(
'MT53',
N'Wozzy có thể phải bỏ cả Roland Garros',
N'Ca chấn thương mắt cá nghiêm trọng đã khiến Caroline Wozniacki buộc phải rút lui khỏi đội hình tuyển Đan Mạch tham gia Fed Cup Nhóm 2 tại Ai Cập vào cuối tuần này, thậm chí, có thể nó sẽ khiến cô không thể tham dự Roland Garros – dù giải đấu sẽ chỉ diễn ra trong hơn 1 tháng nữa (khai diễn vào ngày 22-5 tới đây).',
'04/15/2016',
N'Theo vị quản lý Mikkel Nissen của Wozzy: “Wozzy đã bị chấn thương hôm thứ năm tuần trước, vào cuối buổi tập tại Monaco. Cô ấy đã bị trẹo mắt cá dữ dội trong một pha di chuyển lỗi. Ngay sau đó, cô đã được chuyển đến bệnh viện để kiểm tra chấn thương và chụp phim (cái mắt cá chân phải của Wozzy đã có vấn đề từ rất lâu rồi và chấn thương này chỉ là một hệ quả tất yếu). Kết quả kiểm tra và chụp phim cho thấy, Wozzy có 3 dây chằng mắt cả bị tổn thương, một dây chằng bị rách, hai dây chằng còn lại tổn thương nhẹ. Hiện tại, cái mắt cá của cô ấy đang sưng phồng lên. Cô ấy phải liên tục chườm đá, để chân cố định cao hơn thân thường, và theo những chuyên gia thì ca chấn thương kiểu như thế này cần khoảng 6 tuần để hồi phục”.
6 tuần, nghĩa là Wozzy chỉ có thể lành chấn thương vào ngày 19-5, khi đó, sẽ chỉ còn vài ngày trước khi Roland Garros khai cuộc. Liệu như vậy có đủ để cô tập luyện và quay trở lại sân đấu tại Paris? Còn trước mắt, do phải vắng mặt ở Fed Cup, cô phải cần ITF ra quyết định “miễn trừ nghĩa vụ quốc gia vì chấn thương” hoặc cấp một suất wild-card mới có thể tham dự Olympic ở Rio de Janeiro vào mùa hè năm nay, do vẫn chưa thi đấu đủ số trận trong màu áo đội tuyển quốc gia theo quy định của ITF.

Haas trải qua… ca phẫu thuật thứ 9

Tay vợt kỳ cựu người Đức Tommy Haas đang sống trong những ngày tháng đau khổ nhất của cuộc đời anh. Kể từ tháng 10 năm ngoái cho đến nay, anh vẫn chưa ra sân chơi một trận đấu nào và anh mới vừa trải qua ca phẫu thuật… thứ 9, lần này là phẫu thuật chữa trị chấn thương bàn chân. Dù phải đối mặt với một thời khắc đầy khó khăn, Haas vẫn tỏ ra khá tự tin, anh mới vừa đăng tải hình chụp sau ca phẫu thuật lên Instagram với lời nhắn nhủ các CĐV: “Xin cám ơn mọi người, tất cả mọi thứ đều tiến triển tốt. Đang vẫn còn cảm thấy mơ ngủ và sẽ phải chợp mắt một chút”.

Haas đã lên kế hoạch rút lui khỏi mùa giải sân đất nện năm nay. Có thể anh sẽ quay lại ở mặt sân cỏ tại Stuttgart, sau đó là Wimbledon. Tuy nhiên, cũng rất có thể anh sẽ chỉ quay lại sân đấu kể từ đầu mùa giải năm sau, nếu muốn thật sự chắc chắn. Lần cuối cùng anh hiện diện trên sân đấu là trận thua Jo-Wilfried Tsonga ở Vienna hồi năm ngoái. Cũng trong mùa giải năm ngoái, anh chỉ chơi vỏn vẹn 11 trận đấu. Hass năm nay đã 38 tuổi, anh cho biết mình buộc phải phẫu thuật bàn chân trái vì một vết rạn nhỏ, và cho dù anh có muốn tiếp tục chơi chuyên nghiệp hay không, anh cũng phải xử lý vấn đề này nếu không muốn đi lại khập khễnh.

Svitolina bất ngờ bị loại ở Bogota

Elina Svitolina (Ucraina, hấng thế giới) đã có tổng cộng 5 cơ hội thắng match-point, nhưng cô đã bỏ lỡ tất cả và bất ngờ bị loại ở Claro Open Colsanitas (Bogota) 2016 sau khi để thua ngược Alexandra Panova (Nga, hạng 155 thế giới) với điểm số 5/7, 6/1, 6/7 (6-8).

Svitolina đã chiếm ưu thế áp đảo và tưởng chừng như sẽ định đoạt được kết quả trận đấu, thế nhưng trời mưa khiến trận đấu tạm hoãn và cho đến khi quay trở lại sân đấu khi sân khô, Svitolina không bao giờ tìm lại được nhịp điệu thi đấu của mình. Trong 5 cơ hội thắng matc-point, có 3 cơ hội liên tiếp diễn ra ở loạt tie-break ván quyết định, Svitolina đã không thể tận dụng được một cơ hội nào trong số này.

Trong một kết quả đáng chú ý khác, Amra Sadikovic (Thụy Sĩ, hạng 168 thế giới) cũng đã bất ngờ đánh bại Mariana Duque-Marino (Colombia, hạng 81 thế giới, vô địch giải đấu tại Bogota hồi năm 2010) với điểm số 3/6, 7/6 (7-5), 6/4. Đây mới là trận thắng đầu tiên của Sadikovic kể từ năm… 2013 cho đến nay.

Roland Garros tăng 4 triệu euro tiền thưởng

Liên đoàn quần vợt Pháp (FFF) vừa ra tuyên bố cho biết tổng số tiền thưởng ở Roland Garros năm nay sẽ tăng hơn 4 triệu euro so với giải đấu hồi năm ngoái. FFF đã gửi email cho các tờ báo Pháp, trong đó có đoạn viết: “Tổng giá trị giải thưởng của Roland Garros 2016 sẽ là 32.017.500 euro, vượt hơn 14% so với năm ngoái (tổng giá trị giải thưởng của Roland Garros 2015 là 28.028.600 euro)”.

Giám đốc điều hành giải đấu, ông Guy Forget, cho biết: “Lần tăng tiền thưởng đáng chú ý này là lần gia tăng cuối cùng trong cái kế hoạch 4 năm, từ năm 2013 đến năm 2016. Tổng cộng, trong giai đoạn 4 năm này, tiền thưởng của Roland Garros đã tăng với mức lịch sử là 70%, đặc biệt, lượng tiền thưởng được tập trung vào những tay vợt bị loại ngay ở vòng đấu đầu tiên, những người này sẽ nhìn thấy thu nhập của họ được tăng gấp đôi”.

Như vậy, nhà vô địch nam và nữ ở Roland Garros năm nay sẽ nhận được 2 triệu euro tiền thường, nhiều hơn 200 ngàn euro so với tiền thưởng của Stan Wawrinka và Serena Williams ở mùa giải năm ngoái.

Mức tổng tiền thưởng ở các kỳ Grand Slam gần đây nhất

_Wimbledon 2015: 33,69 triệu euro

_US Open 2015: 37,50 triệu euro

_Australian Open 2016: 29,87 triệu euro',
'53.jpg',
'391',
N'Đăng',
'LT11')
insert into Tin values(
'MT54',
N'Monte Carlo Masters 2016: Federer và màn trở lại hoàn hảo',
N'Đã 76 ngày trôi qua kể từ cái lần gần nhất khi mà Roger Federer hiện diện trên sân đấu, nhưng vẫn có vẻ như, anh chưa bao giờ rời xa nơi chốn này.',
'04/15/2016',
N'Đã 76 ngày trôi qua kể từ cái lần gần nhất khi mà Roger Federer hiện diện trên sân đấu, nhưng vẫn có vẻ như, anh chưa bao giờ rời xa nơi chốn này. Bước ra sân đấu tại CLB đồng quê Monte Carlo, xuất hiện lần đầu tiên trên sân đấu kể từ khi để thua đương kim số 1 thế giới Novak Djokovic sau 4 ván đấu ở bán kết Australian Open tại Melbourne Park hôm 28-1, cựu số 1 thế giới người Thụy Sĩ vẫn giữ được sự hứng khởi và tươi mới khi đánh bại hoàn toàn Guillermo Garcia-Lopez (Tây Ban Nha) với điểm số thuyết phục là 6/3 và 6/4. Đó là màn quay trở lại hoàn hảo dành cho Federer.

Sau trận đấu bán kết ở Melbourne Park, Federer dính chấn thương đầu gối chân trái và anh đã phải tiến hành phẫu thuật để chữa trị chấn thương này. Ban đầu, Federer lên kế hoạch “tái xuất giang hồ” ở Monte Carlo Masters, sau đó, do điều kiện thể lực được cải thiện nhanh hơn dự kiến, anh đã lên kế hoạch quay lại sân đấu ở Miami Masters. Dù vậy, “người tính không bằng trời tính”, Federer bị nhiễm vi rút cảm sốt bất ngờ và không thể ra sân ở Crandon Park. Cuối cùng thì, anh cũng phải đành tự hài lòng với cái kế hoạch ngay từ ban đầu - quay lại sân đấu ở Monte Carlo.
Trên sân Rainier III của CLB đồng quê Monte Carlo, tay vợt quê ở Basel cho thấy 76 ngày rời xa sân đấu không khiến anh lục nghề, trái lại, những pha bóng của anh vẫn sắc lẹm như ngày nào, đúng với cái phong cách của Roger Federer. Chỉ duy nhất một lần, Federer có vẻ hơi chùng xuống. Đó là khi anh đánh mất game cầm giao bóng trong nỗ lực sớm kết thúc trận đấu lúc đang dẫn 5/2 trong ván đấu thứ 2. Tuy vậy, đúng 3 game sau, Federer đã thực hiện điều mà anh cần phải làm - khép lại trận đấu ngay khi có cơ hội thứ 2 mà không tốn thêm thời gian để hỏi han hay là thắc mắc.

Khi Federer dính chấn thương đầu gối, nhiều tờ báo đã liên tưởng đến độ nguy hiểm của chấn thương này - cả trong quần vợt lẫn bóng đá - và đặt nghi vấn liệu sự nghiệp của anh đã đến thời kết thúc? Nhưng không phải như vậy. Hay nghe chính xác những gì người trong cuộc giải trình về tình trạng hiện tại của anh.

“Cái đầu gối của tôi đang có cảm giác rất tốt, giống như trong những buổi tập vậy. Cảm giác như thể tôi không cần phải có gì lo lắng về nó cả. Đơn giản, tôi có thể tiến lên một cách đầy thoải mái. Và tôi nghĩ, trong cách thức như vậy, đây là một trận đấu hoàn hảo. Trận đấu tỏ ra khá cân bằng ở thời điểm khởi đầu, sau đó, tôi bắt đầu chơi bóng sảng khoái như nước chảy mây trôi. Điểm số đã được cắt ngắn, không có nhiều tình huống giằng co kéo dài do sự hiệu quả trong các cú giao bóng của tôi trở nên tốt hơn, trả giao bóng cũng trở nên tốt hơn, giao bóng 2 cũng trở nên tốt hơn, tôi đã tận dụng lợi thế từ điều đó. Và cuối cùng, như mọi lần, tôi đã chiến đấu thật sự. Tôi đã trải qua nhiều giai đoạn khác nhau của trận đấu này. Xét về mặt cảm xúc, tôi đã quá phấn khích ở thời điểm khởi đầu trận đấu, đơn giản bởi đây là trận đấu vòng đầu tiên, là trận đấu đầu tiên tôi trở lại sân đấu sau một thời gian vắng bóng quá dài, vì thế, thật tuyệt vời khi có tất cả những cảm xúc này trong suốt trận đấu đầu tiên ở Monte Carlo Masters”.

Tay vợt 34 tuổi người Thụy Sĩ đang sở hữu một thành tích “không quá tồi” ở CLB đồng quê Monte Carlo. Anh từng 4 lần giành được vị trí á quân, đó là trong các năm 2006, 2007 và 2008 (đều để thua Rafael Nadal trong trận đấu chung kết, ở vào thời điểm đó, Nadal đang là “Vua sân đất nện”, là “lãnh chúa bất khả xâm phạm” ở Monte Carlo), và trong năm 2014 (để thua chính tay vợt “đồng hương đàn em” là Stan Wawrinka). Tuy nhiên, là một người “có vai vế” như Federer, việc không giành được danh hiệu ở một giải đấu lớn giàu truyền thống như Monte Carlo Masters chính là một thất bại. Vì thế, Federer đang cố gắng giành danh hiệu Masters 1.000 thứ 25 trong sự nghiệp, nhưng là danh hiệu Monte Carlo Masters “độc nhất vô nhị” trong sự nghiệp của anh.

Federer cho biết sau chiến thắng đầu tay ở Monte Carlo Masters 2016, và cũng là trận thắng thứ 9 trong mùa này: “Tôi nghĩ tôi đã gặt hái được những gì tôi cần. Vì thế, chúng ta hãy chờ xem là liệu tôi có cảm giác như thế nào vào ngày mai, tôi nay, vào cái ngày kế tiếp. Thi thoảng, sau một trận đấu, bạn vẫn còn có cảm giác về nó trong 2, 3 ngày. Ở thời điểm này, tôi hoàn toàn tự tin, tôi đang cảm thấy rất ổn, rất tốt”. Hãy chờ xem, chuyến hành trình của Federer tại Monte Carlo Masters 2016 xa đến đâu, anh có đạt được mục tiêu của mình hay là không, và anh sẽ mang lại thứ cảm xúc gì khi quay trở lại sân đấu sau ca chấn thương đầu gối. Nhìn vào Federer, người ta vẫn hy vọng anh sẽ là lá cờ đầu trong nhiệm vụ chận đứng Djokovic tiếp tục tung hoành thế giới.',
'54.jpg',
'397',
N'Đăng',
'LT11')
insert into Tin values(
'MT55',
N'Kinh hoàng với điều kiện thi đấu ở Fed Cup tại Ai Cập',
N'Trở thành một tay vợt chuyên nghiệp không phải bao giờ cũng là một câu chuyện đầy mộng mơ. Đó là điều đang diễn ra ở… Ai Cập. Ở đất nước này, các tay vợt đến đây thi đấu ngoài việc phải lo lắng tình hình an nguy của bản thân do chủ nghĩa khủng bố đang trỗi dậy mạnh mẽ  thì còn phải quan tâm đến… điều kiện sân đấu.',
'04/15/2016',
N'Tay vợt Steffi Vogt của Liechtenstein vừa mới chia sẻ một hình ảnh kinh hoàng về điều kiện sân đấu ở Ai Cập, nơi một số đội tuyển đang chuẩn bị cho giải Fed Cup vào cuối tuần này. Vogt đã viết bên dưới hình ảnh do chính cô chụp lại là: “Có một số quyết định khó khăn được tạo ra ở đây, tại Fed Cup ở Ai Cập”, nhưng có lẽ, từ  “khó khăn” không thể miêu tả hết thực tại ở đây.
Lý ra, Caroline Wozniacki cũng sẽ phải thi đấu ở Ai Cập cùng với tuyển Đan Mạch, để dọn đường thi đấu ở Olympic Rio de Janeiro vào mùa hè năm nay. Tuy nhiên, tay vợt cựu số 1 thế giới người Đan Mạch mới vừa dính một chấn thương khá nghiêm trọng. Chấn thương là điều xui xẻo, nhưng nếu trông thấy điều kiện sân bãi ở Ai Cập, có lẽ Wozzy sẽ nhận ra cô đã… may mắn đến nhường nào. Điều kiện thi đấu ở Ai Cập khiến người ta liên tưởng đây là nơi tổ chức một giải đấu nghiệp dư nào đó, chứ không phải là nơi tổ chức Fed Cup Nhóm 2…',
'55.jpg',
'407',
N'Đăng',
'LT11')
insert into Tin values(
'MT56',
N'Fed Cup 2016: Pháp và CH Séc vào chung kết',
N'Hai nhân vật chính của trận chung kết Fed Cup năm nay (dự kiến sẽ diễn ra trong 2 ngày 12-11 và 13-11 trên đất Pháp, nhưng địa điểm cụ thể vẫn chưa được xác định) sẽ là tuyển Pháp và tuyển CH Séc.',
'04/19/2016',
N'Tuyển Pháp với sự kết hợp của bộ đôi trẻ trung giàu tài năng là Caroline Garcia và Kristina Mladenovic (đều sinh năm 1993) đã chật vật đánh bại tuyển Hà Lan với tỷ số chung cuộc sát sao là 3-0; trong khi đó, nhà ĐKVĐ CH Séc dù không có Petra Kvitova trong đội hình vẫn đánh bại tuyển Thụy Sĩ có Martina Hingis với chiến thắng 3-2 chung cuộc.
Dù bị dẫn trước 1-2 (Garcia thua Kiki Bertens chỉ sau 2 ván đấu, Mladenovic thắng lại Richel Hogenkamp cũng sau 2 ván đấu nhưng sau đó lại để thua Bertens cũng với tỷ số 0-2), tuyển Pháp vẫn ngược dòng thần kỳ để giành tấm vé chơi trận chung kết đầu tiên kể từ năm 1995. Garcia đã gỡ hòa 2-2 cho tuyển Pháp sau chiến thắng 2-0 trước Arantxa Rus, để rồi, Garcia và Mladenovic cùng sát cánh với nhau để đánh bại Bertens và Hogenkamp với tỷ số 2-1.

Amelie Mauresmo, HLV trưởng kiêm đội trưởng tuyển Pháp tỏ ra rất hạnh phúc. Ít ra, cô cũng nhận ra, cô huấn luyện quần vợt nữ tốt hơn… nam. “Quả là một khoảnh khắc quá tuyệt vời cho  các cô gái, cho tôi và cho cả Ban huấn luyện. Ba năm trước, chúng tôi ở trong một tình huống rất khác. Còn giờ đây, chúng tôi sẽ hiện diện ở chung kết, làm tốt lắm các cô nương à. Họ đã chơi thật tuyệt vời, thật không thể tin nổi. Ngay cả trận đánh đôi cũng không dễ dàng, nhưng họ đã làm xoay chuyển cục diện của trận đấu. Tôi không biết điều đó đến từ đâu, từ rất xa, xin chúc mừng các cô nàng”, Mauresmo tâm sự.

Hồi 3 năm trước, tuyển Pháp rơi xuống trận play-off tranh suất  World Group nhóm 2, giờ đây, họ đã ở chung kết. Hồi 11 năm trước, họ lọt đến trận đấu chung kết nhưng để thua tuyển Nga khi đó có một đội hình cực kỳ hùng mạnh, còn lần này thì sao?

Trong khi đó, tuyển CH Séc tiếp tục chứng tỏ “quyền uy” của nhà vô địch khi lọt đến trận chung kết Fed Cup thứ… 5 trong vòng 6 mùa giải gần đây. Trước đó, tuyển CH Séc đã lập kỷ lục là cứ mỗi lần lọt đến trận chung kết, họ đều đăng quang ngôi vô địch, thắng tuyển Nga 3-2 hồi năm 2011, thắng tuyển Serbia 3-1 hồi năm 2012, thắng tuyển Đức 3-1 hồi năm 2014 và thắng tuyển Nga  3-2 hồi mùa giải năm ngoái. Không có Petra, CH Séc vẫn quá mạnh với Karoline Pliskova và Barboa Strycova trong đội hình, họ đã đánh bại Thụy Sĩ “có Hingis mà như không” (vì không sử dụng cô một trận nào trên sân đấu).

Vào tháng 11 này, khi Petra nhiều khả năng quay trở lại, tuyển CH Séc nhắm đến mục tiêu thắng danh hiệu thứ 5 trong 6 năm qua và cũng là danh hiệu thứ 10 trong lịch sử, biến tuyển CH Séc trở thành đội tuyển có thành tích tốt thứ 2 thế giới, chỉ  sau tuyển Mỹ (thành tích của tuyển CH Séc được gộp chung với cả thành tích cũ của Tiệp Khắc, với 5 ngôi vô địch Fed Cup từ năm 1975 đến năm 1988).',
'56.jpg',
'433',
N'Đăng',
'LT12')
insert into Tin values(
'MT57',
N'Dư âm Monte Carlo Masters 2016: Nhà vua quay trở về',
N'Khi trận đấu chung kết của Monte Carlo Masters 2016 khép lại với chiến thắng thuộc về Rafael Nadal – anh đã đánh bại Gael Monfils với điểm số 7/5, 5/7, 6/0 – cả 4 phía khán đài sân Ranier III như vỡ òa. Nadal, người hùng một thời của CLB đồng quê Monte Carlo đã thật sự quay trở lại.',
'04/19/2016',
N'Anh đã giành lại ngôi vô địch sau 3 năm trời đánh mất nó vào tay của những người khác. Anh đã giành lại Ngai vàng ở Monte Carlo, và chuẩn bị giành lại Ngai vàng trên mặt sân đất nện. “Vua sân đất nện” đang trên đường tìm lại bản ngã của mình…
Nadal đã thống trị CLB đồng quê Monte Carlo suốt từ năm 2005 đến năm 2012. Trong suốt quãng thời gian đó, anh đã liên tục đăng quang 8 ngôi vô địch, lần lượt đánh bại Guillermo Coria, Roger Federer, Novak Djokovic, Fernando Verdasco, David Ferrer trong các trận đấu chung kết. Nhờ vào thành tích “vô tiền khoáng hậu” này, đã có thời điểm, người ta xưng tụng “Vua sân đất nện Nadal” là “Lãnh chúa của Monte Carlo”. Dù vậy, sau khi bị Djokovic chấm dứt chuỗi 46 trận thắng liên tiếp ở chung kết Monte Carlo Masters 2013, Nadal đã lần lượt phải đau đớn chứng kiến “lãnh địa Monte Carlo” rồi cả “vương triều sân đất nện” của anh phải lung lay  và sụp đổ.

Trong suốt thời gian đó, ngôi vô địch Monte Carlo thuộc về “những người khác”, đó là Djokovic (vô địch trong các năm 2013 và 2015) và Stan Wawrinka (vô địch trong năm 2014). Không ai dám nghĩ rằng, Nadal có thể quay trở lại nơi này, đòi lại những gì từng thuộc về mình, cho  đến giải đấu vào năm nay. Nadal đã thật sự quay trở lại!

“Chiến thắng ở đây ngày hôm nay đã xác nhận rằng tôi đang trở nên tốt hơn, và tôi đang rất, rất  hạnh phúc… Đây là một tuần lễ ngập tràn cảm xúc đối với cá nhân tôi, là một sự kiện vô cùng đặc biệt. Monte Carlo là một nơi chốn đặc biệt nhất trong sự nghiệp của tôi, trong cuộc đời của tôi, không có gì phải nghi ngờ về điều đó. Vì thế, đăng quang ngôi vô địch ở nơi này sau 3 năm chờ đợi là một điều vô cùng đặc biệt đối với tôi. Đăng quang ngôi vô địch ở đây lần thứ 9 là một điều gì đó thật là khó tin. Và tôi cần phải giữ vững bước tiến này, Nadal tâm sự.

Có thể nói, chiến thắng ở Monte Carlo Masters tối hôm 17-4 mang một ý nghĩa sống còn đối với Nadal. Đây không chỉ đơn thuần là danh hiệu đầu tiên sau 8 tháng rưỡi khô hạn và khủng hoảng của anh (lần cuối cùng Nadal đăng quang một danh hiệu ATP World Tour đó là ở German Tennis Championships tại Hamburg hồi tháng 8 năm ngoái), đây cũng không chỉ đơn thuần là một chiến thắng để Nadal tìm lại sự tự tin thoát khỏi mùa giải thảm họa đang hiển hiện trước mắt, mà nó là chiến thắng minh chứng rằng, anh vẫn chưa đánh mất năng lực chiến thắng trên mặt sân đất nện ở CLB đồng quê Monte Carlo nói riêng mà cả trong mùa giải  sân đất nện nói chung.

Chiến thắng này giúp Nadal tiến rất sát “tiền bối người Argentina” Guillermo Vilas trên bảng danh sách những tay vợt sở hữu nhiều danh hiệu sân đất nện nhất (anh đang có 48 danh hiệu so với 49 danh hiệu của huyền thoại người Argentina). Nếu có thể đăng quang ngôi vô địch ở Barcelona Open sắp sửa khởi tranh, Nadal  không chỉ cân bằng kỷ lục của Vilas, mà còn có thể đòi lại danh vị “Vua sân đất nện”. Nên nhớ, Barcelona Open cũng là nơi anh từng đăng quang 8 lần và đang nhắm đến danh hiệu  thứ 9. Và từ đó, sau khi đã đòi lại danh vị “Vua sân đất nện”, Nadal sẽ lạc quan hướng về  French Open, nơi anh đã thắng 9 danh hiệu và đang nhắm đến kỷ lục đăng quang lần thứ 10.

Khi cả thế giới cần một khoảng lặng, Djokovic cũng cần một khoảng lặng sau một giai đoạn thống trị quá dài, đây là thời điểm đúng đắn để Nadal hồi sinh, để anh chứng minh rằng, sự nghiệp của anh sẽ không đơn giản kết thúc trong tăm tối như vậy, dù đó có thể chỉ là sự hồi sinh trên mặt sân đất nện, không phải sân cứng, cũng không phải sân cỏ, nhưng điều đó với Nadal là quan trọng đến nhường nào. Lại được trải nghiệm khoảnh khắc ghé răng cắn chiếc cúp vô địch, lại tìm lại được sự tự tin, tìm lại thói quên chiến thắng trên mặt sân đất nện, Nadal đã sẵn sàng, sẵn sàng để quay trở về và tìm lại chính bản ngã của mình.

“Nhà vua” quay trở về, thật sự, anh đã quay trở về! Không chỉ ở Monte Carlo Masters, không chỉ ở Barcelona Open, không chỉ ở Roland Garros, mà ở trọn vẹn mùa giải sân đất nện năm nay.',
'57.jpg',
'495',
N'Đăng',
'LT12')
insert into Tin values(
'MT58',
N'Raonic thắng trận mở màn giải Monte Carlo',
N'Hạt giống số 10 Milos Raonic đã tung ra 13 cú giao bóng ăn điểm trực tiếp để đánh bại tay vợt hưởng suất wild-card là Marco Cecchinato (Italia) với điểm số 6/3 và 7/5 trong một trận đấu vòng 1 của Monte Carlo Masters 2016. Đó là trận đấu mà Cecchinato đã dốc hết sức lực để cứu 2 match-point đầu tiên trước khi thúc thủ trước match-point tiếp theo khi phạm phải lỗi đánh bóng trái tay bị hỏng.',
'04/13/2016',
N'Dù giành chiến thắng, “tay súng trẻ người Canada” vẫn không mấy hài lòng về màn trình diễn của mình. “Tôi đã để bản thân mình sa sút đôi chút trước một đối thủ chủ động chơi phòng ngự khi tôi lùi quá sâu về phía sau sân đấu. Điều đó không cho phép tôi sử dụng lối chơi để sai khiến thế trận. Tôi rơi vào trạng thái phản ứng để trả đòn thay vì phải chiếm tiên cơ tấn công”, Raonic thừa nhận.
Dù sao thì, tay vợt 25 tuổi quê ở Podgorica – Montenegro, trước kia là Titograd thuộc Nam Tư cũ – vẫn nghĩ rằng, mặt sân đất nện là khá phù hợp với lối chơi của anh, bất chấp việc khả năng giao bóng của anh có nhiều sức ảnh hưởng hơn nếu thi đấu trên mặt sân cứng khiến bóng nảy nhanh. Raonic cho biết: “Mặt sân đất nện cho tôi có thêm thời gian. Nó cho phép tôi đứng ngay trước bóng nếu bạn xử lý đúng cách”.

Đối thủ của Raonic ở vòng đấu thứ 2 sẽ là người giành chiến thắng trong cặp đấu giữa Daniel Gimeno-Traver (Tây Ban Nha) và Pablo Cuevas (Uruguay) – trận đấu sẽ diễn ra vào lúc 4 giờ chiều nay, 12-4. Nên nhớ, ở Monte Carlo Masters 2014, Raonic đã lọt đến tận trận đấu tứ kết trước khi thất thủ trước Stan Wawrinka của Thụy Sĩ.',
'58.jpg',
'1001',
N'Đăng',
'LT12')
insert into Tin values(
'MT59',
N'Stan Wawrinka và mùa giải sân đất nện 2016: Mệnh lệnh phải thắng',
N'Mùa giải sân đất nện 2016 sẽ là cơ hội để Stan Wawrinka tiếu tục chứng tỏ rằng, anh vẫn đang là “kẻ phá bĩnh lợi hại đệ nhất thiên hạ”.',
'04/12/2016',
N'Không những vậy, đây cũng chính là thời điểm để anh chứng minh, xét về mặt đẳng cấp, anh thừa sức qua mặt Andy Murray để đứng vào “nhóm bộ tứ”, thay vì tự miêu tả bản thân mình chỉ thuộc “nhóm bộ tứ + 1”. Tay vợt người Thụy Sĩ đang tự tạo ra áp lực với bản thân mình, để thực hiện tham vọng thi đấu cực kỳ thành công trong mùa giải sân đất nện năm nay.

Tay vợt hạng 2 Thụy Sĩ đã trải qua mùa giải 2015 cực kỳ thành công. Đó là mùa giải anh đã đạt được thành tích 55 trận thắng, chỉ chịu 18 trận thua, giành được 4 danh hiệu trong mùa, trong đó có danh hiệu Grand Slam thứ 2 trong sự nghiệp là Roland Garros. Chiến thắng của Wawrinka ở French Open hồi tháng 6 năm ngoái không chỉ giúp anh phá bĩnh tham vọng hoàn tất Career Grand Slam của Novak Djokovic, nó còn biến anh trở thành một tay vợt lớn, những người sở hữu từ 2 danh hiệu Grand Slam trở lên. Ở vào thời điểm này, không phải Rafael Nadal, không phải Roger Federer, người có khả năng chận đứng Djokovic trên mặt sân đất nện tại Grand Slam với thể thức thi đấu 5 ván thắng 3 chỉ có thể là Wawrinka.
Bước vào Monte Carlo Masters 2016 với thành tích 15 trận thắng, 4 trận thua, giành được 2 danh hiệu kể từ đầu mùa (ngôi vô địch Chennai Open và ngôi vô địch Dubai Championships), Stan đã sẵn sàng cho tất cả mọi thách thức, mọi biến cố trước mặt khi mùa giải sân đất nện 2016 đã chính thức khai cuộc. “Ngay cả nếu như tôi có nhiều điểm số phải bảo vệ trong giai đoạn này của mùa giải, áp lực vẫn kéo dài xuyên suốt cả năm. Mục tiêu của tôi là giành quyền tham dự giải đấu tổng kết cuối mùa ATP World Tour Finals, vì thế, tôi phải thắng một cơ số giải đấu đáng kể mỗi dịp cuối tuần”, Wawrinka cho biết.

Monte Carlo Masters 2016 có thể là một giải đấu mang tính then chốt của Wawrinka khi anh theo đuổi mục tiêu trở thành 1 trong 8 tay vợt giỏi nhất năm. Tuy nhiên, Wawrinka không cần hoài nghi bản thân ở đây. Anh, cùng với Djokovic, là 2 tay vợt không phải… Nadal từng lên ngôi ở đây kể từ năm 2005. Wawrinka đã đăng quang Monte Carlo Master 2014 khi đánh bại đàn anh đồng hương Federer với chiến thắng 4/5, 7/6 (7-5), 6/2, khiến Federer vẫn chưa từng lên ngôi tại CLB đồng quê Monte Carlo một lần nào. Ở Monte Carlo, Wawrinka vẫn là một thế lực thật sự, với thành tích 17 trận thắng và 7 trận thua. Thế nên, Wawrinka rất hào hứng chờ đợi từng giây từng phút cho đến khi anh được ra sân ở CLB đồng quê Monte Carlo.

“Đương nhiên, tôi rất hạnh phúc khi được quay trở lại mặt sân đất nện vào mỗi mùa giải. Đây là một mặt sân mà tôi yêu thích. Tôi hạnh phúc với những tiến triển trong khâu tập luyện của tôi tính cho đến thời điểm này. Monte Carlo là một giải đấu đầy thú vị đối với các tay vợt chúng tôi. Sự sắp đặt, sự tổ chức ở đây rất là hoàn hảo. Điều kiện thi đấu ở đây là rất lý tưởng. Và đây lại là một giải đấu Masters 1.000, mà hơn thế nữa, là giải đấu Masters 1.000 đầu tiên trên mặt sân đất nện mùa này, vì thế, tôi phải sẵn sàng và hy vọng có một kết quả tốt”, Wawrinka hào hứng cho biết.

“Nhất cử nhất động” của Wawrinka đang được chú ý sát sao, như những gì người ta đang làm với Djokovic, với Federer và với Nadal. Năm ngoái, Wawrinka đã phá bĩnh khiến Djokkovic chưa thể trở thành vĩ đại, còn mùa giải này thì sao, anh vẫn được xem là người có thể chận đứng tay vợt số 1 thế giới người Serbia ở Paris. Tuy vậy, Stan vẫn dành cho chàng trai người Sergia một cái nhìn cực kỳ trọng thị, anh cho rằng, Djokovic vẫn có một tiêu chuẩn bằng vàng ở ATP World Tour trong những ngày này…

“Đơn giản là phải thật sự ấn tượng, ấn tượng với những gì mà anh ấy đã đạt được tính cho đến thời điểm này. Anh ấy đang ở một đẳng cấp hoàn toàn trên chân so với bất kỳ một tay vợt nào, nhưng điều đáng sợ là, đó lại chẳng phải là cái thông tin gì quá mới mẻ, đó là một điều cũ kỹ, vì Djokovic đã chiếm ưu thế trong vài năm trở lại đây. Nếu các bạn nhìn vào những kết quả, thành tích của anh ấy, anh ấy giỏi hơn so với phần còn lại của thế giới. Nó cũng giống như những gì mà Roger Federer và Rafael Nadal từng tạo ra ở những thời điểm khác trong quá khứ. Anh ấy đang thắng tất cả mọi thứ ngay vào lúc này”, Wawrinka thừa nhận.

Hoặc, Djokovic sẽ không thắng tất cả mọi thứ ở mùa giải sân đất nện năm nay, có thể ngay tại Monte Carlo này, cũng có thể ngay ở Paris, vì Wawrinka cũng đang đi trên con đường muốn cản bước Djokovic. Ở Monte Carlo Masters 2016, Wawrinka được miễn vòng đấu đầu tiên. Anh sẽ chơi trận mở màn của mình ở vòng 2 để chống lại người giành chiến thắng trong cặp đấu giữa Philipp Kohlschreiber hoặc Borna Coric.',
'59.jpg',
'1011',
N'Đăng',
'LT12')
insert into Tin values(
'MT60',
N'Lý Hoàng Nam rơi khỏi tốp 900',
N'Sau chuỗi ngày thăng hoa thì ở bảng xếp hạng mới nhất của quần vợt nam chuyên nghiệp (ATP), Lý Hoàng Nam bị tụt tới 31 bậc.',
'04/12/2016',
N'Đây là lần tụt hạng đáng kể nhất của Lý Hoàng Nam kể từ khi vào bảng xếp hạng ATP. Từ trong nhóm trên tốp 900, Lý Hoàng Nam tụt 31 bậc nên đã xuống đứng vị trí 901 thời điểm hiện tại.
Một trong những lý do mà Hoàng Nam mất điểm trên bảng xếp hạng do ở các giải Men’s Fututes F4, F5 tại Nhật Bản và giải Junior Master tại Trung Quốc mới đây thì tay vợt của chúng ta sớm dừng bước vòng đầu.

Tới đây tại TT-Huế, giải quần vợt nam VĐQG 2016 sẽ tổ chức từ ngày 18 tới 25-4 và dự kiến Lý Hoàng Nam sẽ tham dự tại giải.',
'60.jpg',
'732',
N'Đăng',
'LT12')
insert into Tin values(
'MT61',
N'Bóng chuyền Việt Nam - Còn chút ưu phiền',
N'Vòng 1 giải vô địch quốc gia (VĐQG) và Cúp Hùng Vương vừa khép lại khá vui vẻ, với đội bóng nữ Ngân hàng Công thương lần đầu tiên lên ngôi sau rất nhiều năm, là sự trở lại đầy ấn tượng của Sanest Khánh Hòa ở ngôi số 1 giải nam.',
'04/19/2016',
N'Nhà tổ chức còn hoan hỉ hơn khi chứng kiến Nhà thi đấu thành phố Việt Trì (Phú Thọ) luôn chật kín khán giả trong những trận đấu thuộc hàng đỉnh cao của bóng chuyền Việt Nam.

Đấy là điều đáng mừng, bởi ngoài sự đông đúc và vui nhộn trên các khán đài ở những giải đấu quốc tế, giải mời, sân chơi VĐQG thường niên vẫn chịu cảnh đìu hiu người xem, đến mức nhiều địa phương phải thuê học sinh các trường phổ thông đến ngồi cho khán đài đỡ trống vắng và buồn tẻ.
Hôm rồi, thậm chí ở Phú Thọ còn xảy ra cảnh “cháy vé” xem 2 trận chung kết nam giữa Sanest Khánh Hòa - Biên Phòng và Ngân hàng Công thương - Thông tin LVPB ở giải nữ. Tức là tình yêu của người hâm mộ bóng chuyền đâu có vơi đi, quan trọng là các đội bóng thể hiện khát vọng chiến thắng ra sao, chơi cống hiến như thế nào mà thôi. Song, bên cạnh những chuyện vui và đáng trân trọng ở giải bóng chuyền VĐQG và Cúp Hùng Vương năm nay, vẫn có những “hạt sạn” gây ảnh hưởng đến công tác tổ chức và chất lượng chuyên môn của giải đấu. Nghiêm trọng và có khuynh hướng gia tăng là vấn nạn trọng tài điều hành nhiều trận đấu chưa thực sự công tâm, khiến HLV, VĐV và ngay cả khán giả dự khán cũng bức xúc và bày tỏ thái độ ngay tại các địa điểm thi đấu.

Còn nhớ, cũng ở vòng bán kết Cúp Hùng Vương cách đây vài năm, một trọng tài chính đã bị phát hiện nhận tiền của đội bóng này để “đè chết” đội bóng khác vốn đang có ông Chủ tịch Liên đoàn Bóng chuyền quốc gia, đồng thời là nhà tài trợ chính cho các hoạt động của VFV. Sau đó, vị trọng tài này bị treo còi vĩnh viễn, trở thành bài học xương máu đối với nhiều vị “cầm cân nảy mực” khác.

Cúp Hùng Vương 2016 vừa kết thúc, lại xảy ra điều tiếng về trọng tài. Lần này, chưa có kết luận từ VFV về vụ ông trọng tài người Bến Tre có thổi bất lợi cho đội này, đội kia hay không, nhưng với trình độ cầm còi yếu kém, cộng thêm với những cáo buộc không hay từ nhiều giải đấu trước, VFV cũng nên lắng nghe dư luận và nghiên cứu phương án thải loại kiểu trọng tài “bẩn” này là vừa, để giữ cho môi trường bóng chuyền trong sạch và lấy lại cảm tình của người hâm mộ sau một thời gian dài mất danh, mất giá…',
'61.jpg',
'666',
N'Đăng',
'LT13')
insert into Tin values(
'MT62',
N'Chúng tôi đã có tiền đề thuận lợi cho các giải sau',
N'Oanh tạc cơ” Ngô Văn Kiều là cầu thủ thi đấu hiệu quả nhất ở cúp Hùng Vương 2016. Khép lại một chiến thắng và ngôi vô địch sau trận chung kết với đội Biên phòng, Ngô Văn Kiều đã có những chia sẻ về chiếc cúp Hùng Vương đầu tiên với đội bóng mình.',
'04/18/2016',
N'* Phóng viên: Kiều có thể chia sẻ cảm xúc của mình về chức vô địch cúp Hùng Vương 2016?
- Ngô Văn Kiều: Đây là một chiến thắng rất đáng quý cho chúng tôi. Từ khi lên hạng tới giờ, đội bóng chuyền Sanest Khánh Hòa trước đó chưa một lần vô địch cúp Hùng Vương. Chúng tôi từng vào chung kết một lần nhưng chưa chiến thắng. Lần này, chúng tôi đã toại nguyện. Chiến thắng rất quý giá.

* Sau vòng 1 giải VĐQG 2016 và những khởi đầu tại cúp Hùng Vương, nhiều người vẫn nghi ngại về khả năng của S.Khánh Hòa. Là chủ công mũi nhọn của đội, Kiều đánh giá thế nào về lực lượng đội bóng mình lúc này?

Chúng tôi từ đầu năm 2016 được chuyển nhượng một số cầu thủ từ những đội khác về thi đấu, chính vì thế độ gắn kết ban đầu chưa được cao. Tuy nhiên, chúng tôi may mắn khi mũi nhọn Từ Thanh Thuận về với đội thi đấu hiệu quả. Thuận được gọi là “thùng thuốc pháo” và những trận qua thì cầu thủ này biết “nổ” đúng lúc. Tôi nghĩ trong thời gian tới, khi cầu thủ chơi với nhau nhuần nhuyễn hơn thì bộ máy vận hành sẽ hiệu quả. 

* Trận chung kết với nam Biên phòng có phải là trận đấu hay và hiệu quả nhất của S.Khánh Hòa từ đầu mùa bóng 2016 tới nay?

- Cũng có thể nói về điều ấy. Tại vì ở vòng 1 giải VĐQG 2016 thi đấu ở Yên Bái cách đây chưa lâu, chúng tôi đã có những chiến thắng nhưng là khó khăn. Trong thời điểm đó đội bóng chưa ăn khớp với nhau. Sau khi được làm việc với nhau quen hơn, khi trở về Phú Thọ thi đấu, chúng tôi phát huy được phần nào năng lực sức mạnh tập thể. 

* Tại cúp Hùng Vương trong một số thời điểm, khán giả thấy Kiều luôn nói nhỏ với các cầu thủ, đó là liệu pháp khích lệ tinh thần đồng đội?

- Với tư cách là đội trưởng trên sân, tôi chỉ nói với đồng đội rằng chúng ta đang thi đấu ở một trận đấu lớn. Tất cả anh em hãy bình tĩnh đừng tự làm mình căng cứng. Một trận đấu lớn thì 2 đội có chuẩn bị rất tốt nên với đội bóng khi đã thắng, dẫn trước 2 ván đấu thì tới ván thứ 3 cầu thủ phải giữ được nhịp độ, tránh hưng phấn quá mức mà mất lợi thế.

- Mùa giải 2016 vẫn còn nhiều phía trước, S.Khánh Hòa liệu có thể chạm tay vào chức vô địch quốc gia năm nay?

* Tôi tin, ngôi vô địch cúp Hùng Vương 2016 là tiền đề lớn để chúng tôi đi tới những giải tiếp theo mạnh mẽ hơn như cúp Đạm Phú Mỹ 2016 và vòng 2 giải VĐQG 2016.',
'62.jpg',
'1012',
N'Đăng',
'LT13')
insert into Tin values(
'MT63',
N'Ngày 4 Cúp Hùng Vương 2016: Sanest Khán Hòa đô địch, VTV Bình Điền đứng thứ 3',
N'Ở ngày thi đấu thứ 4 Cúp Hùng Vương 2016, Sanest Khánh Hòa đã đánh bại Biên Phòng để giành chức vô địch nội dung của nam. Trong khi đó VTV Bình Điền Long An nhọc nhằn vượt qua Tiến Nông Thanh Hóa để đứng hạng 3.',
'04/18/2016',
N'Ngày 17/4, Cúp bóng chuyền Hùng Vương 2016 bước vào ngày thi đấu thứ 4. Đây cũng là ngày thi đấu cuối cùng của giải đấu năm nay. Tâm điểm trong ngày thi đấu này là cuộc đối đầu giữa Sanest Khánh Hòa gặp Biên Phòng ở trận chung kết nội dung của Nam. 

Trong trận đấu tối qua, cả HLV Triệu Tử Thiên của Sanest Khánh Hòa và HLV Trần Đình Tiền của Biên Phòng đã tung vào sân đội hình mạnh nhất có trong tay. Với Sanest Khánh Hòa, hai tay đập được đặt kỳ vọng là Ngô Văn Kiều và Từ Thanh Thuận. Ở phía bên kia chiến tuyến, niềm hy vọng của Biên Phòng là Ngọc Kiên và cựu danh thủ quốc gia Nguyễn Hữu Hà.

Trong trận đấu tối qua, với sự xuất sắc của chuyền 2 Nguyễn Thành Đạt đã giúp Sanest Khánh Hòa dễ dàng giành quyền kiểm soát thế trận trước Biên Phòng. Chuyền 2 của CLB Công An Phú Thọ đã có một ngày thi đấu biến hóa và liên tục có những đường chuyền chính xác cho Thanh Thuận và Văn Kiều để xé toang hàng chắn của Biên Phòng. Đội bóng phố Biển đã giành thắng lợi ở hai set đầu tiên với điểm số lần lượt là 25-19 và 25-16.  

Trong set thi đấu thứ 3 Biên Phòng đã vùng lên mạnh mẽ với sự tỏa sáng của Hữu Hà, đội bóng áo lính đã liên tục dẫn điểm giai đoạn đầu set đấu. Tuy nhiên, khi ổn định được thế trận, Sanet Khánh Hoà đã phát huy rất tốt sức mạnh của Từ Thanh Thuận và Ngô Văn Kiều và đoàn quân của HLV Triệu Tử Thiên đã vượt qua đối thủ khi 2/3 set đấu trôi qua và giành thắng lợi với điểm số 25-21, ấn định thắng lợi chung cuộc 3-0.

Với chiến thắng này, Sanest Khánh Hòa đã lần đầu tiên giành chức vô địch tại Cúp Hùng Vương. Hy vọng lần đầu tiên giành chức vô địch ở giải đấu này của Biên Phòng sẽ phải chờ thêm ít nhất 1 năm nữa.

Trong khi đó, ở trận phân hạng 3 của nữ tối qua, VTV Bình Điền Long An dù được đánh giá cao hơn đối thủ rất nhiều nhưng cũng gặp rất nhiều khó khăn để đánh bại Tiến Nông Thanh Hóa với tỷ số chung cuộc 3-1.

Ở trận đấu tối qua, các tay đập của Tiến Nông Thanh Hóa đã thi đấu rất hưng phấn ở set 1 để giành thắng lợi với điểm số 25-21. Đội bóng xứ Thanh tiếp tục khiến Ngọc Hoa cùng các đồng đội gặp khó khăn trong set hai trước khi đội bóng miền Tây có thể giành thắng lợi trong set đấu với điểm số 26-24, để cân bằng tỷ số 1-1.

Chiến thắng trong set hai giúp các tay đập VTV Bình Điền Long An thi đấu tự tin hơn ở hai set sau đó để giành thắng lợi trước đối thủ với điểm số lần lượt là 25-13 và 25-22, để đứng vị trí thứ 3 chung cuộc nội dung của nữ.

Như vậy sau 4 ngày thi đấu Cúp Hùng Vương 2016 đã xác định được những nhà vô địch ở mùa giải năm nay. Ở nội dung của nữ, Ngân hàng Công thương giành chức vô địch xứng đáng sau chiến thắng trước Thông Tin Liên Việt Postbank ở trận chung kết. Trong khi đó, Sanest Khánh Hòa cũng hoàn thành mục tiêu của mình sau nhiều năm chờ đợi ở giải đấu này khi có chiến thắng thuyết phục 3-0 trước Biên Phòng ở trận chung kết.',
'63.jpg',
'1013',
N'Đăng',
'LT13')
insert into Tin values(
'MT64',
N'VTV Bình Điền Long An nhọc nhằn đánh bại Tiến Nông Thanh Hóa',
N'Sở hữu đội hình được đánh giá cao hơn, nhưng VTV Bình Điền Long An phải rất nhọc nhằn giành thắng lợi trước Tiến Nông Thanh Hóa để đứng vị trí thứ 3 chung cuộc tại Cúp Hùng Vương 2016.',
'04/18/2016',
N'Sau khi trở thành cựu vương tại Cúp Hùng Vương 2016 do để thua Thông tin Liên Việt Postbank ở trận bán kết. Tối qua, Ngọc Hoa cùng các đồng đội tại VTV Bình Điền Long An bước vào trận đấu phân hạng 3 với Tiến Nông Thanh Hóa. Bước vào trận đấu này, đội bóng xứ Thanh tỏ ra rất quyết tâm sau khi bị trọng tài chính tước suất vào chơi trận chung kết ở trận bán kết 1 với Ngân hàng Công thương. 

Trong trận đấu tối qua, HLV Nguyễn Quốc Vũ của VTV Bình Điền Long An và Lê Thị Bình của Tiến Nông Thanh Hóa đã tung vào sân đội hình mạnh nhất có trong tay. Hai đội đã rượt đuổi điểm số ở ngay set thi đấu đầu tiên. Với những tiến bộ trong lối chơi, đội bóng xứ Thanh đã khiến các tay đập VTV Bình Điền Long An gặp rất nhiều khó khăn trong set thi đấu thứ nhất trước khi giành thắng lợi với điểm số 25-21.

Sau chiến thắng ở set 1, Tiến Nông Thanh Hóa tiếp tục giữ được sự ổn định trong lối chơi ở đầu set hai. Tuy nhiên, khi VTV Bình Điền Long An chỉnh đốn lại đội hình đoàn quân của HLV Nguyễn Quốc Vũ đã lấy lại thế trận và giành thắng lợi ở set đấu này với điểm số sát nút 26-24, cân bằng tỷ số 1-1.

Do phải rượt đuổi tỷ số với VTV Bình Điền Long An ở hai set đầu tiên, các tay đập Tiến Nông Thanh Hóa đã không giữ được thế trận trong set 3 và để thua nhanh chóng với điểm số 13-25.

Với quyết tâm đưa trận đấu vào set 5 quyết định, Lê Thị Hồng cùng các đồng đội bên phía Tiến Nông Thanh Hóa đã thi đấu quyết tâm trong set thi đấu thứ 4. Tuy nhiên, ở set đấu này, Ngọc Hoa cùng các đồng đội bên phía VTV Bình Điền Long An tiếp tục duy trì được sự ổn định cần thiết để giành thắng lợi với điểm số 25-22, ấn định thắng lợi chung cuộc 3-1 để đứng vị trí thứ 3 chung cuộc ở mùa giải năm nay.

Dù để thua trước VTV Bình Điền Long An ở trận phân hạng 3 Cúp Hùng Vương 2016. Nhưng giới chuyên môn đánh giá với những gì đã thể hiện trước Ngân hàng Công Thương ở trận bán kết trước đó, đoàn quân của HLV Lê Thị Bình đã cho thấy sự tiến bộ rất lớn ở mùa giải năm nay. Nếu tiếp tục duy trì được sự ổn định của mình, Tiến Nông Thanh Hóa sẽ trở thành một ứng viên thực sự trong cuộc đua vô địch nội dung của nữ tại giải vô địch quốc gia 2016.

Ở trận chung kết nam diễn ra sau đó, với sự tỏa sáng của bộ đôi Từ Thanh Thuận và Ngô Văn Kiều, CLB Sanest Khánh Hòa đã giành thắng lợi 3-0 trước Biên Phòng để lần đầu tiên trong lịch sử giành chức vô địch tại Cúp Hùng Vương.',
'64.jpg',
'1015',
N'Đăng',
'LT13')
insert into Tin values(
'MT65',
N'Sanet Khánh Hoà lần đầu vô địch Cúp Hùng Vương',
N'CLB Sanet Khánh Hoà đã lần đầu tiên trong lịch sử giành chức vô địch Cúp Hùng Vương khi giành thắng lợi 3-0 trước Biên Phòng ở trận chung kết tối ngày 17/4.',
'04/18/2016',
N'Tối ngày 17/4, Cúp Hùng Vương 2016 đã diễn ra trận chung kết nội dung của nam giữa Sanet Khánh Hoà gặp Biên Phòng. Đây là trận đấu được giới chuyên môn và fan hâm mộ chờ đợi bởi cả hai đội đang sở hữu những chủ công hàng đầu của bóng chuyền Việt Nam. Với Sanet Khánh Hoà, HLV Triệu Tử Thiên có trong tay Ngô Văn Kiều và Từ Thanh Thuận. Ở phía bên kia lưới HLV Trần Đình Tiền có trong tay Ngọc Kiên và cựu tuyển thủ quốc gia Nguyễn Hữu Hà đang gây ấn tượng rất lớn khi trở lại với sàn đấu dù anh đã bước sang tuổi 35. 

Do hai đội đang sở hữu những chủ công hàng đầu của bóng chuyền nam Việt Nam, giới chuyên môn và fan hâm mộ đã hy vọng trận đấu sẽ diễn ra hấp dẫn và kịch tính. Tuy nhiên, ở trận đấu tối qua, Sanet Khánh Hoà với sự tỏa sáng của cặp chủ công Ngô Văn Kiều và Từ Thanh Thuận đã sớm áp đảo được thế trận nhờ sự xuất sắc của chuyền 2 Nguyễn Thành Đạt. Chuyền 2 của CLB Công An Phú Thọ đã có một ngày thi đấu biến hóa và liên tục có những đường chuyền chính xác cho Thanh Thuận và Văn Kiều.

Ở phía bên kia lưới, Hồng Quân phối hợp ăn ý với Hữu Hà, hai đội đã có cuộc rượt đuổi điểm số kịch tính ở khoảng thời gian đầu set đấu. Tuy nhiên, càng về cuối, các tay đập Sanet Khánh Hoà là những người phối hợp ăn ý tốt hơn và liên tục tạo nên bất ngờ. Lần lượt Thanh Thuận là điểm sáng rồi Văn Phong và Văn Kiều liên tiếp nổ súng khiến Biên Phòng không thể bắt kịp. Đội bóng phố Biển đã giành thắng lợi ở hai set đầu tiên với điểm số lần lượt là 25-19 và 25-16. Đây là điểm số khá bất ngời với fan hâm mộ cũng như ngay chính với bản thân hai đội.

Trong set thi đấu thứ 3 Biên Phòng đã vùng lên mạnh mẽ với sự tỏa sáng của Hữu Hà, đội bóng áo lính đã liên tục dẫn điểm giai đoạn đầu set đấu. Tuy nhiên, khi ổn định được thế trận, Sanet Khánh Hoà đã phát huy rất tốt sức mạnh của Từ Thanh Thuận và Ngô Văn Kiều và đoàn quân của HLV Triệu Tử Thiên đã vượt qua đối thủ khi 2/3 set đấu trôi qua và giành thắng lợi với điểm số 25-21, ấn định thắng lợi chung cuộc 3-0.

Với chiến thắng này, Sanet Khánh Hoà đã lần đầu tiên trong lịch sử giành chức vô địch tại Cúp Hùng Vương, trong khi đó, mục tiêu lần đầu tiên vô địch giải đấu này của Biên Phòng sẽ phải chờ thêm ít nhất 1 năm nữa. Tuy nhiên, với 6.000 fan hâm mộ có mặt ở nhà thi đấu tối qua, đây là một trận đấu hấp dẫn và kịch tính khi những ngôi sao số 1 của bóng chuyền Việt Nam như Hữu Hà, Văn Kiều, Thanh Thuận hay Ngọc Kiên đã thi đấu xuất sắc.

Trước trận chung kết nam, CLB VTV Bình Điền Long An cũng đã có cuộc lội ngược dòng thành công để giành thắng lợi với tỷ số 3-1 trước Tiến Nông Thanh Hóa với điểm số lần lượt là 21-25; 26-24; 25-13; 25-22 để đứng vị trí thứ 3 chung cuộc nội dung của nữ.',
'65.jpg',
'1016',
N'Đăng',
'LT13')
insert into Tin values(
'MT66',
N'Nguyễn Phúc Đan Vy vượt khó để thành công',
N'Tại giải cầu lông đồng đội hỗn hợp toàn quốc 2016, đội TPHCM với nhiều tay vợt trẻ do HLV Nguyễn Thế Huy dẫn dắt. Hiện nay, TPHCM đang tập trung cho 8 tay vợt có trình đội  chuyên môn tốt như: Hải Đăng, Hoàng Quân, Anh Thư, Thủy Tiên, Lâm Mỹ Tiên, Lê Khanh, Hà Thy và Đan Vy.',
'04/19/2016',
N'Trong đó, nổi bật trên hết là tay vợt nữ Nguyễn Phúc Đan Vy nằm trong tuyến trẻ được Liên đoàn cầu lông TPHCM đầu tư trọng điểm. Chưa đầy 14 tuổi, thế nhưng Đan Vy đã có trong tay hàng loạt danh hiệu dành cho các VĐV trên 16 tuổi. Đặc biệt, là  bộ sưu tập huy chương dày cộm của Đan Vy: HCĐ giải thiếu niên nhi đồng toàn quốc, giải các vợt trẻ xuất sắc: HCB đơn nữ, HCĐ đôi nữ năm 2014; năm 2015 đoạt HCĐ giải trẻ ở nội dung đôi nữ và HCV giải thành phố mở rộng vừa qua… Với những thành tích ấn tượng đó, Đan Vy cho thấy mình đầy tiềm năng và có thế thay thế đàn chị Lê Ngọc Nguyên Nhung từng “làm mưa làm gió” ở làng cầu lông nữ Việt Nam trước kia.
Năm 2016, Liên đoàn Cầu lông TPHCM đã đưa tên Đan Vy cùng tám tay vợt trẻ khác vào chương trình đầu tư trọng điểm. Trước đó, chuyên gia Agus Dwi Santoso (Indonesia) từng rất ấn tượng với phong cách thi đấu của Đan Vy và cho rằng tay vợt này rất triển vọng. Trong hai năm gần đây, tự Đan Vy và các đồng đội tự bỏ tiền túi ra Thái Lan, Singapore du đấu để có được cơ hội cọ xát cùng các tay vợt nổi tiếng thế giới. Đan Vy bộc bạch: “Cầu lông như là nước trong con người em, dù trời mưa hay nắng em cũng phải ra sân và đổ mồ hôi với trái cầu xong mới về ôn luyện bài vỡ để sáng mai đến trường học văn hóa”.

Vượt khó để thành công là tâm huyết mà tay vợt trẻ Đan Vy hằng ngày tâm niệm. Vừa học văn hóa vừa tập cầu lông đỉnh cao, và hiện tay vợt Đan Vy đang thuyết phục gia đình để bước thêm bước nữa là chuyển hẳng sang chơi cầu lông đỉnh cao. Theo HLV Thanh Hải, thì “Đan Vy đã thể hiện sự tiến bộ vượt bậc trong thời gian gần đây. Đặc biệt, là ở giải Thái Lan vừa rồi Đan Vy di chuyến thanh thót, ít tốn sức hay lối chơi gài cầu thông minh để thắng đối thủ một cách nhanh nhất. Đấy chính là ưu điểm đáng kể của tay vợt trẻ Đan Vy”.',
'66.jpg',
'965',
N'Đăng',
'LT14')
insert into Tin values(
'MT67',
N'Nguyễn Tiến Minh gặp khó ở giải vô địch châu Á',
N'Vào ngày 24-4, Tiến Minh sẽ bước vào thi đấu giải vô địch cầu lông cá nhân châu Á 2016 tổ chức tại Vũ Hán (Trung Quốc). Giải này quy tụ đầy đủ những tay vợt mạnh nhất châu lục hiện tại như Chen Long (Trung Quốc), Lin Dan (Trung Quốc), Lee Chong Wei (Malaysia).',
'04/16/2016',
N'Theo bốc thăm, ở vòng 1, Tiến Minh gặp đối thủ vượt qua vòng loại ở bảng C. Nhánh của Tiến Minh có hạt giống đơn nam số 2 là Lin Dan. Nếu chiến thắng trận đầu, nhiều khả năng Minh gặp Lin Dan ngay tại vòng 2. Đây là một thách thức cho Tiến Minh bởi tay vợt người Trung Quốc này khá mạnh.

Tại giải cá nhân châu Á 2016, cầu lông nam Việt Nam còn có Phạm Cao Cường góp mặt nhưng phải dự vòng sơ loại.

Ở giải nữ, Vũ Thị Trang có tên trong vòng đấu chính giải đơn. Cô gặp Bae Yeon Ju (Hàn Quốc) tại vòng 1. Đáng chú ý, Trang thuộc nhánh của hạt giống số 2 Nozomi Okuhara (Nhật Bản) và có thể sẽ đụng độ ngay trong vòng 2. Trang hiện đang đứng vị trí 46 thế giơi còn Bae Yeon Ju hạng 12 thế giới và Nozomi là hạng 4 thế giới.

Giải cầu lông cá nhân vô địch châu Á 2016 thi đấu tới hết ngày 1-5.

* Tại bảng xếp hạng mới nhất của liên đoàn cầu lông quốc tế (BWF) công bố ngày 14-4, Tiến Minh tăng thêm 1 bậc, lên đứng vị trí 34 thế giới thời điểm hiện tại. Thời gian qua, tay vợt cầu lông nam số 1 Việt Nam đã đăng ký thi đấu một số giải tại New Zealand, Phần Lan. Mới nhất ở giải Phần Lan mở rộng, Tiến Minh đã vào chung kết đơn nam.',
'67.jpg',
'966',
N'Đăng',
'LT14')
insert into Tin values(
'MT68',
N'Giảỉ cầu lông Phần Lan Challenge 2016: Tiến Minh hạt giống số 1',
N'Nhằm kiếm điểm giữ suất dự Olympic vào tháng 8 tới, hai tay vợt  Nguyễn Tiến Minh và Vũ Thị Trang tham dự giải khơi tranh ngày hôm nay.',
'04/07/2016',
N'Do đây là giải có trình độ thấp nên Tiến Minh đang đứng hạng 36 thế giói được xếp làm hạt giống số 1 nội dung đơn nam. Anh sẽ có lợi thế là gặp tay vợt đứng đầu nhóm 1 vòng loại ở trận đầu tiên. Trong khi đó, Vũ Thị Trang được xếp làm hạt giống số 5 nội dung đơn nữ sẽ gặp tay vợt nước chủ nhà Phần Lan Mikkela. Ngòai ra, Việt Nam còn có các tay vợt của Hà Nội như lê Thị Huyền tham dự vòng loại đơn nữ, Hồng Nam/Thu Huyền, Tuấn Đúc/Như Thảo dụ vòng chính đôi nam nữ, Tuấn Đúc/Hồng Nam dự đôi nam.',
'68.jpg',
'967',
N'Đăng',
'LT14')
insert into Tin values(
'MT69',
N'Phát triển chưa đồng bộ',
N'Kể từ sau SEA Games 2003 đến nay, đại hội thể thao lớn gần nhất mà Việt Nam đăng cai là Asian Indoor Games năm 2009.',
'04/04/2016',
N'Sau khi không thể đăng cai ASIAD 2019, Việt Nam được chọn là nước chủ nhà  Đại hội thể thao bãi biển châu Á 2016, nhìn cứ tưởng là đi lên, thật ra là… đi giật lùi. Sau hơn 10 năm kể từ lần đầu tư rầm rộ nhất, đến nay, Việt Nam không có thêm nhiều cơ sở vật chất hiện đại, đẳng cấp quốc tế khi phải đối diện với bài toán “hậu đại hội” để tránh lãng phí. Ngay cả việc tổ chức một đại hội thể thao toàn quốc hiện nay cũng làm đau đầu các nhà quản lý, bởi sự phát triển chuyên nghiệp không theo kịp khả năng đầu tư cơ sở vật chất.
Như ở Đà Nẵng, Cung thể thao Tiên Sơn được xây dựng hiện đại hàng đầu Đông Nam Á nhằm phục vụ Đại hội thể thao toàn quốc 2010, nhưng địa phương này lại không hề có một CLB nào thuộc các môn thể thao trong nhà, chơi ở các giải đấu hàng đầu Việt Nam. Trường hợp tương tự cũng diễn ra tại Nam Định, Ninh Bình sau Đại hội Thể dục thể thao 2014.

Về yếu tố con người, thành tích đặc biệt thì có, như trường hợp của VĐV Nguyễn Thị Ánh Viên, nhưng bên cạnh đó, lại xuất hiện những khoảng trống kế thừa. Điển hình như VĐV Nguyễn Tiến Minh thi đấu chuyên nghiệp 10 năm qua, chuẩn bị giải nghệ nhưng cầu lông Việt Nam cũng chẳng có VĐV nào có thể sống được bằng nghề, còn Liên đoàn cầu lông không đủ tiền thuê HLV ngoại để nâng cao thành tích. Ở môn bóng chuyền, đến tuổi xế chiều sự nghiệp, thủ quân đội tuyển Việt Nam Nguyễn Thị Ngọc Hoa mới sang Thái Lan chơi bóng và khá thành công. Tuy nhiên, hiện chỉ mới có thêm một VĐV nữ khác được phía bạn mời sang thi đấu.

2. Có được một VĐV đạt đẳng cấp quốc tế đã khó, nên nếu không tận dụng được cơ sở vật chất để thúc đẩy phong trào thể thao thì đó là sự lãng phí rất lớn. Bài học ở các môn có tính phổ quát cao như bóng đá, bóng chuyền đã chỉ rõ: Nếu không xây dựng được nền tảng chuyên nghiệp trong thể thao đỉnh cao thì chắc chắn sẽ tạo ra các khoảng trống lớn giữa phong trào và thành tích cao. Người tham gia có tăng nhưng nếu VĐV không sống được bằng nghề thì phần đỉnh cao sẽ teo tóp.

Từ khi có Nghị quyết 08-NQ/TW của Bộ Chính trị ban hành năm 2011 đến nay, thể thao Việt Nam đã có những sự phát triển đáng ghi nhận. Tuy nhiên, trong 6 nhiệm vụ được nêu trong Nghị quyết 08 thì có đến 4 lĩnh vực vẫn chưa thể hiện được vai trò của cơ quan quản lý nhà nước. Đặc biệt, mục tiêu phát triển thể thao chuyên nghiệp thông qua việc phát huy vai trò của các liên đoàn, tổ chức thể thao hầu như giẫm chân tại chỗ. Lấy ví dụ ở các môn bóng đá, bóng chuyền, trong 5 năm qua, số doanh nghiệp hoặc CLB thành lập mới ở sân chơi chuyên nghiệp chỉ đếm trên đầu ngón tay, số trung tâm đào tạo cầu thủ không tăng, trong khi số lượng giải thể hoặc ngừng đầu tư lại gấp 3-4 lần.

Nguyên Tổng cục trưởng Tổng cục TDTT Lê Bửu từng chỉ ra nguyên nhân, đó là ngành thể thao đến nay vẫn chưa có một nghiên cứu khoa học nào để nhà nước đầu tư mạnh hơn cho thể thao đỉnh cao, từ đó như một đòn bẩy chiến lược nhằm giải quyết các vấn đề xã hội trong lĩnh vực sức khỏe, y tế, giáo dục… Đây cũng là lý do mà quá trình xã hội hóa thể thao khá chậm do những ưu đãi cho nhà đầu tư trong lĩnh vực thể thao không có gì đặc biệt.',
'69.jpg',
'969',
N'Đăng',
'LT14')
insert into Tin values(
'MT70',
N'Tiến Minh lọt vào vòng 3 giải New Zealand mở rộng',
N'Tay vợt Nguyễn Tiến Minh lọt vào vòng 3 đơn nam giải New Zealand mở rộng đang thi đấu tại quốc gia này.',
'03/24/2016',
N'Trong kết quả mới nhất, Tiến Minh thắng Vicent Tong (New Zealand) 2 - 0 (21/1, 21/4) và gặp đối thủ Fikri Ihsandi Hadmadi (Indonesia) tại vòng thứ 3. Giải này, Tiến Minh là hạt giống đơn nam số 9.
Về nữ, Vũ Thị Trang sẽ gặp Bae Yeon Ju (Hàn Quốc, hạt giống số 3) tại vòng 2 đơn nữ. Trước đó, ở nội dung đôi nam, đôi Dương Bảo Đức/Bảo Minh đã bị loại ngay vòng 1 do thua cặp của Trung Quốc với tỉ số 0-2.

Trong năm nay, Nguyễn Tiến Minh sẽ thi đấu khoảng 16 giải quốc tế lớn nhỏ khác nhau. Lãnh đạo bộ môn cầu lông (Tổng cục TDTT) cho biết, từ nay đến khi danh sách VĐV dự Olympic 2016 được chốt chính thức (đầu tháng 5), Tiến Minh và Vũ Thị Trang vẫn dự nhiều giải quốc tế để tích điểm duy trì thứ hạng. Vào tháng 4, Minh và Trang dự giải quan trọng là vô địch cá nhân châu Á 2016 tại Trung Quốc.',
'70.jpg',
'334',
N'Đăng',
'LT14')
insert into Tin values(
'MT71',
N'Đá văng Lê Văn Duẩn, Nguyễn Thành Tâm chiếm cả 3 danh hiệu áo vàng, áo xanh, áo đỏ',
N'Tay đua Nguyễn Thành Tâm (Gạo Hạt Ngọc Trời An Giang) khẳng định sức mạnh toàn diện ở chặng 8 giải xe đạp truyền hình TP.HCM do Tôn Đông Á tài trợ diễn ra sáng nay từ TP.Huế đi TP.Đà Nẵng (dài 109 km).',
'04/18/2016',
N'Nếu ở chặng 7, Nguyễn Thành Tâm để Lê Văn Duẩn (VUS TP.HCM) áp sát thời gian áo vàng lẫn điểm thưởng áo xanh thì ở chặng 8, tay đua An Giang đã đánh bật Lê Văn Duẩn khỏi cuộc cạnh tranh áo vàng. 

Nắm bắt điểm yếu Lê Văn Duẩn không mạnh đường đèo, Nguyễn  Thành Tâm cùng các đồng đội tổ chức tấn công loại bỏ Lê Văn Duẩn. Không những thành công khi bỏ lại Lê Văn Duẩn ở tốp sau với khoảng cách hơn 3 phút, Nguyễn Thành Tâm còn vượt qua Nguyễn Tấn Hoài (Dược Domesco Đồng Tháp), cán đích đầu tiên ở đỉnh đèo Hải Vân đoạt luôn danh hiệu áo chấm đỏ-vua leo núi.

Sau khi đổ đèo Hải Vân, với lợi thế hơn người lẫn hơn thế trận, các tay đua Gạo Hạt Ngọc Trời An Giang, Quân khu 7 gia tăng tốc độ kéo tốp đầu với hơn 20 tay đua về đích. Tại đích đến TP.Đà Nẵng, tay đua Quân khu 7 Huỳnh Thanh Tùng xuất sắc cán đích đầu tiên, giành danh hiệu thắng chặng. Thành tích này trên giúp tay đua 20 tuổi giữ vững danh hiệu áo trắng dành cho tay đua trẻ xuất sắc nhất. Về hạng nhì cũng là tay đua trẻ 19 tuổi Nguyễn Minh Việt (Bình Dương).

Trong khi đó Nguyễn Thành Tâm về chung tốp đầu nên bảo vệ thành công danh hiệu áo vàng dành cho tay đua có thời gian thi đấu ít nhất và danh hiệu áo xanh dành cho tay đua có nước rút tốt nhất. Cùng tới việc đoạt thêm danh hiệu áo chấm đỏ-vua leo núi, Nguyễn Thành Tâm cho thấy anh đang là tay đua toàn diện nhất làng xe đạp Việt Nam.

Ngày mai các tay đua tranh tài chặng Đà Nẵng-Quảng Ngãi dài 133 km.',
'71.jpg',
'556',
N'Đăng',
'LT15')
insert into Tin values(
'MT72',
N'Vòng 6 Giải đua xe mô tô 110cc- 125cc- 135cc- 150cc Cúp VĐQG 2016: Ngôi hậu đổi chủ',
N'Vòng 6 Giải đua xe Mô tô 110cc - 125cc - 135cc - 150cc Cúp vô địch Quốc gia năm 2016 do Liên đoàn Xe đạp - Mô tô Thể thao Việt Nam phối hợp Sở VH TT và DL tỉnh Trà Vinh tổ chức. Tham gia có 16 VĐV hệ chuyên nghiệp nam 125cc, 24 VĐV Hệ 110cc bán chuyên nam và 9 VĐV Hệ 110cc bán chuyên Nữ.',
'04/18/2016',
N'Sức hút của giải vẫn chính là cuộc so kè của các tay đua nữ. Những tưỡng với những gì đã thể hiện được trong thời gian qua, tay đua Trần Thị Đoan Trang chắc chắn sẽ bảo vệ được danh hiệu vô địch của mình. Đoan Trang thi đấu ấn tượng ngay từ đầu, tuy nhiên một bất ngờ lớn đã xuất hiện trên sân Trà Vinh. Sau 5 chức vô địch liên tiếp thì ở vòng 6 tổ chức ở SVĐ Trà Vinh, tay đua Trần Thị Đoan Trang đã không thể bảo vệ được ngôi hậu của mình sau khi để cho tay đua Lưu Thị Thu Trang vượt qua ở đích đến. Đây là một phần thưởng được xem như là xứng đáng khi mà tay đua mang số 46 thuộc CLB Hải Bình Tân đã có được sự chuẩn bị tốt nhất cho vòng đua lần này 

Trong khi đó ở nội dung nam cũng tranh tài không kém gay cấn. Các tay đua xuất sắc nhất luôn nhận được sự ủng hộ và cổ vũ nhiệt tình của hơn 3000 khán giả có mặt trên sân. Kết quả tay đua Đồng Quốc Tài (04) CKJ CLB Red Leo Racing đoạt chức vô địch ở hệ 125cc. Sức trẻ cộng với sự thi đấu nổ lực đã giúp tay đua trẻ  Nguyễn Tiến Duy (31) CLB Hải Bình Tân đoạt chức vô địch ở hệ 110cc bán chuyên Nam.',
'72.jpg',
'557',
N'Đăng',
'LT15')
insert into Tin values(
'MT73',
N'Chặng 7 giải Xe đạp Cúp truyền hình TPHCM 2016: Lê Văn Duẩn thắng áo vàng Nguyễn Thành Tâm trong gang tấc',
N'Sáng nay, chặng đua thứ 7 vòng quanh Tràng Tiền-Phú Xuân (TP.Huế) dài 42 km tại giải xe đạp truyền hình TP.HCM do Tôn Đông Á tài trợ diễn ra đầy hấp dẫn với chiến thắng ngoạn mục của "vua nước rút" Lê Văn Duẩn (VUS TP.HCM).',
'04/17/2016',
N'Ngay từ sáng sớm, người dân TP.Huế đã tập trung về cung đường Tràng Tiền-Phú Xuân, chọn cho mình những chỗ đừng mát mẻ để cổ vũ cho đoàn đua. Thời tiết khá nóng cũng không làm không khí phấn khích của người hâm mộ 2 bên đường. Các tay đua cũng nỗ lực bung sức với những màn bứt phá kịch tính. 

Với mục tiêu bảo vệ áo vàng cho Nguyễn Thành Tâm, đội Gạo Hạt Ngọc Trời An Giang làm đầu tàu kéo đoàn đua ngay từ khi xuất phát. Vẫn như những chặng đua trước, những tay đua không tranh chấp áo vàng, áo xanh với Nguyễn Thành Tâm được phép bứt đi. Tuy nhiên nỗ lực của các tay đua này chỉ giúp họ giành chiến thắng ở những điểm rút dọc đường.

Cách đích 3 km, đoàn đua nhập thành một tốp đông. Lúc này cuộc chiến tại đích đến hứa hẹn hấp dẫn giữa những tay đua chuyên về nước rút như Nguyễn  Thành Tâm, Lê Văn Duẩn, Đỗ Tuấn Anh (Dược Domesco Đồng Tháp), Lê Nguyệt Minh (Mathasium TP.HCM).

Em trai của Lê Văn Duẩn là Lê Nguyệt Minh tung ra những guồng chân mạnh mẽ lao về đích và bám sát phía sau là Lê Văn Duẩn và Nguyễn Thành Tâm. Cú lơi chân của Lê Nguyệt Minh tạo cơ hội cho Lê Văn Duẩn và Nguyễn Thành Tâm vọt lên, cán đích cùng lúc sau 58 phút 26 giây tranh tài. Pha so kè nước rút thần tốc của Lê Văn Duẩn và Nguyễn Thành Tâm khiến người xem khó phân biệt được ai là người chiến thắng. Phải đến khi xem lại băng ghi hình tại đích đến, các trọng tài mới xác định được người thắng chặng là Lê Văn Duẩn.

Đây là lần thứ 3 tại giải Lê Văn Duẩn giành chiến thắng. Rất thú vị khi đây cũng là lần thứ 3 liên tiếp anh cán đích đầu tiên ở vòng đua Tràng Tiên-Phú Xuân tại TP.Huế. "Tôi rất có duyên với chặng đua ở TP.Huế nên rất tự tin khi thi đấu ở vỏng đua này. Cảm ơn các đồng đội đã hỗ trợ hết mình để tôi có chiến thắng hôm nay", Lê Văn Duẩn nói sau chiến thắng.

Về địch hạng nhì nên Nguyễn Thành Tâm tiếp tục bảo vệ thành công áo vàng sau 7 chặng tuy nhiên tay đua Lê Văn Duẩn đã rút ngắn xuống chỉ kém 3 giây so với áo vàng. Chỉ một chiến thắng như thế này ở chặng đua tới, tay đua TP.HCM sẽ chiếm áo vàng của Nguyễn Thành Tâm. Ở cuộc cạnh tranh áo xanh, Lê Văn Duân cũng rút ngắn khoảng cách xuống còn 6 điểm so với Nguyễn Thành Tâm. Các danh hiệu khác không thay đổi khi VUS TP.HCM nhất đồng đội, Huỳnh Thanh Tùng (Quân khu 7) giữ áo trắng cho tay đua trẻ xuất sắc.

Ngày mai diễn ra chặng đua Huế-Đà Nẵng dài 109 km. Đây là chặng đua then chốt khi các tay đua phải chinh phục đèo Hải Vân dài 20 km và có độ cao 500m so với mực nước biển.',
'73.jpg',
'650',
N'Đăng',
'LT15')
insert into Tin values(
'MT74',
N'Cuộc giao lưu đầy cảm xúc của đoàn đua giải xe đạp truyền hình TP.HCM tại làng SOS Thừa Thiên Huế',
N'Sáng nay, đoàn đua giải xe đạp truyền hình TP.HCM do Tôn Đông Á tài trợ đã có buổi gặp mặt, thăm, động viên và tặng quà đầy cảm xúc tại làng SOS Thừa Thiên Huế (37, Lê Ngô Cát).',
'04/16/2016',
N'Trong khi chờ các thành viên đoàn đua đến, các em tại làng SOS đã tự tay viết, vẽ lên quả bong bóng những ước mơ, khao khát của mình. Mọi người không khỏi xúc động khi chứng kiến những mong ước rất đỗi giản dị của các em. "Em muốn gia đình mình luôn hạnh phúc", "em muốn học giỏi thành bác sĩ", "em muốn trở thành họa sĩ", "em muốn ra trường có việc làm" "con muốn trở thành cảnh sát", "con muốn trở thành cầu thủ bóng đá tài hoa"...Và sau khi trò chuyện với các tay đua, đặc biệt là tay đua đang giữ áo vàng Nguyễn Thành Tâm, một số em thổ lộ ước mơ trở thành tay đua xe đạp chuyên nghiệp.

Được tiếp xúc với các em, tay đua Nguyễn Thành Tâm cho biết do thường đi tập huấn, thi đấu xa nhà nên mình phần nào đồng cảm với cảnh phải xa gia đình của các em. "Các em may mắn được chăm sóc, nuôi dưỡng, học hành tại làng SOS. Với môi trường tốt như vậy, mong rằng các em sẽ học giỏi để thành tài", Nguyễn Thành Tâm nói. Tay đua Nguyễn Hoàng Thái (Dược Domesco Đồng Tháp) bùi ngùi nói: "Được tiếp xúc với các em tôi thầy mình rất may mắn khi có gia đình hạnh phúc ấm êm. Vì thế tôi nguyện nỗ lực hết mình để không phụ lòng bố mẹ. Mong rằng các em dù thiếu tình thương gia đình nhưng được xã hội chăm lo nên sẽ vơi đi phần nào những thiếu thốn về tinh thần". Ông Lê Văn Phú- Phó trưởng Ban tổ chức giải đại diện đoàn đua cảm ơn các thầy cô, bảo mẫu tại làng SOS đã tận tình chăm lo cho các em, giúp các em có được bước khởi đầu tốt làm hành trang bước vào đời. "Chúng tôi rất hạnh phúc khi được chung tay làm những việc như thế này, đó là sự kết nối rất nhân văn giữa đoàn đua với xã hội. Chúc cho các em học giỏi, trở thành những nhân tài nước nhà", ông Lê Văn Phú cho biết.

Tổng giám đốc Công ty CP Tôn Đông Á Nguyễn Thanh Trung, đơn vị tài trợ cuộc đua và bỏ ra 200 triệu đồng tặng làng SOS tại chuyến thăm này cho biết: "Tôi rất vui khi giải đấu đang diễn ra thành công khi qua 1/3 chặng đường. Những nơi đoàn đua đến trong suốt hành trình từ Hà Nội về TP.HCM, Tôn Đông Á đều có hoạt động thiện nguyện nhằm giúp đỡ các em có hoàn cảnh khó khăn với tổng số tiền là 1 tỉ 70 triệu đồng. Riêng tại làng SOS Thừa Thiên Huế, chúng tôi trao tặng 200 triệu. Tôi rất vui khi thấy các em được chia sẻ từ các VĐV, các thành viên đoàn đua. Nhiều em khi gặp các anh VĐV xe đạp đã thổ lộ ước mơ sau này sẽ trở thành tay đua chuyên nghiệp. Như thế chúng ta đã san sẻ, lan tỏa được niềm đam mê xe đạp nói riêng, thể thao nói chung đến với các em. Tôi cảm nhận các em tại đây không cô đơn khi có đoàn đua bên cạnh. Tôn Đông Á mong muốn đóng góp nhiều hơn nữa trong những hoạt động như thế này".

Phó giám đốc làng SOS Thừa Thiên Huế, bà Nguyễn Thị Kim Dung thay mặt cho "gia đình" SOS cảm ơn đến Ban tổ chức, nhà tài trợ Tôn Đông Á cùng các mạnh thường quân đã quan tâm đến các em có hoàn cảnh đặc biệt. "Buổi giao lưu chắc chắn để lại cho các em những cảm xúc, trải nghiệm mới. Từ đây các em sẽ có động lực, nuôi dưỡng những khát khao để chăm ngoan, học giỏi, trở thành những người có ích cho gia đình, xã hội", bà Nguyễn Thị Kim Dung san sẻ.

Đáp lại tấm lòng của đoàn đua, các em nhỏ tại làng SOS Thừa Thiên Huế đã biểu diễn những tiết mục văn nghệ "cây nhà lá vườn" gồm Trống Cơm, Gia đình nhỏ-hạnh phúc to, Trái đất này là của chúng mình. Ban tổ chức cùng nhà tài trợ cũng trồng cây lưu niệm của đoàn đua tại làng SOS sau đó thăm nhà ở của  các em.

Sau này nghỉ đầy ý nghĩa hôm nay, ngày mai các tay đua sẽ tranh tài chặng 6 vòng quanh Phú Xuân-Tràng Tiền (TP. Huế) dài 42 km.',
'74.jpg',
'651',
N'Đăng',
'LT15')
insert into Tin values(
'MT75',
N'Cuộc đua xe đạp Cúp truyền hình TPHCM năm 2016: Niềm đam mê bất tận',
N'Đang có một công việc với lương tháng gần 10 triệu đồng và ổn định, thế nhưng cựu tay đua nổi tiếng Trần Hùng của đội Cảng Sài Gòn đã bỏ tất cả chỉ để được đồng hành cùng các tay đua ở tất cả các giải đấu trong nước, đặc biệt là Cúp Truyền hình TPHCM...',
'04/16/2016',
N'Thời còn thi đấu trong màu áo Công nhân Hóa chất (1989 - 1991), rồi Cảng Sài Gòn (1996 - 1999), Trần Hùng không có vinh dự mặc chiếc áo vàng dù anh là tay đua được đánh giá rất mạnh. Thi đấu gan lì, thể lực tốt nhưng không quá giỏi về nước rút, Trần Hùng thường được phân nhiệm vụ làm “máy kéo” để hỗ trợ đồng đội. Do vậy, trong thời ấy, người ta biết nhiều hơn đến Võ Hải Thanh, Nguyễn Văn Hiệp, Đỗ Thành Đạt bởi những thành tích họ đạt được, nhưng ít ai biết rằng thành công đó có sự hỗ trợ thầm lặng của Trần Hùng trong vai trò “máy kéo”.

Chính HLV Huỳnh A, người đã dẫn dắt Cảng Sài Gòn nhiều năm liền vô địch Cúp Truyền hình, nói: “Khi đó chúng tôi là tập thể mạnh và đồng đều. Từng người đều có khả năng như nhau nhưng quan trọng là biết hy sinh vì cái chung. Trần Hùng là dạng cua rơ như vậy, rất âm thầm bọc lót để mang vinh quang về cho đồng đội”. Cuối năm 1999, Trần Hùng rời đường đua và được tạo điều kiện làm việc ở Cảng Sài Gòn. Không học hành, chẳng bằng cấp do dành tất cả tuổi trẻ cho xe đạp, Hùng phải chấp nhận vào làm ở bộ phận bốc xếp.

Đó là khoảng thời gian đầy cơ cực, nhưng với ý chí của một cua rơ từng thấm bao nỗi nhọc nhằn trong tập luyện lẫn thi đấu, hơn nữa lại đứng trước áp lực lo cho cuộc sống thời hậu đỉnh cao, Hùng cắn răng chịu đựng. Nhiều đêm nằm suy nghĩ, anh thấy không thể “bằng lòng” với hiện tại. Thế là Hùng tìm cách vươn lên khi quyết định tiếp tục đi học để lấy bằng tốt nghiệp phổ thông ở tuổi... 32! Nhờ có mảnh bằng này mà Trần Hùng được chuyển sang bộ phận kiểm đếm, thoát khỏi vai công nhân bốc xếp. Đồng lương nhờ thế cũng có chút cải thiện.

Nhọc nhằn mưu sinh là vậy nhưng Trần Hùng vẫn không bỏ xe đạp. Hùng tâm sự: “Dù xa rời đường đua nhưng tôi vẫn luôn quan tâm đến môn thể thao lôi cuốn này. Tôi không thể “sống” nếu thiếu xe đạp, niềm đam mê bất tận của cuộc đời mình. Tôi vẫn theo dõi đầy đủ từng giải đấu và sự phát triển phong trào, sự tiến bộ của từng cua rơ và luôn có mặt ở hầu hết các giải lớn nhỏ để quan sát và động viên các VĐV thi đấu”.

***
Mỗi năm xe đạp nam Việt Nam có tầm 7 giải, giải nào Trần Hùng cũng có mặt trên đường đua. Khó khăn lớn nhất của Trần Hùng là sắp xếp công việc để tham dự các giải đấu. Bởi lẽ đặc thù của các tour xe đạp là dài ngày, như Cúp Truyền hình TPHCM kéo dài gần 20 ngày trong khi mỗi năm anh chỉ có 12 ngày nghỉ phép. Tính ra năm nào Hùng “trốn việc” cũng gần 3 tháng để đồng hành cùng các cua rơ. Song, anh vẫn vui vẻ: “Ở cơ quan nhiều người biết tôi mê xe đạp và không thể bỏ khi các cuộc đua diễn ra nên đều động viên tôi phải luôn sắp xếp công việc cho tốt, đảm bảo tiến độ, tránh gây ảnh hưởng kế hoạch, sau đó thuyết phục các sếp cho nghỉ không lương”.

Trò chuyện với Trần Hùng, càng thấm lòng đam mê xe đạp của cựu cua rơ này. Ở các giải đấu, Trần Hùng đều đi cùng đội BVTV Sài Gòn hoặc Eximbank TPHCM và nay là VUS TPHCM - nơi đồng đội cũ Đỗ Thành Đạt làm HLV trưởng. Đi cùng đội, làm đủ vai từ săn sóc viên, tiếp tế, trợ lý huấn luyện viên... nhưng Trần Hùng chủ động không nhận một đồng lương nào từ đội, bởi “được có mặt trên đường đua, được gặp lại những gương mặt thân quen, được nhìn thấy các thế hệ đàn em thi đấu đã là niềm vui”.',
'75.jpg',
'652',
N'Đăng',
'LT15')
insert into Tin values(
'MT76',
N'NBA 2015-2016: Warriors đi vào lịch sử',
N'Với chiến thắng có điểm số 125-104 trước Memphis Grizzlies, Golden State Warriors đã đi vào lịch sử như là đội bóng có số trận thắng nhiều nhất trong một mùa giải của NBA (chỉ tính vòng bảng).',
'04/16/2016',
N'Stephen Curry và các đồng đội oai hùng đã kết thúc vòng bảng năm nay với chiến tích 73 trận thắng – 9 trận thua, nhiều hơn thành tích của huyền thoại một thời là Chicago Bulls ở NBA mùa giải 1995-1996 đúng 1 trận thắng.
Curry tiếp tục là đầu tàu của Warriors, anh đã ghi được 46 điểm, góp công rất lớn giúp cho đội nhà giành chiến thắng. Với kết quả này, Curry cũng đã tạo dựng ra được kỷ lục cho riêng bản thân mình, anh đã đạt cột mốc 400 cú ném 3 điểm thành công, phá sâu kỷ lục 286 cú ném 3 điểm thành công mà anh từng xác lập ở mùa giải năm ngoái. Với khả năng ghi điểm siêu phàm của Curry, Warriors không thắng mới là lạ.

“Chúng tôi là một nhóm tuyệt vời bao gồm những chàng trai rất là tuyệt vời, mọi người đều cố gắng tốt hơn nữa qua từng ngày. Điều đó thật sự đã thúc đẩy chúng tôi tiến lên phía trước. Đây quả là một chuyến hành trình quá đỗi tuyệt diệu, và tôi cảm thấy cực kỳ tự hào khi được đứng chung hàng ngũ với những chàng trai này trong cái đội ngũ quá tuyệt vời này”, Curry hạnh phúc cho biết.

Về phần mình, HLV Steve Kerr cũng vinh dự trở thành người đầu tiên góp mặt trong cả 2 đội hình đội bóng làm nên lịch sử của NBA suốt 20 năm qua, ông là cầu thủ của Chicago Bulls hồi mùa giải 1995-1996, và giờ đây, ông là HLV trưởng của Golden State Warriors. Ông nói: “Tôi đã bị sốc. Tôi đã từng nghĩ cái kỷ lục ngày xưa sẽ tồn tại mãi mãi. Những gì họ làm thật là tuyệt vời. Tôi đã nói điều này hồi 20 năm trước và khi đó, tôi không nghĩ sẽ có ai phá được kỷ lục này. Chicago Bull hồi đó là một tập thể tuyệt vời giống như hôm nay. Rõ ràng, chiến thắng này, kỷ lục này là điều chúng tôi muốn làm”.

Huyền thoại Michael Jordan từng hiện diện trong đội hình Chicago Bulls năm xưa đã tán dương Warriors hết mực: “Tôi muốn chúc mừng họ về một mùa giải quá tuyệt vời. Bóng rổ luôn tiến hóa và các kỷ lục được tạo ra để bị phá bỏ. Đội bóng Warriors này có rất nhiều điều thú vị để xem, để theo dõi. Và tôi sẽ hào hứng chờ xem rằng, họ sẽ làm được gì ở lượt đấu play-off sắp sửa khởi tranh”.

Trong một diễn biến đáng chú ý khác, Kobe Bryant đã có trận đấu giã từ sự nghiệp chơi bóng chuyên nghiệp bằng một màn trình diễn “đã đời”, anh đã ghi được 60 điểm giúp Los Angeles Lakers đánh bại Utah Jazz với điểm số 101-96. Anh đã giúp LA Lakers chấm dứt chuỗi 6 trận toàn thua và sẽ kết thúc sự nghiệp sau 20 năm cống hiến.',
'76.jpg',
'1232',
N'Đăng',
'LT16')
insert into Tin values(
'MT77',
N'Bóng rổ Việt Nam chuyển mình',
N'Đầu năm 2016, Hiệp hội Bóng rổ nhà nghề Mỹ (NBA) thông báo thành lập Ban cố vấn Jr. NBA Asia với mục tiêu phát triển bóng rổ trẻ, gia tăng số lượng trẻ em chơi bóng rổ và phát triển lối sống lành mạnh thông qua các hoạt động thể thao tại khu vực châu Á.',
'02/16/2016',
N'Thành viên của Jr. NBA Asia bao gồm những lãnh đạo cấp cao của doanh nghiệp và tổ chức cộng đồng cũng như các nhà kinh doanh thể thao ở môn bóng rổ. Chủ tịch Liên đoàn Bóng rổ Việt Nam - ông Nguyễn Bảo Hoàng - đã được chọn trở thành thành viên trong Ban cố vấn.

Ông Dikembe Mutombo, huyền thoại bóng rổ thế giới, đại sứ toàn cầu của NBA cho biết: “Mục tiêu của Jr. NBA là truyền cảm hứng cho thanh thiếu niên, rèn luyện họ thành những người khỏe mạnh và hoàn hảo. Là người dành trọn đời ủng hộ việc rèn luyện thể thao lâu dài và tin tưởng vào khả năng gây ảnh hưởng đến việc thay đổi tích cực, tôi rất vui khi được tham gia vào Ban cố vấn Jr. NBA châu Á và có cơ hội làm việc với các nhà lãnh đạo cũng như các ông chủ các tập đoàn lớn nổi tiếng nhất châu Á để duy trì và làm cho chương trình Jr. NBA ngày càng phát triển".
Theo ông Levy, một thành viên khác của Ban cố vấn, “đối tượng của Jr. NBA là trẻ em phụ huynh, các nhà giáo dục và các nhà hoạch định chính sách trong khu vực Đông Nam Á, với mục tiêu nhằm nhấn mạnh tầm quan trọng của lối sống lành mạnh, những lựa chọn vì sức khỏe, và chia sẻ các giá trị tích cực của thể thao. Chúng tôi cam kết mở rộng chương trình Jr. NBA bằng việc thành lập Ban cố vấn Jr. NBA châu Á để chỉ đạo và phát triển chương trình. Khao khát phát triển cộng đồng địa phương của các thành viên trong Ban cố vấn sẽ được lan truyền tới các cộng đồng nhằm mang lại sự thay đổi cuộc sống cho hàng triệu người trên khắp khu vực”.

Với việc ông Nguyễn Bảo Hoàng đại diện Liên đoàn Bóng rổ Việt Nam góp mặt trong hội đồng Ban cố vấn tới từ Giải bóng rổ chuyên nghiệp hàng đầu thế giới NBA, chúng ta hy vọng trong tương lai những thế hệ trẻ tại Việt Nam sẽ có thêm nhiều điều kiện và cơ hội được phát triển thể chất và kỹ năng thông qua luyện tập thể thao, góp phần tạo ra những lứa vận động viên chất lượng cho nền bóng rổ Việt Nam trong tương lai.',
'77.jpg',
'1233',
N'Đăng',
'LT16')
insert into Tin values(
'MT78',
N'Giải bóng rổ nhà nghề Đông Nam Á năm 2016: Quà mừng xuân mới',
N'Tối qua 29-1, Saigon Heat đã thi đấu trận thứ 8 trên sân nhà mùa giải ABL 2015-2016, đụng đối thủ HiTech Bangkok City. Đây là cơ hội để các cầu thủ Saigon Heat giành chiến thắng và tri ân các cổ động viên nhà nhân dịp đón xuân mới.',
'01/30/2016',
N'Trong 6 lần gặp các đội bóng từ Thái Lan tại ABL 2015-2016, Saigon Heat đã có thành tích 3 chiến thắng và 3 lần thất bại. Điều đó phần nào cho thấy đội bóng đại diện Việt Nam hoàn toàn có đủ khả năng cạnh tranh sòng phẳng với Thái Lan tại sân chơi khu vực. Đặc biệt hơn nữa khi người hâm mộ Saigon Heat được chứng kiến màn ra mắt ấn tượng của tân binh Paul Williams sở hữu chiều cao 2,1 m trong trận đấu đầu tiên của anh tại sân nhà. Sự xuất hiện của cầu thủ cao to này đã giúp Saigon Heat giành chiến thắng ấn tượng 94-90 trước đội ĐKVĐ HiTech Bangkok City.
Sau trận, HLV Anthony Garbelotto đã chia sẻ: “Trận gặp HiTech Bangkok City rất quan trọng. Khán giả của Saigon Heat luôn là những cổ động viên tuyệt vời, và tôi chắc chắn rằng tất cả các cầu thủ cũng cảm nhận được điều đó khi thi đấu trên sân. Toàn thể đội bóng đã chơi một trận thật hay để giành chiến thắng trước nhà ĐKVĐ HiTech Bangkok City để tri ân các cổ động viên trung thành trước mùa xuân về - những người đã đồng hành cùng Saigon Heat trong suốt 14 trận đấu đã qua tại Giải bóng rổ nhà nghề Đông Nam Á”.',
'78.jpg',
'1333',
N'Đăng',
'LT16')
insert into Tin values(
'MT79',
N'Giải vô địch bóng rổ nhà nghề Đông Nam Á năm 2015: Saigon Heat đánh bại Mono Vampire',
N'Thua 2 trận liên tiếp trước Hitech Bangkok City và Singapore Slingers buộc Sài Gòn Heat phải thắng Mono Vampire mới duy trì tham vọng lọt vào tốp 3.',
'12/21/2016',
N'Trở lại sau chấn thương, cầu thủ Thụy Điển gốc Việt, Nguyễn Tuấn Tú đã chơi xuất sắc. Tối 18- 12, Tuấn Tú là người kiến tạo nhiều nhất: 6 pha, ghi 7 điểm. 

Sự trở lại của Tuấn Tú đã giúp lối chơi của đội bóng HLV Anthony biến hóa hơn. Tuấn Tú sở hữu một thể hình lý tưởng cùng những đường chuyền thông minh, uy lực. Cùng với sự tiến bộ của những Hán Minh, Quang Trung, Sài Gòn Heat có thể mạnh dạn đặt niềm tin vào các nội binh. 

Không chỉ riêng Tuấn Tú, trận tiếp Mono Vampire cũng ghi nhận phong độ chói sáng của William Creekmore. Số 2 của Sài Gòn Heat dù chơi hậu vệ nhưng đã bất ngờ ghi đến 22 điểm tối 18-12. Và lần đầu tiên trong mùa giải này, Creekmore làm được điều đó. Một hậu vệ khác là Morgan Moses cũng lên tiếng với 21 điểm, là người có số điểm nhiều thứ 2 của chủ nhà tối qua. 

Trong trận đấu này, Sài Gòn Heat cũng đã khắc phục được nhược điểm nhập cuộc chậm chạp của họ khi hiệp đầu họ dẫn đối thủ 24-18. 3 set còn lại, họ phòng thủ phản công sắc bén khiến Mono Vampire lúng túng. Điều đáng nói là dù đang sở hữu danh hiệu ĐKVĐ giải bóng rổ nhà nghề Thái Lan, xếp trên cả ĐKVĐ ABL Hitech Bangkok City nhưng Mono Vampire lại non kinh nghiệm ở sân chơi khu vực. 

Ở mùa ABL này, Mono Vampire dù có đội hình không yếu nhưng họ đã thua 8 và chỉ biết thắng 2 trận sau 10 lượt đấu. Trận gặp Sài Gòn Heat tối qua, trung phong Anthony McClain đã ghi đến 29 điểm (nhiều nhất trận này) nhưng vẫn không cứu nổi CLB Thái lan. 

Sau trận thua chủ nhà tối qua, Mono Vampire vẫn ở vị trí áp chót. Họ xếp trên CLB của Philippines, Pilipinas Kings. Trong khi đó, Sài Gòn Heat đã có 3 trận thắng và 5 trận thua, tiếp tục bám đuổi tốp 3. Trận thắng Mono Vampire là trận thắng thứ 2 của Sài Gòn Heat ở mùa giải này, cách biệt lần này thậm chí còn đậm hơn khi tỷ số là 90-79. Một chiến thắng đẹp trước lễ giáng sinh của Sài Gòn Heat để tri ân CĐV nhiệt thành của CLB.',
'79.jpg',
'1050',
N'Đăng',
'LT16')
insert into Tin values(
'MT80',
N'Trực tiếp bóng rổ Saigon Heat vs Westports Malaysia Dragons',
N'Cùng thethaovietnam.vn theo dõi trực tiếp trận bóng rổ giữa Saigon Heat và Westports Malaysia Dragons trong khuôn khổ giải nhà nghề Đông Nam Á 2015.',
'11/28/2015',
N'Saigon Heat đã không có khởi đầu tốt ở mùa giải năm nay khi họ đã để thua ¾ trận đầu tiên ở mùa giải. Tin vui với các fan hâm mộ bóng rổ Việt Nam là ở trận đấu này Saigon Heat nhiều khả năng sẽ chào đón sự ra mắt của chàng PG Nguyễn Tuán Tú (Stefan Nguyen). Tuấn Tú đã trải qua quá trình điều trị chấn thương dài và buộc phải nghỉ thi đấu 4 trận đầu tiên của mùa giải, anh đã trở lại tập luyện cùng đội hơn 2 tuần qua nhưng do để đảm bảo không tái phát chấn thương HLV Anthony đã không dám mạo hiểm sử dụng anh ở 2 trận đấu gặp Mono Vampire và HiTech BangKok. 

Trong khi đó, Thành Nhân cũng đã hồi phục chấn thương gặp phải 3 tuần trước và hi vọng anh sẽ kịp trở lại trong trận đấu ngày hôm nay. Ngoài ra, những cầu thủ quan trọng khác của đội như Việt Arnold, Moses Morgan, Will Creekmore mặc dù có dấu hiệu xuống sức ở trận đấu gặp HiTech BangKok tuần trước (do phải thi đấu liên tục với cường độ cao ở 3 trận liên tiếp) nhưng cũng đã lấy lại thể trạng tốt nhất.

Với sự cổ vũ của các fan hâm mộ, đoàn quân của HLV Anthony được đặt kỳ vọng sẽ giành thắng lợi trong trận tiếp đón Westports Malaysia Dragons trên sân nhà ngày hôm nay.',
'80.jpg',
'1051',
N'Đăng',
'LT16')
insert into Tin values(
'MT81',
N'Thông tin và dự đoán kết quả trận Celtic vs Malmo, play-off Champions League',
N'Đoàn quân của HLV Ronny Deila đang hướng đến lợi thế trước chuyến làm khách trên đất Thụy Điển vào tuần tới bằng cuộc tiếp đón Malmo trên sân nhà Celtic Park ở trận lượt đi play-off Champions League vào rạng sáng mai (19/8).',
'08/19/2015',
N'Dưới đây là những thông tin quan trọng và dự đoán kết quả trận Celtic gặp Malmo ở vòng play-off Champions League 2015/16: 

SỐ LIỆU THỐNG KÊ
 
- Đây là lần gặp nhau đầu tiên của Cetic và Malmo
 
- Cả Celtic và Malmo đều là những nhà vô địch ở mùa giải trước của Scotland và Thụy Điển.
 
- Ở đấu trường C1/Champions League, thành tích tốt nhất của Celtic là vô địch năm 1967 và á quân năm 1970.
 
- Dù là đội bóng không mấy tên tuổi những thập kỷ gần đây, nhưng Malmo đã từng giành ngôi á quân cúp C1 mùa giải 1978-79. Đội bóng Thụy Điển đã 14 lần tham dự vòng bảng C1/Champions League.
 
- Để lọt vào vòng play-off mùa giải này, Celtic đã vượt qua Qarabag FK với tỉ số 1-0 sau 2 lượt trận. Trong khi đó, Malmo đã loại Red Bull Salzburg một cách kỳ diệu sau khi để thua 0-2 trên đất Áo và lượt về đánh bại đối thủ 3-0.
 
- Celtic vẫn bất bại tại giải Scottish Premiership sau 4 vòng đấu, kiếm được 10 điểm và hiện xếp thứ 2 sau Hearts.
 
- Trận gần nhất Celtic đánh bại Inverness CT 4-2 với cú đúp của Stuart Armstrong và 2 pha lập công của Mikael Lustig, Leigh Griffiths.
 
- Dù Malmo vô địch ở mùa giải trước, nhưng đoàn quân của HLV Age Hareide sa sút ở mùa này khi chỉ có 37 điểm và đang xếp thứ 5 trên BXH sau 20 vòng đấu.
 
- 5 trận đã qua Malmo bất bại tại giải quốc nội với 3 trận thắng, 2 trận hòa.
 
Phong độ gần đây của Celtic

SCO PR 15/08/15 Celtic 4-2 Inverness C.T
SCO PR 13/08/15 Kilmarnock 2-2 Celtic
SCO PR 09/08/15 Partick Thistle 0-2 Celtic
UEFA CL 06/08/15 Qarabag 0-0 Celtic
SCO PR 01/08/15 Celtic 2-0	Ross County
UEFA CL 30/07/15 Celtic 1-0 Qarabag
INT CF 25/07/15	Celtic 2-0 Stade Rennais FC
UEFA CL 23/07/15 Stjarnan Gardabaer	1-4 Celtic
INT CF 18/07/15	Eibar 1-4 Celtic
UEFA CL 16/07/15 Celtic 2-0 Stjarnan Gardabaer
INT CF 11/07/15 Celtic(N) 1-0 Real Sociedad

Phong độ gần đây của Malmo

SWE D1 15/08/15 Malmo FF 2-0 Gefle IF
SWE D1 09/08/15 Malmo FF 2-1 IFK Goteborg
UEFA CL 06/08/15 Malmo FF 3-0 Red Bull Salzburg
SWE D1 01/08/15 Atvidabergs F 2-2 Malmo FF
UEFA CL 30/07/15 Red Bull Salzburg 2-0 Malmo FF
SWE D1 25/07/15 Malmo FF 3-0 GIF Sundsvall
UEFA CL 22/07/15 FK Zalgiris Vilnius 0-1 Malmo FF
SWE D1 18/07/15 Orebro 1-1 Malmo FF
UEFA CL 16/07/15 Malmo FF 0-0 FK Zalgiris Vilnius
SWE D1 11/07/15 Malmo FF 2-2 Orebro
 
TÌNH HÌNH LỰC LƯỢNG
 
Celtic
 
- Nadir Ciftci nhiều khả năng sẽ đá chính sau khi ra sân trong trận gặp Inverness cuối tuần qua.
 
- Hậu vệ Charlie Mulgrew sẽ trở lại đội hình xuất phát.
 
Malmo
 
- Hàng thủ Celtic phải đề phòng với bộ đôi Markus Rosenberg và Jo Inge Berget khi cả 2 đều đã có 7 bàn thắng trong mùa giải này.
 
- Tiền vệ trụ cột người Ghana Enock Kofi Adu bị treo giò trận lượt đi sau khi nhận thẻ đỏ trong chiến thắng 3-0 trước Salzburg.
 
ĐỘI HÌNH DỰ KIẾN:

Celtic: Gordon; Mulgrew, Boyata, Van Dijk, Izaguirre; Bitton, Brown; Mackay-Steven, Johansen, Griffiths; Ciftci
 
Malmo: Wiland; Tinnerholm, Arnason, Bengtsson, Yotun; Rodic, Lewicki, Carvalho, Berget; Djurdic, Rosenberg',
'81.jpg',
'1052',
N'Đăng',
'LT17')
insert into Tin values(
'MT82',
N'Thông tin quan trọng và dự đoán kết quả trận Costa Rica vs Jamaica - Bảng B Gold Cup 2015',
N'Trận đấu giữa Costa Rica và Jamaica là cuộc chiến của 2 nhà vô địch khu vực Trung Mỹ và Caribe. Tại Gold Cup 2015, đây là trận đấu mang tính quyết định cho tấm vé lọt vào vòng tứ kết ở bảng B.',
'07/08/2015',
N'Dưới đây là những thông tin và dự đoán kết quả trận Costa Rica gặp Jamaica:

THÔNG TIN HAI ĐỘI

- Theo BXH trong tháng 7 của FIFA vừa công bố, Costa Rica đứng thứ 40, trong khi Jamaica xếp thứ 74 (kém đối thủ 34 bậc).

- CONCACAF Gold Cup 2015 được 2 nước đồng đăng cai tổ chức, đó là Mỹ và Canada.

- Costa Rica (40) và Jamaica (74) nằm ở bảng B cùng với El Salvador (87), Canada (99). Dù Canada đứng thấp nhất trên BXH của FIFA trong tháng 7, nhưng hiện tại đây là đội bóng duy nhất ở bảng B từng vô địch Gold Cup năm 2000 sau khi đánh bại đội khách mời Colombia ở chung kết.

- Costa Rica đã có kỳ World Cup 2014 để lại nhiều ấn tượng khi đánh bại Uruguay 3-1, thắng Italia 1-0 và hòa Anh 0-0, trước khi loại Hy Lạp ở vòng 1/8 và chỉ dừng bước trước Hà Lan ở tứ kết sau loạt sút luân lưu.

- Costa Rica đã 6 giải liên tiếp ít nhất lọt vào tứ kết. Tuy nhiên, thành tích tốt nhất của họ tại CONCACAF Gold Cup là Á quân năm 2002.

- Trước khi giải đấu thuộc khu vực CONCACAF có tên là Gold Cup (từ năm 1991), Costa Rica là đội lên ngôi vô địch cuối cùng.

- Tại giải Copa Centroamericana (Vô địch Trung Mỹ), Costa Rica đã vô địch 2 năm liên tiếp 2013 và 2014.

- Jamaica vừa trở về từ Copa America 2015. Trong lần đầu tiên dự giải đấu này với tư cách khách mời, đội bóng thuộc khu vực Caribe đã thua cả 3 trận trước Argentina, Uruguay, Paraguay với cùng tỉ số 0-1.

- Jamaica đang là nhà vô địch Caribbean Cup. Như vậy, đây sẽ là cuộc chạm trán của 2 nhà vô địch thuộc Caribe và Trung Mỹ.

- Thành tích tốt nhất của Jamaica tại Gold Cup là đồng giải Ba năm 1993 và về thứ 4 năm 1998. Lần gần nhất họ lọt vào tứ kết là cách đây 4 năm.

- Năm 2016, Copa America sẽ tiếp tục được tổ chức để kỷ niệm 100 năm ngày ra đời giải đấu số 1 Nam Mỹ. 4 đội bóng thuộc CONCACAF được tham dự là Mỹ (chủ nhà), Mexico (khách mời thường xuyên), Costa Rica (vô địch Trung Mỹ 2014) và Jamaica (vô địch Cúp Caribe) và 2 tấm vé còn lại thuộc về 2 đội có thành tích tốt nhất tại Gold Cup 2015 này (ngoài 4 đội kể trên).

- Gold Cup 2015 có 12 đội tham dự được chia thành 3 bảng để thi đấu vòng tròn 1 lượt tính điểm, 6 đội nhất nhì các bảng sẽ vào tứ kết, 2 tấm vé còn lại thuộc về 2 trong 3 đội đứng thứ 3 có thành tích tốt hơn. Do đó, Panama hay Haiti giành chiến thắng sẽ rộng cửa đi tiếp.

CON SỐ

8 - Trong 8 lần chạm trán gần đây, không có trận nào kết thúc nhiều hơn 2 bàn thắng.

6 - Costa Rica đã trải qua 5 trận liên tiếp không thắng.

3 - Jamaica đã thua liên tiếp 3 trận đấu.

0 - Trong 3 trận thua gần nhất, Jamaica đều không thể ghi bàn.

1 - Trong 9 lần gặp nhau gần nhất, Jamaica chỉ thắng 1 lần.

ĐỐI ĐẦU VÀ PHONG ĐỘ

Thành tích đối đầu trong quá khứ

24 Mar 1963    Costa Rica v Jamaica    W    6-0    CONCACAF Championship
11 May 1965    Costa Rica v Jamaica    W    7-0    FIFA World Cup
22 May 1965    Jamaica v Costa Rica    D    1-1    FIFA World Cup
27 Nov 1968    Costa Rica v Jamaica    W    3-0    FIFA World Cup
01 Dec 1968    Costa Rica v Jamaica    W    3-1    FIFA World Cup
23 Nov 1969    Costa Rica v Jamaica    W    3-0    CONCACAF Championship
04 Jul 1993    Jamaica v Costa Rica    D    1-1    International
25 Jul 1993    Costa Rica v Jamaica    D    1-1    CONCACAF Gold Cup
27 Sep 1995    Jamaica v Costa Rica    L    2-0    International
15 May 1996    Jamaica v Costa Rica    L    2-1    Olympics
04 Sep 1996    Jamaica v Costa Rica    W    0-2    International
09 Oct 1996    Costa Rica v Jamaica    D    0-0    International
11 May 1997    Costa Rica v Jamaica    W    3-1    FIFA World Cup
14 Sep 1997    Jamaica v Costa Rica    L    1-0    FIFA World Cup
10 Feb 1999    Jamaica v Costa Rica    D    1-1    International
24 Feb 1999    Costa Rica v Jamaica    W    9-0    International
20 Jun 2001    Costa Rica v Jamaica    W    2-1    FIFA World Cup
11 Nov 2001    Jamaica v Costa Rica    W    0-1    FIFA World Cup
06 Feb 2008    Jamaica v Costa Rica    D    1-1    International
07 Jul 2009    Jamaica v Costa Rica    W    0-1    CONCACAF Gold Cup
05 Sep 2010    Jamaica v Costa Rica    L    1-0    International
17 Nov 2010    Jamaica v Costa Rica    D    0-0    International
21 Mar 2012    Jamaica v Costa Rica    D    0-0    International
26 Mar 2013    Costa Rica v Jamaica    W    2-0    FIFA World Cup
10 Sep 2013    Jamaica v Costa Rica    D    1-1    FIFA World Cup
08 Jul 2015    Costa Rica v Jamaica        ?-?    CONCACAF Gold Cup

Phong độ 1 năm qua của Costa Rica

International 28/06/15    Mexico(N)     2-2    Costa Rica
International 12/06/15    Spain    2-1    Costa Rica
International 07/06/15    Colombia(N)    1-0    Costa Rica
International 01/04/15    Panama    2-1    Costa Rica
International 27/03/15    Costa Rica    0-0    Paraguay
International 14/11/14    Uruguay    3-3    Costa Rica
International 14/10/14    Korea Republic    1-3    Costa Rica
International 10/10/14    Oman    3-4    Costa Rica
UNCAF NC    14/09/14    Guatemala(N)    1-2    Costa Rica
UNCAF NC    08/09/14    Costa Rica(N)    2-2    Panama
UNCAF NC    04/09/14    Costa Rica(N)    3-0    Nicaragua
WORLD CUP    06/07/14    Netherlands(N)    0-0    Costa Rica

Phong độ 1 năm qua của Jamaica

AMEC    21/06/15    Argentina(N)    1-0    Jamaica
AMEC    17/06/15    Paraguay(N)    1-0    Jamaica
AMEC    14/06/15    Uruguay(N)    1-0    Jamaica
International  31/03/15    Jamaica    3-0    Cuba
International  28/03/15    Jamaica    2-1    Venezuela
CCC    19/11/14    Jamaica    0-0    Trinidad & Tobago
CCC    17/11/14    Jamaica    2-0    Haiti
CCC    15/11/14    Jamaica    3-0    Antigua & Barbuda
CCC    13/11/14    Jamaica    1-1    Martinique
International  10/10/14    Japan    1-0    Jamaica
International  10/09/14    Canada    3-1    Jamaica',
'80.jpg',
'1057',
N'Đăng',
'LT17')
insert into Tin values(
'MT83',
N'Vòng 13 V.League 2015: Chờ luồng gió mới',
N'Chiều nay, V-League sẽ trở lại và hứa hẹn rất sôi động với các trận đấu thuộc vòng 13. Ở đó, những đội bóng giàu tham vọng như HN.T&T, SHB.ĐN hay “tên tuổi mới” FLC Thanh Hóa đang được chờ đợi sẽ chứng tỏ hình ảnh giàu sức sống hơn so với những gì họ đã thể hiện ở giai đoạn 1 của mùa giải.',
'06/28/2016',
N'TRÌNH LÀNG BẰNG THỬ THÁCH KHÓ KHĂN
Trận đấu với ĐT.LA chiều nay chính là màn “trình làng” V-League của đội bóng xứ Thanh sau khi họ bất ngờ “đổi chủ” cách đây chưa lâu. So với lúc trước khi được chuyển giao cho FLC, đoàn quân của HLV Hoàng Thanh Tùng không có mất mát nào đáng kể, thậm chí còn tỏ ra “thiện chiến” hơn nhờ có sự bổ sung của tiền đạo Pape Faye Omar và những dấu hiệu trưởng thành mạnh mẽ của hai tuyển thủ U23 Việt Nam là tiền vệ Nguyễn Hữu Dũng và tiền đạo Lê Thanh Bình.

Với dàn nhân sự được đánh giá là khá đa dạng và chất lượng, lại được chơi trên sân nhà nên FLC Thanh Hóa dĩ nhiên phải hướng đến mục tiêu giành chiến thắng trong ngày ra mắt 

V-League. Nhưng đối thủ của họ ĐT.LA – vốn đang là tập thể khó bị đánh bại nhất ở V-League 2015 khi mới để thủng lưới 7 bàn và thua 1 trận trong 12 vòng đấu đã qua. Phong độ của ĐT.LA cũng đang được duy trì ở mức rất cao khi họ ghi tổng cộng 9 bàn thắng trong 2 chiến thắng giòn giã ở vòng 1/8 và tứ kết Cúp QG mới diễn ra cách đây ít ngày. 

Chính vì thế, cuộc đấu ở xứ Thanh chiều nay hứa hẹn sẽ là một bữa tiệc bóng đá hấp dẫn cho NHM dù chưa cần quan tâm đến việc đội chủ nhà có đạt được mục tiêu 3 điểm trong ngày ra mắt hay không?
XEM HN.T&T VÀ SHB.ĐN TĂNG TỐC
HN.T&T đã trải qua giai đoạn 1 với nhiều nỗi thất vọng, nhưng trước khi bước vào giai đoạn 2 bằng trận đấu với đội cuối bảng XSKT.CT chiều nay, đoàn quân của HLV Phan Thanh Hùng đã kịp lấy lại sự tự tin. 2 chiến thắng ở vòng 1/8 và Tứ kết Cúp QG vừa qua chính là điều đã giúp HN.T&T có thể lạc quan bước vào giai đoạn 2 bởi đó mới là lần đầu tiên họ được hưởng niềm vui chiến thắng trong 2 trận đấu liên tiếp ở mùa giải này. 

Nên nhớ rằng, HN.T&T chưa tung ra những quân bài ưu tú nhất ở mặt trận Cúp QG mà “để dành” dàn hỏa lực tối ưu của họ cho trận đấu ở vòng 13 với XSKT.CT – đối thủ đang đứng chót bảng và là đội có hàng thủ kém nhất 

V-League 2015 tính đến lúc này (thủng lưới 26 bàn). Sẽ không có gì bất ngờ nếu HN.T&T mở màn hành trình giai đoạn 2 của họ bằng một trận thắng tưng bừng trên sân Hàng Đẫy chiều nay.

Cũng được chờ đợi sẽ giành 3 điểm để tiếp tục hướng đến những vị trí cao trên BXH như HN.T&T là SHB.ĐN. Ở vòng 13, thầy trò HLV Lê Huỳnh Đức phải chơi trên sân khách nhưng đối thủ của họ chỉ là Đồng Nai – đội đang đứng áp chót. SHB.ĐN sẽ không có nhiều vấn đề phải lo lắng ở chuyến hành quân xa nhà lần này bởi Đồng Nai không được đánh giá cao ở khả năng tấn công, chỉ đạt hiệu suất ghi bàn 1 bàn/trận (thấp nhất giải). Do vậy, SHB.ĐN với đội hình có độ “quái” đáng nể cùng những mũi tấn công sắc bén hoàn toàn có thể ca khúc khải hoàn ngay trên sân của Đồng Nai.',
'83.jpg',
'1060',
N'Đăng',
'LT17')
insert into Tin values(
'MT84',
N'18h00 ngày 28/6, Hà Nội T&T – XSKT Cần Thơ: Chênh vênh miệng vực',
N'Đó là tình cảnh của XSKT Cần Thơ khi sau 12 vòng đấu họ mới chỉ có 7 điểm và đứng cuối bảng xếp hạng. Mục tiêu trụ hạng với đội bóng xứ Tây đô lúc này đã quá rõ ràng và kỳ chuyển nhượng giữa mùa giải vừa qua, những nhân tố mới đã được đưa về nhưng khó có cuộc “cải tử hoàn sinh” tức thì.',
'06/28/2015',
N'Sự xuất hiện của chân sút Oseni giúp Văn Thắng phần nào san sẻ được gánh nặng ghi bàn nhưng làm khách tại sân Hàng Đẫy, XSKT Cần Thơ không thể chơi đôi công với đội chủ nhà. Phong độ của Hà Nội T&T tại V-League không tốt khi V-League bước vào quãng nghỉ, nhưng ở vòng tứ kết Cúp QG Kienlongbank 2015 mới đây, đoàn quân của HLV Phan Thanh Hùng đã vượt qua HAGL. 

Chiến thắng đó dù ít nhiều bị ảnh hưởng từ quyết định thổi phạt 11m gây tranh cãi của trọng tài Đình Thịnh nhưng không thể phủ nhận, các cầu thủ Hà Nội T&T đã bắt nhịp trở lại với guồng quay thi đấu tại V-League.

Đang đứng thứ 9 trên bảng xếp hạng, Hà Nội T&T rất cần một trận thắng để thu hẹp khoảng cách điểm số với nhóm đội dẫn đầu còn với XSKT Cần Thơ, như lời GĐKT Vũ Quang Bảo, mỗi trận đấu với họ giờ đây đều như một trận chung kết. Làm khách tại sân Hàng Đẫy là một nhiệm vụ vô cùng khó khăn của các cầu thủ XSKT Cần Thơ nhưng họ vẫn muốn có ít nhất 1 điểm ra về.

Trên sân Hàng Đẫy ở mùa giải 2015, Hà Nội T&T đang có mạch trận bất bại (thắng 2 trận, hòa 3 trận) trong khi phong độ sân khách của XSKT Cần Thơ khá tệ (hòa 2, thua 3 trận). Đó là cơ sở để thầy trò HLV Phan Thanh Hùng tự tin vào một chiến thắng trước khi lượt đi V-League 2015 khép lại.',
'84.jpg',
'1070',
N'Đăng',
'LT17')
insert into Tin values(
'MT85',
N'Thông tin quan trọng và dự đoán trận Chile - Uruguay: Tứ kết Copa America',
N'Dù Uruguay là đội có thành tích tốt nhất Copa America với 15 lần vô địch, trong khi Chile chưa 1 lần lên ngôi, tuy nhiên, ưu thế sân bãi cùng phong độ hiện tại đang ủng hộ đội chủ nhà Chile.',
'06/24/2016',
N'Dưới đây là những thông tin và dự đoán kết quả trận Chile - Uruguay:

- Kết thúc vòng bảng, Chile đứng đầu bảng A với 7 điểm (2 trận thắng, 1 trận hòa), là đội ghi nhiều bàn nhất với 10 lần lập công, thủng lưới 3 bàn.

- Uruguay lọt vào tứ kết với tư cách là 1 trong 2 đội đứng thứ 3 có thành tích tốt hơn. Nhà ĐKVĐ Uruguay thắng 1 trận (Jamaica 1-0), thua 1 trận (0-1 Argentina) và hòa 1 trận (1-1 Paraguay).

- Theo BXH của FIFA trong tháng 5, Chile đứng thứ 19 (giảm 3 bậc so với tháng 4), trong khi Uruguay xếp thứ 8 (hơn đối thủ tới 11 bậc).

- Nhà ĐKVĐ Uruguay đang là đội bóng giàu thành tích nhất lịch sử 99 năm Copa America với 15 lần vô địch, xếp sau là Argentina (14) và Brazil (8 lần). Trong khi Chile chưa 1 lần lên ngôi.

- Đây là lần thứ 8 Chile đăng cai tổ chức Copa America. Ở 5 lần gần nhất làm chủ nhà, Chile đều ít nhất có mặt trong Top 3.

- Tại 3 kỳ Copa America gần nhất, đội chủ nhà đều không thể vô địch. Lần gần nhất đội chủ nhà đăng quang là Colombia năm 2001.

Những con số đáng chú ý:

0 Cho đến trước trận gặp Uruguay, ĐT Chile vẫn chưa thua một trận nào trên sân nhà trong năm 2015. Tuy nhiên, lần gần nhất Chile thua sân nhà cũng chính là thất bại trước Uruguay tháng 11/2014.

2 Uruguay chỉ ghi được 2 bàn tại vòng bảng, ít hơn hoặc bằng thành tích cá nhân của 3 cầu thủ Chile. Đó là Vidal (3 bàn), Aranguiz và Vargas (2).

7 và 8 Có 7 cầu thủ còn sót lại trong đội hình Uruguay so với số cầu thủ ra sân ở trận hòa Chile 1-1 tại vòng bảng Copa America 2011. Con số này của Chile là 8 người.

26 Chile trung bình chỉ để đối phương dứt điểm 7,3 lần/trận, ít nhất giải đấu. Uruguay trung bình phải thực hiện 26 pha xoạc bóng/trận, cao nhất giải đấu.

PHONG ĐỘ VÀ ĐỐI ĐẦU

- Trong 11 lần chạm trán đầu tiên của 2 đội, Uruguay đã dành ưu thế tuyệt đối với thành tích toàn thắng, 8 trong số đó tại Copa America.

- Tuy nhiên, trong 8 lần gặp nhau gần nhất, Chile chỉ thua 2 trận và cũng 2 lần giành chiến thắng, 4 trận kết thúc với tỉ số hòa.

- Lần gần nhất 2 đội gặp nhau tại Copa America là tại giải đấu cách đây 4 năm, hai đội hòa nhau với tỉ số 1-1 ở vòng bảng. Alexis Sanchez và Alvaro Pereira là 2 cầu thủ ghi bàn.

- Trong lịch sử đối đầu, Uruguay có 43 trận thắng, trong khi Chile có 17 lần đánh bại đối thủ.

Thành tích đối đầu gần đây

INTERF    19/11/14    Chile    1-2    Uruguay
WCPSA    27/03/13    Chile    2-0    Uruguay
WCPSA    12/11/11    Uruguay    4-0    Chile
AMEC    09/07/11    Uruguay(N)    1-1    Chile
INTERF    18/11/10    Chile    2-0    Uruguay 
WCPSA    02/04/09     Chile    0-0    Uruguay
WCPSA    19/11/07    Uruguay    2-2    Chile
WCPSA    27/03/05    Chile    1-1    Uruguay
WCPSA    16/11/03    Uruguay    2-1    Chile

Phong độ gần đây của Chile

AMEC    19/06/15     Chile    5-0    Mexico
AMEC    16/06/15     Chile    3-3    Mexico
AMEC    12/06/15     Chile    2-0    Ecuador
AMEC    12/06/15     Chile    2-0    Ecuador
INTERF    06/06/15    Chile    1-0    El Salvador
INTERF    29/03/15    Brazil(N)    1-0    Chile
INTERF    27/03/15    Iran(N)    2-0    Chile
INTERF    29/01/15    Chile    3-2    USA
INTERF    19/11/14    Chile    1-2    Uruguay
INTERF    15/11/14    Chile    5-0    Venezuela
INTERF    15/10/14    Chile    2-2    Bolivia
INTERF    11/10/14    Chile    3-0    Peru
INTERF    10/09/14    Chile(N)    1-0    Haiti

Phong độ gần đây của Uruguay

AMEC    20/06/15    Paraguay(N)     1-1    Uruguay
AMEC    17/06/15    Argentina(N)*    1-0    Uruguay
AMEC    14/06/15    Uruguay(N)    1-0    Jamaica
INTERF    07/06/15    Uruguay    5-1    Guatemala
INTERF    29/03/15    Morocco    0-1    Uruguay
INTERF    19/11/14    Chile    1-2    Uruguay
INTERF    14/11/14    Uruguay    3-3    Costa Rica
INTERF    13/10/14    Oman    0-3    Uruguay
INTERF    11/10/14    Saudi Arabia    1-1    Uruguay
INTERF    08/09/14    Korea Republic    0-1    Uruguay
INTERF    05/09/14    Japan    0-2    Uruguay
WORLD CUP    29/06/14    Colombia(N)    2-0    Uruguay',
'85.jpg',
'1071',
N'Đăng',
'LT17')
insert into Tin values(
'MT86',
N'Michael Phelps sắp lên chức bố',
N'Trong bức ảnh mới đăng tải trên trang Instagram cá nhân, kình ngư người Mỹ, Michael Phelps, đã "khoe" cô bạn gái xinh đẹp với bụng bầu khá lớn và không che giấu niềm vui sắp được gặp mặt con trai đầu lòng, dự kiến trong mùa hè năm nay.',
'04/19/2016',
N'Nicole Johnson đang mang bầu ở tuần 32 và đã có dáng vẻ khá đẫy đà. Cô tăng cân nhiều, nhưng sắc mặt rất vui vẻ, khỏe mạnh. Cô là một bà bầu hạnh phúc khi Phelps luôn chăm sóc cô chu đáo mọi lúc, mọi nơi. Phelps rất tự hào cập nhật thường xuyên hình ảnh anh và bạn gái mang bầu trên trang cá nhân cùng những lời bình ngọt ngào, tình tứ. Họ gọi em bé là Baby P và từ chối tiết lộ trước cái tên sẽ đặt cho đứa con đầu lòng của mình. 

Phelps và Nicole quen biết nhau từ năm 2007, trước khi Nicole trở thành Hoa hậu California năm 2010. Tuy nhiên, trong thời gian đầu quen nhau, mối quan hệ của họ không mấy suôn sẻ. Phelps khá bận với lịch tập luyện và thi đấu. Lại là người nổi tiếng, anh bị khá nhiều cô gái hâm mộ và tấn công. Xung quanh Phelps cũng có nhiều tin đồn tình ái, trong đó, anh từng bị đồn có quan hệ với cả người chuyển giới. Chính vì vậy, Phelps và Nicole hợptan không ít lần. Gần đây nhất, họ đã nói lời chia tay năm 2012, nhưng một thời gian ngắn sau lại nối lại quan hệ. Đầu năm 2015, Phelps chính thức ngỏ lời cầu hôn Nicole. 

Kể từ khi đời sống riêng tư ổn định, Phelps cư xử điềm đạm hơn, ít vướng vào các vụ việc tai tiếng. Trước đó, Phelps từng bị phạt cấm thi đấu 6 tháng do lái xe trong tình trạng sau rượu. Vì đây là lần thứ hai Phelps bị cảnh sát tóm được trong tình trạng này (lần đầu năm 2004), Liên đoàn bơi lội Mỹ đã áp dụng án kỷ luật khá ngặt khi không cho phép Phelps tham dự bất cứ hoạt động nào của Liên đoàn dù có một số giải đấu quốc tế quan trọng diễn ra, như giải vô địch thế giới hè năm ngoái, mà nếu Phelps có mặt, đoàn Mỹ sẽ có lợi thế hơn rất nhiều. 

Phelps bị cho là nghiện rượu do áp lực cuộc sống và công việc. Anh đã phải tham gia khóa điều trị chứng nghiện rượu. Phelps cũng từng bị bắt gặp đang hút cần sa, và sự bê tha này, khi lên mặt báo, đã làm ảnh hưởng nặng nề tới hình ảnh Phelps trong con mắt người hâm mộ. 

Nhưng tất cả không còn xuất hiện kể từ năm ngoái, sau khi anh chính thức công khai giới thiệu Nicole là bạn gái của mình. Người ta thấy Phelps có mặt nhiều hơn trong các hoạt động từ thiện xã hội và anh đang hướng tới cơ hội chinh phục các đỉnh cao tiếp theo ở Olympic 2016 diễn ra ở Rio de Janeiro sắp tới. 

Hiện kình ngư Mỹ đang giữ kỷ lục 18 HCV tại các kỳ Olympic, gấp đôi người đứng thứ hai danh sách là Mark Spitz, cũng người Mỹ. Anh sẽ có chuyến tập huấn 6 tuần tại Trung tâm huấn luyện Olympic của ĐT Mỹ ở Colorado Springs trước khi chính thức tới Brazil.',
'86.jpg',
'1072',
N'Đăng',
'LT18')
insert into Tin values(
'MT87',
N'Simeone lại chuẩn bị làm bố',
N'Diego Simeone không chỉ cặp bồ cho vui. Ông có vẻ khá nghiêm túc trong mối quan hệ mới với bạn gái kém 17 tuổi khi để lộ thông tin, bạn gái ông- Carla Pereyra, đã mang thai được 3 tháng.',
'04/14/2016',
N'Tin vui này mới chỉ được ông thầy của CLB Atletico Madrid tiết lộ cho bạn bè và người thân trong dịp họ trở về Argentina dịp Lễ Phục sinh vừa qua. Tạp chí Caras của Argentina đã nhanh chóng khai thác được lời tiết lộ từ những người thân cận Simeone sau khi phóng viên của họ chộp được hình ảnh Carla đang vừa đi vừa lấy tay che chở cho bụng của mình trên phố. Dù vóc dáng của Carla chưa mấy thay đổi do cô mới mang thai giai đoạn đầu, đồng thời cũng là một người mẫu nên Carla giữ gìn cơ thể rất tốt, song nó ngay lập tức khiến những người quan tâm tới cặp đôi này tò mò. 

Đây không phải lần đầu tiên Carla bị nghi ngờ mang thai. Năm ngoái đã có thông tin cho rằng, cô đang mang thai đứa con đầu lòng với Simeone, nhưng sau đó không thấy có bất cứ dấu hiệu nào bất thường và Carla vẫn theo Simeone đi du lịch khắp nơi mỗi khi HLV 45 tuổi có thời gian rảnh. 

Simeone và Carla hẹn hò từ cuối năm 2013. Ban đầu, nhiều người cho rằng đây chỉ là một cuộc chinh phục nữa của cựu danh thủ đa tình. Nhưng thời gian lại cho thấy, cuộc tình này sâu sắc hơn người ta tưởng và càng ngày càng tiến gần hơn tới hình ảnh một gia đình đầm ấm, thay vì chỉ là bến đỗ chớp nhoáng mang tính đổi gió cho cả hai. Simeone rất tích cực tập luyện, giữ gìn phong độ và vóc dáng, sự trẻ trung để xứng đôi với người mẫu 28 tuổi mỗi khi ra phố. Trong khi đó, Carla ngày càng dịu dàng, đằm thắm và quyến rũ hơn. 

Simeone đã có một đời vợ và 3 cậu con trai khá lớn. Giovanni đã 20, Gianluca 18, còn Guiliano 14 tuổi. Còn Carla, cô chưa lập gia đình và cũng chưa sinh con lần nào. Tuy tình cảm cả hai phát triển rất tốt và chuẩn bị đón thêm thành viên mới, Simeone dù vậy vẫn chưa có kế hoạch đám cưới. Ông vẫn luôn khẳng định, ở thời điểm hiện nay, ông bận tâm về vấn đề công việc hơn là chuyện riêng tư. Sau khi chính thức kết thúc cuộc hôn nhân đầu tiên năm 2014 sau thời gian dài ly thân, Simeone có vẻ vẫn chưa sẵn sàng cho cuộc sống gia đình một lần nữa. Trước khi cặp kè cùng Carla, Simeone đã trải qua rất nhiều mối tình ngắn ngày với nhiều phụ nữ khác nhau. 

Ngay từ khi còn là cầu thủ chơi bóng ở Italia và Tây Ban Nha, Simeone đã nổi tiếng phong lưu. Hiện tại, ở tuổi trung niên, Simeone vẫn giữ phong độ quyến rũ, thậm chí sự từng trải của ông còn khiến các cô gái dễ xiêu lòng hơn cả anh chàng Simeone máu lửa và mạnh mẽ ngày nào...',
'87.jpg',
'1073',
N'Đăng',
'LT18')
insert into Tin values(
'MT88',
N'Steve McClaren đi Caribbean xả Stress',
N'Sau khi bị Newcastle sa thải khỏi vị trí HLV trưởng, Steve McClaren đã có chuỗi ngày dài nghỉ ngơi ở vùng biển Caribbean cùng vợ. Có vẻ như ông đang cố gắng trút bỏ mọi căng thẳng sau thời gian dài chịu sức ép từ ban lãnh đạo cũng như cổ động viên CLB Newcastle vì chuỗi thành tích tồi tệ khiến đội bóng suýt rơi vào nhóm rớt hạng mùa này.',
'04/12/2016',
N'Bờ biển Barbados là sự lựa chọn của ông thầy 54 tuổi này sau khi bị Newcastle sa thải. Cựu HLV ĐT Anh đã tới đây cùng vợ để bơi, chèo thuyền, tắm nắng và thư giãn hoàn toàn với các hoạt động không dính líu chút nào tới bóng đá. Kathryn, vợ HLV McClaren, là người phụ nữ của gia đình, và lúc này bà chính là chỗ dựa tinh thần cho chồng của mình, khi công việc đang ở vào lúc khó khăn. 

Kathryn không phải kiểu phụ nữ thích nổi tiếng hay gây sự chú ý, dù bà là vợ của một người đàn ông luôn thu hút sự chú ý của báo chí. Ở vào thời điểm McClaren làm HLV ĐT Anh, luôn được báo chí quan tâm, săn đón và cả tò mò soi mói, Kathryn luôn lặng lẽ đứng sau là hậu trường yên ổn cho McClaren. Bà không theo ông tới London vì công việc mới. Bà cùng ba con ở lại Yorkshire. Bà nói thẳng rằng, sự nổi tiếng và công việc của chồng không ảnh hưởng gì tới bà. Bà chỉ là một người vợ, một người mẹ bình thường. Bà thích mua sắm như nhiều người phụ nữ khác, nhưng bà không cảm thấy phải tiêu phí vào những món thời trang thiết kế riêng hay phải làm đỏm để có được những bức hình đẹp mà ngày hôm sau cánh paparazi sẽ quăng lên mặt báo với hàng loạt lời bình phẩm. Điều quan trọng, bà luôn ở cạnh McClaren ở những thời điểm đi xuống trong công việc của chồng, và giúp ông lấy lại tinh thần chuẩn bị cho một bước chuyển mới.

McClaren đã không có được mùa giải như ý tại Newcastle. Ông đã có tổng cộng 31 trận đấu đi cùng Newcastel, nhưng chỉ thắng được 7 trận, để thua 18 trận và hòa 6 trận. Dưới triều đại của McClaren, Newcastle mùa này dừng ở vị trí thứ 19 trên bảng xếp hạng Premiership với 24 điểm. Trận thắng oanh liệt nhất là hạ Norwich 6-2, còn trận đấu thảm bại nhất là thua Manchester City 1-6. Ác là suýt rơi vào nhóm rớt hạng do thành tích yếu kém của McClaren, dù ông chủ CLB là Mike Ashley từng đặt vào ông rất nhiều kỳ vọng cùng số tiền đầu tư lực lượng lên tới 50 triệu bảng.',
'88.jpg',
'1080',
N'Đăng',
'LT18')
insert into Tin values(
'MT89',
N'De Jong ra đòn thô bạo, đối thủ ngồi xe lăn khẩn cấp',
N'Dù đã ở bên kia sườn dốc sự nghiệp và phải dạt sang Mỹ nhưng Nigel de Jong vẫn không từ bỏ được lối đá thô bạo đã ngấm vào máu.',
'04/11/2016',
N'Bằng chứng là trong trận hoà 1-1 giữa Portland Timbers và LA Galaxy vừa diễn ra, Nigel de Jong đã có pha vào bóng rất thô bạo.

Nạn nhân của Nigel de Jong là Darlington Nagbe bên phía Portland Timbers đã phải rời sân ngay lập tức và phải vào phòng thay đồ bằng xe lăn sau cú va chạm rất mạnh với tiền vệ Hà Lan.

Sau trận đấu, Nigel de Jong tỏ ra ân hận khi có pha vào bóng khiến đối thủ dính đòn nặng: “Trong một trận đấu như này tôi không hề có ý định làm ai bị thương.

Đó là tai nạn và là lỗi của tôi. Tôi xin lỗi. Tôi không hề có ý định phạm lỗi với cậu ấy. Rồi chúng ta sẽ thấy’’.

Pha phạm lỗi thô bạo của Nigel de Jong khiến giới mộ điệu liên tưởng đến cú đạp thẳng vào ngực mà tiền vệ LA Galaxy này thực hiện trước Alonso ở trận CK World Cup 2010. Ngoài cú đá này, Nigel de Jong còn có rất nhiều pha va chạm mang tính triệt hạ khiến đối thủ nằm sân hoặc chấn thương nặng thời khoác áo Man City.',
'89.jpg',
'1081',
N'Đăng',
'LT18')
insert into Tin values(
'MT90',
N'Fernando Alonso chia tay Lara vì ghen tuông',
N'Tay đua từng vô địch Công thức 1 thế giới, Fernando Alonso, đã kết thúc mối quan hệ với cô bạn gái xinh đẹp Lara Alvarez sau 2 năm hẹn hò. Dù không ai tiết lộ lý do, song theo báo chí Tây Ban Nha, nguyên nhân thực sự sau vụ đổ vỡ này chính là sự ghen tuông kinh khủng của Alonso.',
'04/10/2016',
N'Trước khi quen biết Lara, Alonso từng có thời gian qua lại với người mẫu Nga, Dasha Kapustina. Nhưng cũng chỉ được 2 năm, cả hai đã đường ai nấy đi. Ở thời điểm đó, cả hai cũng không giải thích lý do dù cả hai đang rất thắm thiết. Trong khi đó, Lara từng là bạn gái của cầu thủ Sergio Ramos trước khi quen và hẹn hò với Alonso. Cả hai thậm chí từng tính tới kế hoạch làm đám cưới, nhưng Lara đã bất ngờ tuyên bố mọi chuyện kết thúc và chia tay hậu vệ cá tính này. 

Lara là nữ phóng viên thể thao. Ở Tây Ban Nha, cô còn được đánh giá cao hơn cả Sara Carbonero trong thời kỳ đỉnh cao về sự quyến rũ trong giới nữ phóng viên. Cô sở hữu nét mặt thông minh, trong sáng và dịu dàng, thân hình quyến rũ của một người mẫu và cái đầu nhanh nhạy. Chính điều đó khiến Lara luôn là tâm điểm chú ý mỗi khi xuất hiện. Cô có rất nhiều người ngưỡng mộ và các hoạt động của cô luôn bị các nhà báo khác chú ý khiến đời sống riêng tư khó giữ kín. 

Hình ảnh các mối quan hệ của cô được đưa lên mặt báo, bị người ta bàn tán khiến Alonso cảm thấy khó chịu. Anh ghen tuông với tất cả những người đàn ông xuất hiện thân mật bên cạnh Lara và khiến cô cảm thấy bức bối trong sự quan tâm quá mức. Dù cả hai đã lên kế hoạch đám cưới vào tháng trước và dự định tổ chức trong năm nay, dù Lara từng khẳng định, cô cảm thấy đã tìm được người đàn ông của đời mình và hạnh phúc khi ở bên Alonso, cô gái 30 tuổi này vẫn phải đi tới quyết định chia tay. Alonso - do công việc, thường xuyên sống xa nhà. Thời gian cả hai ở bên nhau không nhiều. Yêu xa, điều cả hai cần là sự tin tưởng lẫn nhau, nhưng Lara từng than thở với bạn bè, rằng cô không cảm thấy Alonso dành niềm tin cho mình. Anh thường nghi ngờ và chất vấn cô về các mối quan hệ, khiến cô cảm thấy mệt mỏi. 

Việc Lara nói lời chia tay với Alonso khiến nhiều fan tiếc nuối. Sau khi đường ai nấy đi, Lara vẫn dành sự quan tâm tới các hoạt động của Alonso, tuy nhiên, cô tỏ ra khá kiên quyết trong quyết định chia tay của mình, cho thấy, khả năng cặp đôi này quay trở lại với nhau là rất khó. Bên cạnh đó, một số tờ báo còn thông tin, Alonso đã có đối tượng mới. Cô gái trẻ này cũng là một người mẫu Nga, có tên Viki Odinctova, 21 tuổi. Cả hai được cho là đã hẹn hò nhau ở Dubai, tuy nhiên, chưa có bức hình chụp chung nào của họ chứng minh được điều này.',
'90.jpg',
'570',
N'Đăng',
'LT18')
insert into Tin values(
'MT91',
N'Hoa hậu Siêu vòng 3 đau lòng vì bị Messi ‘chặn’',
N'Không chỉ được biết đến với danh hiệu Miss Bum Bum 2015 Suzy Cortez còn thường xuyên tung hô sự ngưỡng mộ của mình với ngôi sao hàng đầu thế giới Messi trên truyền thông. Nhưng mới đây Messi đã một phen khiến cô nàng ‘tan nát’ khi thẳng tay chặn tài khoản của cô nàng trên Instagram.',
'04/19/2016',
N'Ai cũng biết, cô nàng Suzy Cortez luôn dành cho Leo Messi một tình cảm nồng nhiệt, sẵn sàng cổ vũ - bằng cách khoe thân, bất cứ khi nào có thể. Như dịp đầu năm, nhân sự kiện số 10 lần thứ 5 giành Quả bóng vàng, hoa hậu siêu vòng 3 đã chúc mừng bằng những shot hình táo bạo, khoe triệt để những đường cong trên cơ thể.

Một lần khác thì cô nàng không ngần ngại sơn luôn màu  áo sân nhà truyền thống của "gã khổng lồ" xứ Catalan, CLB Lionel Messi đang đầu quân lên cơ thể "trần như nhộng" nóng bỏng của mình. Nếu là một nửa của Messi, bạn sẽ làm gì khi những hình ảnh nhức mắt ấy cứ liên tục xuất hiện? Đương nhiên là phải cắt ngay mọi mối liên hệ với người này rồi. Theo đó Miss Bum Bum 2015 cho rằng vì thế mà tài khoản của cô bị cặp đôi nhà Messi chặn không thương tiếc.

Dù sao thì nếu đó là lý do thì việc làm của Antonella cũng là hoàn toàn dễ hiểu bởi chẳng ai lại thích nhìn một người suốt ngày uốn éo thể hiện tình cảm với bạn trai của mình trên cơ thể cả. Và tất nhiên là người đàn ông hết lòng vì gia đình cũng như có trách nhiệm với các con thì Messi cũng chẳng ngại ‘bỏ qua’ một cô nàng để bạn gái yên lòng.

Messi và Antonella quen biết nhau từ lúc 5 tuổi. Cặp đôi cùng lớn lên ở thị trấn Argentina và vẫn thường xuyên giữ liên lạc sau khi sang Barcelona. Cặp đôi công khai hẹn hò từ năm 2009 và hiện tại đã có 2 bé trai kháu khỉnh là Thiago và Mateo.',
'90.jpg',
'1090',
N'Đăng',
'LT19')
insert into Tin values(
'MT92',
N'Tìm thấy xác chị họ Luka Modric trong cốp xe',
N'Có lẽ tiền vệ Luka Modric của Real Marid vừa phải trải qua chấn động tâm lý lớn khi hay tin chị họ thân thiết của mình bị bắt cóc và giết hại dã man.',
'04/16/2016',
N'Mới đây, người ta đã phát hiện thấy xác một phụ nữ trong cốp xe ô tô màu xám ở Villa Real de Cuscatancingo (El Salvador). Phía cảnh sát xác nhận, nạn nhân này có tên Susana Modric, 40 tuổi, là chị họ của tiền vệ người Croatia, Luka Modric, hiện đang khoác áo CLB Real Madrid. 

Theo thông tin giám định và điều tra từ phía cảnh sát, Susana Modric đã bị bắt cóc và giết hại dã man khi đang làm việc ở El Salvador. Vụ bắt cóc xảy ra vào hôm thứ Hai và thi thể của người phụ nữ này được phát hiện sau đó hai ngày. 
 
Theo báo chí Tây Ban Nha, Susana Modric đã sống ở ở El Salvador được 6 năm, có một vài mảnh vườn để trồng trọt. Cô từng kết hôn với một người đàn ông địa phương nhưng không lâu sau đó hai người đã ly hôn. Theo đánh giá của hàng xóm xung quanh, Susana sống khá thân thiện, không có điều gì phải chê trách. Vậy nên người dân nơi đây rất bàng hoàng về cái chết đột ngột của nạn nhân. Hiện phía cảnh sát vẫn đang trong quá trình tiến hành điều tra để xác minh động cơ gây ra vụ giết người này.
 
Trong những năm gần đây, El Salvador là một trong số các quốc gia có tỷ lệ phạm tội nguy hiểm cao nhất thế giới. Tờ Guardian cho biết, tỷ lệ tội phạm giết người ở nước này trong năm 2015 đã tăng 55% so với năm 2014.
 
Về phía mình, Luka Modric vẫn chưa lên tiếng trước tin buồn về cái chết của chị họ. Một vài thông tin cho rằng, bản thân tiền vệ người Croatia không hề hay biết gì về tin dữ này vì còn phải tập trung tinh thần cao độ thi đấu với Wolfsburg ở tứ kết lượt về Champions League. Trong trận đấu diễn ra trên sân Santiago Bernabeu này, Real Madrid đã giành chiến thắng 3-0, tạo ra cú lội ngược dòng ngoạn mục để giành tấm vé vào bán kết.',
'92.jpg',
'1091',
N'Đăng',
'LT19')
insert into Tin values(
'MT93',
N'Tình cũ tiết lộ ‘chuyện ấy’: Cris Ronaldo chẳng "làm ăn" gì',
N'Gemma Atkinson, nữ diễn viên kiêm người mẫu người Anh vừa tiết lộ một chi tiết thú vị liên quan đến những ngày đầu cô yêu Cris Ronaldo.',
'04/15/2016',
N'Cris Ronaldo từng cặp kè với Gemma Atkinson vào năm 2007, thời điểm ngôi sao người Bồ Đào Nha còn khoác áo Man United. 

Gemma Atkinson vừa tiết lộ trên chương trình Key 103 Radio rằng, những ngày đầu yêu nhau, Cris Ronaldo giống như bao chàng trai mới bước vào đường tình khác, rất rụt rè, nhút nhát, không hề mạnh dạn và chủ động trong ‘chuyện ấy’.

Người mẫu 31 tuổi nổi tiếng nước Anh cho hay, khi mới yêu nhau, Cris Ronaldo thường đến nhà cô chơi, dù nhà chẳng có ai khác ngoài 2 người nhưng ngôi sao người Bồ Đào Nha chẳng “làm ăn’’ gì ngoài việc dán mắt vào xem ti-vi.

“Điều đó (những ngày đầu yêu Cris Ronaldo) thực sự, thực sự thú vị”, Gemma Atkinson nói về cuộc tình với Cris Ronaldo.

“Chúng tôi chỉ về nhà tôi uống trà và xem Only Fools and Horses (một trong những bộ hài kịch tình huống nổi tiếng nhất nước Anh vào thế kỷ 20). Rất chân thật.

Tôi chẳng biết bây giờ anh ấy có còn như thế không nhưng lúc đó chỉ có ti-vi mà thôi. Chỉ có Only Fools and Horses và trà. Chỉ thế mà thôi. Nhưng đó là chuyện của 6, 7 năm về trước”,  Gemma Atkinson tiết lộ sự nhút nhát của Cris Ronaldo thời mới yêu cô.

Sau khi chia tay Gemma Atkinson, Cris Ronaldo cặp kè với hàng tá người đẹp khắp thế giới. Chắc chắn Cris Ronaldo không khờ khạo như thời mới yêu người mẫu 31 tuổi này, thậm chí ngôi sao người Bồ còn là tay săn tình siêu hạng khi đi đến đâu cũng có người đẹp sẵn sàng xin ngủ và từng lén lút quan hệ với hàng chục phụ nữ khắp thế giới sau lưng tình cũ Irina.',
'93.jpg',
'2010',
N'Đăng',
'LT19')
insert into Tin values(
'MT94',
N'CĐV mang họa cho Man City ở Champions League',
N'Ngày hôm nay, UEFA đã chính thức công bố sẽ trừng phạt Man City vì để CĐV sử dụng pháo hoa ở trận đấu với PSG vừa qua.',
'04/14/2016',
N'Man City vừa giành chiến thắng trước PSG để lần đầu tiên góp mặt ở vòng bán kết Champions League. Mặc dù vậy, đội bóng thành Manchester đang phải đối diện với án phạt từ UEFA. 

Theo đó, cơ quan quyền lực cao nhất của bóng đá châu Âu quyết định phạt Man City bởi sự cố liên quan tới việc đốt pháo hoa của những CĐV trên khán đài Etihad.

Tuyên bố của UEFA có đoạn: “Chúng tôi sẽ kỷ luật Man City vì sự cố để CĐV đốt pháo hoa trong trận đấu với PSG vào ngày 13/4 vừa qua. CLB đã vi phạm điều 16 khoản 2 trong quy định kỷ luật của UEFA”.

Cũng theo UEFA, trường hợp của Man City sẽ được xử lý bởi Ủy ban đạo đức và kỷ luật. Án phạt của họ sẽ được tuyên vào ngày 19/4.

Đây không phải là lần đầu tiên ở mùa giải này, Man City gặp họa từ những CĐV. Còn nhớ, trong trận đấu với Sevilla ở vòng bảng, những CĐV Man “xanh” cũng la ó khi nhạc hiệu của UEFA vang lên để phản đối án phạt của CLB ở luật Công bằng tài chính. 

Sau đó, UEFA đã quyết định “tha tội” cho Man City. Tuy nhiên, lần này, khi tiếp tục để CĐV tái phạm, họ khó lòng thoát khỏi án phạt.',
'94.jpg',
'120',
N'Đăng',
'LT19')
insert into Tin values(
'MT95',
N'Lý do MP&Silva không chịu đàm phán với VNPayTV',
N'Đơn vị sở hữu bản quyền truyền hình (BQTH) giải Ngoại hạng Anh trên lãnh thổ Việt Nam là MP&Silva kiên quyết không ngồi vào bàn đàm phán với Hiệp hội truyền hình trả tiền (VNPayTV). Vậy đâu là lý do?',
'04/13/2016',
N'Quá trình đàm phán mua bản quyền phát sóng giải Ngoại hạng Anh trong 3 mùa 2016 - 2019 trên lãnh thổ Việt Nam đang gặp bế tắc thực sự. 

VNPayTV, đơn vị được chỉ định đứng ra đàm phán cho rằng phía MP&Silva không chịu hợp tác. Và thế là, đến thời điểm hiện tại, câu chuyện BQTH giải Ngoại hạng Anh tại Việt Nam vẫn chưa thể ngã ngũ.

Theo như chia sẻ từ Giám đốc truyền thông của MP&Silva, Elgen Kua thì bản thân đơn vị này không chấp nhận đàm phán với VNPayTV vì bị ràng buộc bởi những quy định nghiêm ngặt từ ban tổ chức EPL.

Cụ thể, trong bản hợp đồng đã ký với MP&Silva, ban tổ chức EPL đã yêu cầu đơn vị này không được phép đàm phán với các đơn vị gồm nhiều thành viên cùng tham gia đấu thầu, mà chỉ được thông qua các thỏa thuận trực tiếp với các đài truyền hình đơn lẻ. Do đó, các đề nghị từ VNpayTV không thể được đáp ứng. “Bản quyền Ngoại hạng Anh phải được phân phối dưới nguyên tắc tự do thương mại”, ông Elgen Kua cho hay.

Lúc này, phía MP&Silva muốn thu về khoảng 49 triệu bảng (1.500 tỷ đồng) cho 3 mùa giải phát sóng. Đây là số tiền mà theo VNPayTV là quá cao. Tuy vậy, nếu nhìn ở các quốc gia khác cũng thuộc khu vực Đông Nam Á thì số tiền BQTH Ngoại hạng Anh của Việt Nam có rẻ hơn khá nhiều. Ví như Singapore, số tiền mà họ từng bỏ ra để có bản quyền trong 3 năm 2013 – 2016 là vào khoảng 190,1 triệu bảng (xấp xỉ 6.000 tỷ đồng). Còn Malaysia là khoảng 166 triệu bảng (xấp xỉ 5260 tỷ đồng).',
'95.jpg',
'2005',
N'Đăng',
'LT19')
insert into Tin values(
'MT96',
N'Uche sẽ lại sút tung lưới của B.Bình Dương?',
N'Trong chuyến làm khách của B.Bình Dương chiều nay, tiền đạo Uche tiếp tục là chân sút được đặt kỳ vọng của đội bóng phố Biển.',
'04/15/2016',
N'Ở mùa giải 2015, tiền đạo Uche Iheruome của Sanna Khánh Hòa thực sự là nỗi ác mộng với hàng phòng ngự của B.Bình Dương. Theo đó trong hai trận đấu mùa giải năm ngoái,  Uche Iheruome đều sút tung lưới đội bóng đất thủ để giúp Sanna Khánh Hòa giành thắng lợi ở cả hai lượt trận với tỷ số lần lượt là 1-0 và 2-1. Trong đó ở tận đấu lượt về, Sanna Khánh Hòa đã khiến các fan hâm mộ B.Bình Dương sốc nặng khi đánh bại nhà đương kim vô địch trong thế trận thiếu người. 

Với pha lập công ấn định thắng lợi 2-0 trước Long An ở vòng 5 cuối tuần vừa qua, tiền đạo Uche đang dần khẳng định sự trở lại trong màu áo Sanna Khánh Hòa ở mùa giải năm nay. Tiền đạo mang áo số 77 này đã có hai pha lập công ở mùa giải 2016 và tiếp tục là cái tên được nhắc đến nhiều nhất trước trận đấu với B.Bình Dương tại vòng 6 chiều nay.

Với thể hình và thể lực vượt trội, Uche có khả năng không chiến tốt, dễ dàng vượt qua sự đeo bám của hậu vệ đối phương nhờ sải chân dài. Theo đánh giá của giới chuyên môn, khả năng sút phạt của Uche cũng ngày càng được cải thiện và nó giúp cầu thủ này trở thành một trong những chân sút toàn năng nhất V.League 2016.

Phong độ của Uche sẽ là chìa khóa quan trọng trong mục tiêu giành ít nhất 1 điểm mà HLV Võ Đình Tân của Sanna Khánh Hòa đặt ra trước trận đấu với B.Bình Dương chiều nay. Dù bị đánh giá ở cửa dưới, nhưng đội bóng phố Biển có thể tận dụng những khó khăn mà đoàn quân của HLV Nguyễn Thanh Sơn đang phải đối mặt.

Dù gây ấn tượng ở hai trận đấu gần nhất nhưng việc tham gia nhiều mặt trận khác nhau cùng một thời điểm sẽ bào mòn thể lực của đội bóng đất Thủ. Bên cạnh đó, ở trận đấu chiều nay, B.Bình Dương sẽ không có hậu vệ trái Xuân Thành bởi thẻ phạt. Điều này khiến hàng phòng ngự của B.Bình Dương bị đặt một dấu hỏi lớn bởi họ đã để thủng lưới 5 lần trong 3 trận đấu gần đây. Có lẽ vì điều này mà ban huấn luyện đội bóng đất Thủ cần phải đặc biệt cảnh giác với Uche.

Đây chính là điểm yếu mà Sanna Khánh Hòa có thể dựa vào để tin có thể lấy điểm của chủ nhà. Trận đấu này sẽ diễn ra vào lúc 17h00 ngày 15/4/2016 trên sân Gò Đậu.',
'96.jpg',
'2006',
N'Đăng',
'LT20')
insert into Tin values(
'MT97',
N'Trần Thị Thanh Thúy được trường Đại học Mỹ cấp học bổng 4 năm',
N'Một tin vui với fan hâm mộ bóng chuyền Việt Nam là chủ công trẻ Trần Thị Thanh Thúy vừa được một trường đại học của Mỹ cấp học bổng trong 4 năm học tại đây.',
'04/08/2016',
N'Theo đó, một nguồn tin từ ban lãnh đạo CLB VTV Bình Điền Long An vừa cho biết "VĐV bóng chuyền Trần Thị Thanh Thúy đã được trường Đại học Oregon State của Mỹ tài trợ gói học bổng trị giá 160.000 USD cho 4 năm học tại đây. Đổi lại trong 4 năm đó, Thúy sẽ không thi đấu cho VTV Bình Điền Long An mà thi đấu dưới màu áo Đại học Oregon State”.

Chia sẻ với báo giới, lãnh đạo CLB VTV Bình Điền Long An cho biết hoàn toàn ủng hộ việc Thanh Thúy chuyển ra nước ngoài học tập và thi đấu. Mặc dù vậy, chủ công trẻ của bóng chuyền Việt Nam vẫn đang cân nhắc về lời đề nghị hấp dẫn này.

Dù được đánh giá là một ngôi sao bóng chuyền trẻ hàng đầu Việt Nam. Tuy nhiên, một trong những rào cản lớn nhất của Thanh Thúy khi chuyển qua Mỹ học tập và thi đấu là ngôn ngữ. Theo tiết lộ, bản thân Thúy mới dừng lại ở mức giao tiếp tiếng Anh cơ bản. Hiện tại “sếu vườn” đang phải dành quá nhiều thời gian cho việc tập luyện và thi đấu.

Ở tuổi 18, Thanh Thúy đang là chủ công cao nhất của làng bóng chuyền Việt Nam với chiều cao lên tới 1m90. Trong thời gian qua, Thanh Thúy đã cho thấy sự tiến bộ rõ rệt đặc biệt là trong màu áo đội tuyển quốc gia Việt Nam ở các giải đấu năm 2015. Dưới sự dẫn dắt của HLV Thái Thanh Tùng, Thanh Thúy đã dần hoàn thiện khả năng phòng ngự và tấn công.

Trong giai đoạn đầu mùa giải 2016, Thanh Thúy đã cùng với người đồng đội Ngọc Hoa chuyển sang thi đấu ở Thái Lan trong màu áo CLB Bangkok Glass. Với quãng thời gian thi đấu tại giải chuyên nghiệp Thái Lan. Giới chuyên môn đánh giá Thanh Thúy đang dần hoàn thiện các kỹ năng và tâm lý để trở thành trụ cột tại CLB VTV Bình Điền tại vòng 1 giải bóng chuyền vô địch quốc gia 2016 và được đánh giá là một trụ cột quan trong trong màu áo đội tuyển quốc gia Việt Nam trong những năm tới.',
'97.jpg',
'822',
N'Đăng',
'LT20')
insert into Tin values(
'MT98',
N'Vòng 1 giải VĐQG 2016: Chủ công Nguyễn Hữu Hà trở lại quá hay...!',
N'Sau một năm ngồi trên băng ghế BHL đội Biên Phòng, chủ công Nguyễn Hữu Hà may mắn trở lại sau khi bản hợp đồng với CLB cũ bị vô hiệu lực khi CLB ĐLGL giải thể. Từ đó, mở ra cho anh một chặng đường mới trong màu áo mới Biên Phòng.',
'04/07/2016',
N'Trong trận đấu quyết định suất thứ 2 vào tranh Cúp Hùng Vương với ĐKVĐ cúp Hùng Vương 2015 là Maseco TPHCM, chủ công Nguyễn Hữu Hà đã có một trận đấu quá hay...Từ vị trí số 2 cho đến hàng sau, chủ công Nguyễn Hữu Hà đều có thể tung ra những cú đánh bóng sấm sét cắm thẳng vào cuối sân đối phương và cú đánh quyết định cuối cùng của anh ở vị trí số 3 giữa lưới, bật thẳng vào đầu một cầu thủ Maseco TPHCM bay cao ra ngoài sân, giúp các đồng đội Biên Phòng vui mừng gục ngã xuống sân khi bóng chưa kịp rớt đất để thắng 25/23 ở ván 4, giúp Biên Phòng thắng chung cuộc Maseco TPHCM 3-1 (25/16, 25/27, 25/23, 25/23), đưa đội bóng Sài Gòn này trở thành "Cựu Vương" cúp Hùng Vương...

Nhưng thất bại của ĐKVĐ Maseco TPHCM không có gì tiếc nuối vì chính họ đã đánh mất cơ hội của mình. Đầu tiên phải trách "lão tướng" chuyền hai Thanh Tùng ở ván 3, khi điểm số ở thời điểm quan trọng trên 20, trong một pha bóng đơn giản, anh chuyền ra vị trí số 4 lại quá tầm với của đồng đội, đánh mất cơ hội vượt lên trước mà thậm chí giúp đối thủ giành được 1 điểm quý giá, để đội nhà thua luôn 23/25. Kế đến là ờ ván 4, cũng ở thời điểm mà phụ công dự bị Thanh Hải vào sân, chắn bóng rất chặt để dẫn trước đối thủ 3 điểm là 21/18 nhưng lại sự chệch choạc trong đội hình để các cầu thủ Biên Phòng cân bằng 21/21 và tiếp tục vượt qua 25/23 để thắng luôn.

Ngoài sự xuất sắc của chủ công Nguyễn Hữu Hà còn phải kể đến sự trưởng thành của cầu thủ trẻ Ngô Văn Dũng sau một mùa giải thi đấu cho đội bóng "yếu" Bến Tre, trong trận đấu chiều nay, Ngô Văn Dũng đã chia lửa rất tốt cho lão tướng Hữu Hà để làm rối đội hình Maseco TPHCM.

Mục tiêu đầu tiên của HLV trưởng Bùi Huy Châm và các nhà vô địch Maseco TPHCM đã thất bại...Nhiều việc cần làm hơn nữa, để họ tiếp tục bảo vệ mục tiêu quan trọng thứ 2 vào cuối năm nay, khi mà các đối thủ đã trở nên mạnh mẽ vì sự tăng cường lực lượng chất lượng cao...',
'98.jpg',
'888',
N'Đăng',
'LT20')
insert into Tin values(
'MT99',
N'Quế Ngọc Hải trên đường trở thành thủ lĩnh hàng phòng ngự ĐTVN',
N'Sau trận đấu với ĐT Đài Loan – Trung Quốc và ĐT Iraq mới đây, trung vệ Quế Ngọc Hải đang có vai trò quan trọng ở hàng phòng ngự ĐT Việt Nam.',
'03/30/2016',
N'10 ngày trước khi V.League 2016 bước vào lượt trận thứ 4, trung vệ Quế Ngọc Hải đã được ban kỷ luật VFF giảm án. Trong ngày trở lại đấu trường quốc nội, Ngọc Hải đã cùng SLNA tạo nên cú sốc lớn khi đánh bại đương kim vô địch B.Bình Dương ngay tại Gò Đậu với tỷ số 2-0 và Ngọc Hải cũng được HLV Hữu Thắng giành cho một vị trí trong danh sách triệu tập. 

Trong thời gian này, xuất hiện những thông tin cho rằng tân HLV trưởng đội tuyển Việt Nam có sự ưu ái với đội trưởng của CLB SLNA. Tuy nhiên, với những gì đã thể hiện trong hai trận đấu với ĐT Đài Loan – Trung Quốc và Iraq vừa qua, Quế Ngọc Hải cho thấy anh hoàn toàn xứng đáng với sự tin tưởng của HLV Hữu Thắng. Đội trưởng của đội bóng thành Vinh thậm chí cho thấy anh đang trên đường trở thành một thủ lĩnh quan trọng ở hàng phòng ngự ĐT Việt Nam.

Ở trận đấu với ĐT Đài Loan, sau khởi đầu có phần chệch choạc, Ngọc Hải đã thi đấu tập trung trong suốt thời gian còn lại của trận đấu và góp công lớn cùng ĐT Việt Nam giành thắng lợi tưng bừng 4-1 trước đối thủ.

Trong trận đấu với Iraq tối qua, dù đội bóng Tây Á hoàn toàn vượt trội về thể hình và thể lực, chơi pressing trên toàn sân khiến lối chơi của ĐT Việt Nam gặp rất nhiều khó khăn trong việc tiếp cận khung thành đối phương. Dù hàng phòng ngự của ĐT Việt Nam chưa thực sự tốt nhưng Ngọc Hải vẫn cho thấy anh là cái tên nổi bật. Cầu thủ gốc Nghệ đã có rất nhiều tình huống truy cản xuất sắc, dù là những pha bóng bổng.

Sang tới giữa hiệp 2, khi Hữu Thắng thực hiện những phương án thay đổi người, Ngọc Hải được đôn lên đá tiền vệ phòng ngự và ĐT Việt Nam cũng chuyển dịch về sơ đồ 4-4-2 với Đình Tùng (sau đó là Hoàng Thiên) đá cặp tiền đạo với Công Vinh.

Sự xuất hiện của Ngọc Hải ở giữa sân tăng đáng kể khả năng chiến đấu của ĐT Việt Nam nhờ lối chơi mạnh mẽ với những pha vào bóng quyết liệt. bên cạnh đó, anh còn có thể phát động tấn công với những đường chuyền dài vượt tuyến. Ngọc Hải đã mở ra ít nhất 2 cơ hội cho đồng đội băng lên, một lần cho Đình Hoàng bên cánh phải và lần còn lại cho Công Vinh bên cánh trái.

Sau trận đấu của ĐT Việt Nam, giới chuyên môn đánh giá chính nhờ có Quế Ngọc Hải mà ĐT Việt Nam mới chỉ thủng lưới có 1 bàn ở trận đấu này. Với những gì đã thể hiện ở hai trận đấu của ĐT Việt Nam vừa qua, có thể nói, Quế Ngọc Hải đang trên đường trở thành thủ lĩnh hàng phòng ngự ĐT Việt Nam. Bên cạnh đó, trung vệ này hoàn toàn có thể sử dụng ở vị trí tiền vệ phòng ngự trong những trường hợp mà những “máy quét” như Hoàng Thịnh, Duy Mạnh chấn thương.',
'99.jpg',
'831',
N'Đăng',
'LT20')
insert into Tin values(
'MT100',
N'Sao M.U cặp kè với con gái của "thảm họa" Miss World',
N'Memphis Depay đang gây thất vọng trong màu áo Man United, nhưng điều đó cũng chẳng khiến tiền vệ người Hà Lan phiền lòng, bởi anh đang đắm chìm trong mối tình lãng mãn với con gái của danh hài "tai tiếng" Steve Harvey.',
'01/28/2016',
N'Mới đây, Memphis Depay dường như đã công khai chuyện tình lãng mạn với Lori Harvey, cô con gái thứ của diễn viên hài người Mỹ và nhân vật truyền hình "tai tiếng" Steve Harvey.

Với bối cảnh hoàn hảo là tháp Effiel, Depay đăng một bức ảnh vào tài khoản Instagram của mình khi anh ôm chặt Harvey lãng mạn tại Paris, nơi được biết với cái tên là "thành phố của tình yêu." Nhưng thật trớ trêu thay, chỉ cách đây vài tháng, cầu thủ chạy cánh của Man United đã cặp kè với Karrueche Tran, bạn gái cũ của ngôi sao dòng nhạc R&B Chris Brown.

Còn nhớ hồi tháng 12 vừa qua, bố của bạn gái hiện tại của Memphis Depay, danh hài Steve Harvey đã gây tai tiếng trên toàn thế giới khi ông xướng tên nhầm người đoạt vương miện trong cuộc thi Hoa hậu Thế giới 2015.

Cụ thể, ông Steve Harvey đã nhầm tên là Á hậu 1 Ariadna Gutierrez là người chiến thắng. Nhưng vài phút sau khi Hoa hậu Colombia đăng quang, Harvey đã thông báo rằng ông đã đọc kết quả không chính xác và rằng Hoa hậu Philippines Pia Wurtzbach mới là người giàng vương miện. Sau đó đã xin lỗi cả hai thí sinh.

Dù đang tỏa sáng trên "sân khâu tình trường", nhưng bản hợp đồng 25 triệu bảng đang gây thất vọng ở Old Trafford kể từ khi chia tay PSV Eindhoven hồi tháng 6 năm ngoái. Không chỉ tỏ ra chiếc áo số 7 là "quá rộng" với mình, Depay còn không mẫu mực trên sân tập khi liên tục để trợ lý Ryan Giggs nhắc nhở về lối sống hào nhoáng và phóng khoáng của mình.

Cầu thủ 21 tuổi này đã chỉ ghi 2 bàn ở Premier League mùa này, một con số quá khiêm tốn so với những gì mà cổ động viên MU kỳ vọng ở chủ nhân mới của chiếc áo số 7 - kém xa so với 28 bàn thắng trong màu áo PSV để đưa đội chủ sân Phillips giành chức vô địch Eredivisie mùa giải trước và thuyết phục Quỷ đỏ chiêu mộ anh.

Manchester United đang chuẩn bị để đối đầu với CLB hạng dưới Derby County ở vòng 4 FA Cup vào cuối tuần này, Depay nhiều khả năng sẽ được HLV Van Gaal trao cơ hội ra sân, và anh được kỳ vọng ghi bàn vào lưới đối thủ để đưa M.U tiến vào vòng 1/8, giống như cách anh liên tục "nổ súng" trên mặt trận tình trường.',
'100.jpg',
'841',
N'Đăng',
'LT20')
insert into Tin values(
'MT101',
N'Than Quảng Ninh lấy ai để kìm tỏa Odat của SLNA?',
N'Trước trận tiếp đón SLNA trên sân nhà chiều mai, bài toán kèm chặt tiền đạo Odat đang trở thành vấn đề đau đầu với HLV Phan Thanh Hùng.',
'04/15/2016',
N'Sau khởi đầu không tốt ở mùa giải năm nay, chiều mai đoàn quân của HLV Phan Thanh Hùng sẽ tiếp đón SLNA trên sân nhà Cẩm Phả. Dù nhận được sự cổ vũ của fan hâm mộ, tuy nhiên đây không phải là lợi thế của đội bóng đất Mỏ bởi Than Quảng Ninh đã toàn thua ở 2 trận đấu đầu tiên trên sân Cẩm Phả. 

Không có khởi đầu tốt ở mùa giải cùng thành tích thi đấu không tốt trên sân nhà ở hai trận đấu đầu tiên của mùa giải. Do đó đoàn quân của HLV Phan Thanh Hùng được dự đoán sẽ gặp nhiều khó khăn trước SLNA, đội bóng đang hưng phấn sau 2 chiến thắng liên tiếp ở những vòng đấu gần đây.

Một trong những cái tên nguy hiểm bên phía đại diện thành Vinh ở trận đấu chiều nay là tiền đạo Odat. Cầu thủ có quốc tịch Nigeria đã có được 3 bàn ở mùa giải này tức là chỉ kém cầu thủ đang đứng đầu danh sách ghi bàn Errol Anthony Stevens của Hải Phòng và Gaston Merlo của SHB Đà Nẵng đúng 2 bàn.

Với Odat, SLNA trở nên rất mạnh mẽ trên hàng công. Trong thế trận mà SLNA thi đấu bế tắc, Odat luôn biết cách tạo nên điểm nhấn để giúp đội bóng thành Vinh giành được điểm số quan trọng.

Tiền đạo có cái chân trái cực kì khéo léo này thực tế đã bén duyên với đội bóng chủ sân Vinh từ mùa giải 2015 nhưng bởi những lí do khách quan, đến mùa giải năm nay, Odat mới có thể ra mắt những người hâm mộ xứ Nghệ. Cùng với Baba Salia, SLNA hiện đang sở hữu một trong những bộ đôi săn bàn lợi hại nhất tại V.league mùa này.

Trước khi hai đội gặp nhau tại vòng 6.V League, trong trận đấu giữa hai đội tại giải giao hữu tổ chức tại Thanh Hóa hồi tháng 1, màn trình diễn ấn tượng của Odat đã giúp SLNA hạ gục Than Quảng Ninh với tỷ số 4-1.

Do đó, nhiệm vụ của hàng phòng ngự Than Quảng Ninh là cần phải kèm chặt tiền đạo người Nigeria của SLNA. Tuy nhiên, trong trận đấu chiều nay, đội bóng đất Mỏ sẽ không có hậu vệ Thanh Hiền bởi chưa hoàn toàn bình phục chấn thương.

Không phong tỏa được Odat, sẽ rất khó để đoàn quân HLV Phan Thanh Hùng có thể hy vọng giành chiến thắng đầu tiên trên sân nhà ở mùa giải năm nay.',
'101.jpg',
'842',
N'Đăng',
'LT21')
insert into Tin values(
'MT102',
N'Nóng chuyện bầu Đức thế chấp Học viện HAGL Arsenal JMG vay tiền',
N'Trong những ngày gần đây báo chí trong nước nóng lên với thông tin bầu Đức thế chấp Học viện HAGL Arsenal JMG cho ngân hàng để vay tiền. Điều này xuất hiện những thông tin cho rằng bầu Đức đã “chán” bóng đá.',
'04/13/2016',
N'Trong thời gian gần đây, CLB HAGL của bầu Đức liên tục trở thành tâm điểm của truyền thông trong nước. Tuy nhiên, khác với mùa giải 2015 khi HAGL thu hút sự chú ý của dư luận bằng tuyên bố sốc của bầu Đức với màn ra mắt của những ngôi sao trẻ như Tuấn Anh, Công Phượng, Xuân Trường,… trong năm nay HAGL thu hút sự chú ý của dư luận bởi những vấn đề liên quan đến tiền bạc. 

Đầu tiên là chuyện CLB HAGL nợ lương cầu thủ và gần nhất trước tình hình kinh doanh không thuận lợi của Tập đoàn HAGL, bầu Đức đã thế chấp Học viện HAGL Arsenal JMG cho phía ngân hàng để vay 603 tỷ đồng làm vốn kinh doanh.

Đây là lần đầu tiên trong 14 năm làm bóng đá của bầu Đức gặp khó khăn với vấn đề tài chính. Điều này khiến cầu thủ cũng như người hâm mộ cả nước có những băn khoăn, có một số người cho rằng bầu Đức đã bắt đầu "chán" bóng đá.

Tuy nhiên, nhà báo Minh Hải khẳng định đó chỉ là chuyện rất bình thường trong giới kinh doanh: "Chuyện HAGL nợ lương và chuyện thế chấp 1 tài sản để vay vốn rồi kinh doanh không phải quá bất thường. Nó bất thường có lẽ chỉ do ở Việt Nam chưa ai làm giống ông ấy”.

“Nếu mọi người cứ nhìn HAGL như khuôn vàng, thước ngọc thì sẽ không có họ như hôm nay. HAGL là 1 trong các tập đoàn đi đầu trong nhiều hướng đột phá, nên phán xét bầu Đức thời điểm này hơi quá. Về mặt tình cảm, sông có khúc, người có lúc nên nếu có ai lên án bầu Đức thì là không hay. Còn nhiều người cảm thấy lo lắng, cũng đúng nhưng vấn đề bình thường thôi”, nhà báo Minh Hải cho biết thêm.

Trước thông tin bầu Đức phải thế chấp Học viện HAGL Arsenal JMG để vay tiền ngân hàng, chuyên gia Lê Thế Thọ nhận định: “Tôi nghĩ việc thiếu vốn nên cầm cố để có tiền tái đầu tư là chuyện bình thường, nhiều doanh nhân đều làm chứ không riêng bầu Đức”. Cựu danh thủ Thể Công cũng cho rằng không nên xét đoán, nhận định quá tiêu cực về việc kinh doanh của Tập đoàn HAGL sẽ ảnh hưởng theo kiểu phải giải tán CLB HAGL và Học viện HAGL Arsenal JMG.

Cùng quan điểm với nhà báo Minh Hải và chuyên gia Lê Thế Thọ, trong cuộc trao đổi của mình với báo chí, HLV Nguyễn Thành Vinh cho biết đây cũng là điều bình thưởng bởi các CLB bóng đá Việt Nam đều được nâng đỡ bởi một doanh nghiệp, tập đoàn nào đó và chưa tự đứng được trên đôi chân của mình: "Ở Việt Nam dựa vào doanh nghiệp tạo dựng CLB, đẻ ra 1 điều là nếu doanh nghiệp kinh doanh thua lỗ, sẽ tìm mọi cách để cân bằng lại kinh phí của họ, như HAGL".

Tuy nhiên, ông Vinh cũng nhấn mạnh: "HAGL họ có cơ chế khác, cầu thủ vẫn an tâm thi đấu dù cơ sở vật chất có bị thế chấp. Bầu Đức có tài năng thay đổi vận mệnh các công ty con nên người ta vẫn tin vào ông ấy. Ngoài ra, ông ấy vẫn còn khoản tiền lớn, có thể đầu tư dưới dạng cá nhân nên cầu thủ dựa vào được". Đây là điều mà bầu Đức có lợi thế hơn so với những ông chủ khác của bóng đá Việt Nam. Dẫn chứng cho điều này, ông Vinh chỉ ra: "Ví dụ SLNA hiện tại, nếu Ngân hàng Bắc Á bỏ cuộc, không có ai nhảy vào thì chỉ đào tạo trẻ thôi, không đá chuyên nghiệp được. Còn 1 số CLB khác tiền ít quá, thì cầu thủ sẽ thế này thế kia như Ninh Bình, Đồng Nai... kiếm tiền từ nguồn khác. Từ 1 CLB đang khỏe về nhiều mặt thì kiệt quệ, nên cầu thủ họ xoay sở, hoặc tìm cách ra đi”.',
'102.jpg',
'877',
N'Đăng',
'LT21')
insert into Tin values(
'MT103',
N'Vì một cái tên',
N'Có một chút kỷ niệm vừa trở về trong tâm trí của người yêu bóng đá Sài Gòn sau khi làng cầu đón nhận thành viên mới. Ấy là người ta lại nhắc với nhau về cái tên Cảng Sài Gòn, vốn đã chìm sâu trong ký ức.',
'04/08/2016',
N'Cái tên ấy, vừa là niềm tự hào mà cũng là nỗi ám ảnh. Sau khi Cảng Sài Gòn không còn, có Thép Miền Nam – Cảng Sài Gòn đá được vài mùa, sau đó xin đổi tên thành CLB Sài Gòn thì không được rồi cũng giải thể luôn. Kế tiếp là Navibank Sài Gòn, Sài Gòn FC ở V-League, rồi Sài Gòn United, Thanh Niên Sài Gòn ở giải hạng Nhất, hạng Nhì…Cứ có một đội bóng mới, thì người ta nghĩ ngay đến chuyện gắn tên Sài Gòn vào cùng quyết tâm đem lại thời hoàng kim như ngày xưa của Cảng. Rốt cục, tất cả cũng đều biến mất, bẵng đi cũng đã 2-3 năm rồi.

Nói như vậy để thấy Cảng ngày trước được yêu quý ra sao và di sản của đội bóng lớn đến mức nào.

Ai đứng sau CLB Sài Gòn trong tương lai thì cứ… từ từ rồi sẽ biết nhưng chắc chắn, việc chọn tên Sài Gòn thể hiện tham vọng của những người chủ sắp đến của đội bóng này. Chẳng có cách “lấy lòng” nào hay hơn thế cả.

Vì chí ít, nó thể hiện quyết tâm của đội bóng mới dù có lẽ họ cũng biết cái “huông” của những đội gắn tên Sài Gòn. Với người hâm mộ bóng đá TPHCM, chắc chắn bất kỳ đội bóng nào vừa xuất hiện cũng sẽ bị đem ra so sánh với Cảng Sài Gòn ngày trước. Lối đá nhuyễn nhỏ rất phù hợp với thị hiếu thưởng lãm của người hâm mộ mà Cảng Sài Gòn đã để lại sẽ là áp lực không hề nhỏ cho đội bóng mới của HLV Nguyễn Đức Thắng, một trong những thành viên cuối cùng của Thể Công, đối thủ lớn nhất của Cảng trước đây.

Ở phương diện khách quan, đã đến lúc bóng đá Sài Gòn cần quay trở lại với sân chơi chuyên nghiệp. 2 khóa sớm nhất của “lò” PVF đã được các nơi khác mượn thi đấu, đội hạng Nhất TPHCM cũng đang sẵn sàng để lên hạng. Sân Thống Nhất đã nguội lạnh quá lâu mà việc người hâm mộ bóng đá đến sân rất đông ở trận giao hữu Bình Dương - Muanghong United do báo SGGP Thể thao tổ chức vừa qua khiến nhiều người giật mình khi biết rằng người Sài Gòn đang “khát” bóng đá đỉnh cao ra sao.

Nhưng trên hết, cần phải lấy lại “thương hiệu” cho bóng đá Sài Gòn và đừng để những hồi ức về Cảng mãi mãi ám ảnh tâm trí người hâm mộ khi không có gì thay thế. Cái tên đầy tự hào đó cần có sự tiếp nối càng sớm càng tốt như một cách để giữ lửa cho người hâm mộ. Nếu nói bóng đá chuyên nghiệp luôn phải có được truyền thống để làm nền tảng cho sự phát triển thì càng để cho các ký ức về Cảng phai nhạt thì công cuộc đưa bóng đá TPHCM trở lại với đỉnh cao sẽ càng gian nan, cũng là một sự lãng phí rất lớn đối với một làng cầu mà dòng chảy bóng đá chưa từng ngừng lại.',
'103.jpg',
'810',
N'Đăng',
'LT21')
insert into Tin values(
'MT104',
N'Chuyện về gia đình cờ đất Mỏ',
N'Về Quảng Ninh, nhắc đến Cờ vua thì chắc chắn rằng không thể không nhắc đến gia đình cô bé Nguyễn Lê Cẩm Hiền, nhà vô địch thế giới lứa tuổi U8. Đây có thể xem là một gia đình có 3 thế hệ gắn bó với Cờ vua và có những đóng góp lớn cho Cờ vua Việt Nam trên đấu trường quốc tế. Trong sự thành công đó, người đặc biệt không thể thiếu chính là ông Nguyễn Khắc Hùng, ông nội của kỳ thủ Nguyễn Lê Cẩm Hiền.',
'03/09/2016',
N'Người truyền lửa

Đến với gia đình cô bé Nguyễn Lê Cẩm Hiền tại ngôi nhà số 374 đường Cao Xanh, T.p Hạ Long tỉnh Quảng Ninh, điều ấn tượng đầu tiên đối với chúng tôi chính là ông nội của bé - ông Nguyễn Khắc Hùng.

Dù đã gần 70 tuổi nhưng giọng nói của ông vẫn đầy hào sảng khi câu chuyện mới chỉ “chớm” tới chữ “Cờ”. Theo lời ông Hùng kể, ông xuất thân là kỹ sư mỏ nhưng lại mang trong mình một niềm đam mê mãnh liệt với Cờ vua. Chính ngọn lửa đam mê đó đã được ông truyền lại cho cậu con trai Nguyễn Anh Dũng khi chỉ mới 5 tuổi. “Ngày ấy, chỉ từ những quân cờ được cắt ra từ giấy mà đã khiến Dũng mê đến quên ăn quên ngủ. Nhiều lần mẹ của Dũng phải cầm roi đi tìm vì Dũng quá mải chơi Cờ với các bạn”, ông Hùng nhớ lại.

Theo ông Hùng, có thể nói bước ngoặt của cậu con trai bắt đầu từ khi Dũng 11 tuổi. Khi đó, ông Hùng xin được cho Dũng vào học lớp tại gia miễn phí của thầy Phạm Đình Tuyển. Không quản ngại xa xôi, đều đặn hàng tuần, trên chiếc xe đạp cũ, ông Hùng lại cùng người con trai lên lớp thầy Tuyển để tầm sư học đạo. Hành trình này chỉ kéo dài 3 năm khi Dũng giành thành tích xuất sắc tại giải trẻ toàn quốc và được đặc cách vào đội tuyển tỉnh. Kể từ đó, kỳ thủ Nguyễn Anh Dũng ngày một trưởng thành với bảng thành tích khá đồ sộ, tiêu biểu có thể kể đến năm tấm HCV giải VĐQG, một tấm HCV SEA Games và là một trong những đại kiện tướng quốc tế của Cờ vua Việt Nam. Ngay khi Dũng trưởng thành, nổi tiếng trong làng cờ thì cũng là lúc ông Hùng lui về phía sau, trở lại với vai trò của một người cha, tạo nên chỗ dựa tinh thần vững chắc cho Dũng trên con đường sự nghiệp. Và theo chia sẻ từ kỳ thủ Nguyễn Anh Dũng, nếu không có người cha, người thầy đặc biệt này thì anh chắc sẽ không thể có được một sự nghiệp đỉnh cao như vậy.

Duyên kỳ ngộ

Kỳ thủ Nguyễn Anh Dũng là con người trầm tính, kiệm lời, thậm chí là khá nhút nhát. Nhưng cũng chính vì những lý do đó đã khiến kỳ thủ Lê Thị Phương Liên (gốc Cần Thơ) xiêu lòng sau hai năm ăn tập tại đội tuyển Cờ Việt Nam. Năm 2004, anh Dũng chính thức đưa chị Liên trở thành dâu đất mỏ và là thành viên của đội tuyển cờ Quảng Ninh. Sau 3 năm kết hôn, ngày 27/4/2007, cô bé Nguyễn Lê Cẩm Hiền chính thức ra đời.

Theo lời anh Dũng, chị Liên, ngay từ khi sinh bé Hiền, cả hai anh chị đều không muốn và cũng không nghĩ rằng sẽ để bé Hiền theo nghiệp Cờ như bố, mẹ. Tuy nhiên, do anh chị đều bận bịu với công việc huấn luyện, quản lý của mình nên người mà bé Hiền tiếp xúc thường xuyên nhất lại chính là ông nội. Với niềm đam mê và cái máu cờ sẵn có, ông Hùng đã dạy bé Hiền chơi Cờ vua khi bé Hiền chỉ mới hơn 3 tuổi. Có lẽ, Cẩm Hiền đã thừa hưởng đầy đủ gen trội từ cả bố lẫn mẹ nên chỉ trong một khoảng thời gian ngắn, Cẩm Hiền đã có thể nhớ hết mặt các quân cờ.

Cảm thấy con như một bản sao chính gốc của mình, lúc bé Hiền lên 5 tuổi, anh Dũng đã quyết định cho con gái đi tập Cờ vua tại trường năng khiếu thể thao tỉnh. Và chỉ sau một năm tập luyện ở đây, vì quá xuất sắc Cẩm Hiền đã được chuyển từ trường năng khiếu lên tập Cờ tại Trung tâm huấn luyện và thi đấu TDTT tỉnh. Và kể từ năm 6 tuổi cho đến 8 tuổi, Cẩm Hiền đã thực sự trở thành một thần đồng của Cờ vua Việt khi liên tiếp giành rất nhiều huy chương trong nước cũng như quốc tế mà tiêu biểu là tấm HCV gây chấn động làng Cờ thế giới ở lứa tuổi U8 diễn ra tại Hy Lạp vừa qua.

Theo nhận xét của ông Hùng, Cẩm Hiền là cô bé vô cùng thông minh, sáng dạ và tiếp thu cực nhanh nhưng chính bản thân ông Hùng cũng không thể nghĩ rằng, ở lứa tuổi đó mà Hiền lại có thể có cách tư duy cờ rất hay và lạ đến như vậy. Chính vì thế, dù ông đã đánh đến 4-5 nghìn ván cờ trên mạng hàng ngày nhưng việc được cùng cháu luận cờ là điều mà ông tâm đắc nhất.

Có lẽ lúc này, ông Hùng chính là người hạnh phúc nhất khi niềm đam mê của ông được con, cháu nối bước thành công. Và trong thời gian tới, ông Hùng có thể sẽ tiếp tục đóng vai người truyền lửa cho đứa cháu Thanh Thảo (3 tuổi) – con gái thứ 2 của vợ chồng anh Dũng.',
'104.jpg',
'788',
N'Đăng',
'LT21')
insert into Tin values(
'MT105',
N'Kỷ lục gia HCV Đá cầu Việt Nam: Nguyễn Tuyết Cương',
N'Nói đến những chân cầu Vàng Đồng Tháp không thể không nhắc tới Nguyễn Tuyết Cương, thế hệ Vàng đầu tiên và cũng là người ươm mầm những tài năng cho Đá cầu vùng Đồng Tháp Mười. Cùng với những cái tên như Nguyễn Thị Nga, Đào Thái Hoàng Phúc, Nguyễn Tiết Cương đã đi vào lịch sử Đá cầu Việt Nam với tư cách là các nhà vô địch thế giới xuất sắc.',
'03/09/2016',
N'Hơn nửa đời gắn bó với bộ môn Đá cầu, tài năng của chàng trai quê gốc Đồng Tháp đã được ghi nhận bằng 9 chức vô địch thế giới, 2 ngôi quán quân SEA Games 22 cùng 2 chiếc HCV tại Đại hội thể thao châu Á trong nhà lần thứ 3 tổ chức tại Việt Nam. Niềm đam mê môn thể thao dân tộc đến với Cương từ khi còn rất nhỏ. Từ khi còn là cậu học sinh cấp 2 ở Cao Lãnh, Cương trở thành quán quân trong sự thán phục của bạn bè cùng trang lứa khi tâng được tới hơn 300 lần mà không làm rơi cầu. Không có khó khăn nào có thể cản bước cậu bé này đến với môn thể thao mà mình yêu thích. Không có cầu, Cương tự làm cầu để đá, không có giày thì đi chân đất. 

Nói về niềm đam mê Đá cầu, Nguyễn Tuyết Cương tâm sự: "Hồi nhỏ, vì mải mê tập luyện Đá cầu ở Trung tâm thể thao của thị xã rồi của tỉnh nên nhiều lần tôi đã trốn học. Rồi ham quá, khi thi đấu lại có thành tích nên tôi quyết định theo chuyên nghiệp luôn". Mặc dù phải bỏ học để theo nghiệp thể thao, thành tích gặt hái được trong sự nghiệp đã không phụ sự dày công tập luyện của chàng trai chân chất này.

Chia sẻ về kỷ niệm đối với những chiếc HCV giành được trong sự nghiệp thi đấu của mình, Cương cho biết: "mỗi tấm HCV đều là niềm vui, niềm tự hào của bản thân". Chiếc HCV đầu tiên tại Hội khỏe Phù Đổng tổ chức ở Hải Phòng vào năm 1996 được coi là dấu ấn khởi đầu cho sự nghiệp thi đấu của Nguyễn Tuyết Cương. Còn tấm HCV tại  giải vô địch quốc gia năm 1999 có ý nghĩa quan trọng khi ghi dấu sự gắn bó lâu dài của chân cầu Vàng Đồng Tháp với nghiệp thể thao cho đến ngày hôm nay.

Lạ lùng hơn cả khi Cương tuyên bố rằng chín HCV giành được tại bốn giải vô địch thế giới "không thấy sướng" bằng hai tấm HCV giành được trên sân nhà tại Đại hội thể thao châu Á trong nhà lần thứ 3, bởi cảm giác lúc đó thấy mình giống một ngôi sao. Đó cũng là những huy chương thay cho lời tri ân ngọt ngào mà Tuyết Cương gửi tới người hâm mộ đã đồng hành cùng anh trên suốt chặng đường trước khi chính thức nói lời chia tay với nghiệp VĐV.

Sau Đại hội Thể dục thể thao toàn quốc năm 2010, Tuyết Cương chính thức chuyển sang làm công tác huấn luyện. Tính cách điềm đạm, tinh thần và niềm đam mê với nghề đã giúp Cương tiếp tục thành công trên cương vị HLV của tuyển Đá cầu Đồng Tháp. Tuyết Cương đã góp phần không nhỏ trong việc tạo ra thế hệ Vàng của Đá Cầu Việt Nam gồm: Lê Thanh Tuấn, Nguyễn Thị Bích Trăm, Nguyễn Thị Thủy Tiên, Lê Thị Bé Sáu, Lê Thanh Điền... 

Luôn đồng hành cùng thế hệ đàn em trên sàn đấu cũng như sân tập, sự gần gũi, điềm đạm trong phong cách chỉ đạo thi đấu của người anh, người HLV này đã góp phần không nhỏ giúp Đá cầu Đồng Tháp ghi dấu ấn tại các giải đấu trong nước và thế giới như: Tại giải vô địch Đá cầu thế giới năm 2013 diễn ra ở Đồng Tháp, Nguyễn Thị Bích Trăm và Lê Thanh Tuấn đã góp phần giành 2 trong số 3 HCV mà Đá cầu Việt Nam giành được tại giải. Hay tại giải Vô địch Đá cầu thế giới lần thứ VIII - năm 2015 tại Roma (Italia), Nguyễn Thị Thủy Tiên, Lê Thanh Tuấn, Trần Thanh Điền và Nguyễn Thị Bích Trăm cũng góp phần giành 2 trong số 4 HCV của Đá cầu Việt Nam, vượt qua Trung Quốc 1 HCV, bảo vệ thành công chức vô địch thế giới và lần thứ 8 liên tiếp giành ngôi nhất toàn đoàn từ ngày giải đấu được tổ chức.

Bên cạnh đó, tuyển Đá cầu Đồng Tháp còn khẳng định được đẳng cấp ở các giải toàn quốc nhiều năm qua không chỉ ở nhóm tuyển, mà còn ở các giải trẻ, qua đó thể hiện được “bản lĩnh” của một trong những địa phương hàng đầu quốc gia. Kết quả này cũng cho thấy công tác đào tạo VĐV kế thừa được quan tâm và thực hiện hiệu quả.

Để tiếp tục phát triển các thế hệ cho Đá cầu Đồng Tháp trong tương lai, HLV Nguyễn Tuyết Cương cũng cùng Ban huấn luyện xây dựng kế hoạch trong đó có việc tiến hành khảo sát mở các lớp trọng điểm đào tạo Đá cầu ở Thị xã Hồng Ngự và huyện Thanh Bình nhằm tiềm kiếm những VĐV có năng khiếu để bổ sung lực lượng vào đầu năm 2016. Cũng trong năm 2016, bộ môn lên kế hoạch thi đấu tập huấn với Thành phố Hồ Chí Minh và có chuyến tập huấn tại Trung Quốc, tạo điều kiện cho VĐV cọ xát, nâng cao trình độ.',
'105.jpg',
'791',
N'Đăng',
'LT21')