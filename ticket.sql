-- Cau2
Select * From phim order by Thoi_gian;
-- Cau3
Select * From phim where Thoi_gian = (Select max(Thoi_gian)from phim);
-- Cau4
Select * From phim where Thoi_gian = (Select min(Thoi_gian)from phim);
-- Cau5
Select * From ghe where So_ghe  like ('A%');
-- Cau6
ALTER TABLE phong
CHANGE COLUMN Trang_thai Trang_thai NVARCHAR(25) NULL DEFAULT NULL ;
-- Cau7
update phong set Trang_thai = if(Trang_thai = 0, 'Đang sửa',if(Trang_thai = 1, 'Đang sử dụng','Unknow')) where PhongID > 0;
-- Cau8
Select * From phim having length(Ten_phim) between 15 and 25;
-- Cau9
Select (concat(phong.Ten_phong,phong.Trang_thai)) as `Trạng thái phòng chiếu` from phong;
-- Cau10
create table tblrank(
Select Ten_phim,Thoi_gian From phim order by Ten_phim
);
-- Cau11
ALTER TABLE phim
ADD COLUMN Mo_ta NVARCHAR(255) NULL AFTER Thoi_gian;
update phim set Mo_ta = (concat('Đây là bộ phim thể loại ',Loai_phim)) where phimID>0;
Select * From phim;
update phim set Mo_ta = (concat('Đây là film thể loại ',Loai_phim)) where phimID>0;
Select * From phim;
