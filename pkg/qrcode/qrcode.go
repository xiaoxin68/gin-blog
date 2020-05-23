package qrcode

import (
	"gin-blog/pkg/file"
	"gin-blog/pkg/setting"
	"gin-blog/pkg/util"
	"github.com/boombuler/barcode"
	"github.com/boombuler/barcode/qr"
	"image/jpeg"
)

type QrCode struct {
	URL    string
	Width  int
	Height int
	Ext    string
	Level  qr.ErrorCorrectionLevel
	Mode   qr.Encoding
}

const (
	EXT_JPG = ".jpg"
)

func NewQrCode(url string, width, height int, level qr.ErrorCorrectionLevel, mode qr.Encoding) *QrCode {
	return &QrCode{
		URL:    url,
		Width:  width,
		Height: height,
		Level:  level,
		Mode:   mode,
		Ext:    EXT_JPG,
	}
}

func GetQrCodePath() string {
	//   qrcode/
	return setting.AppSetting.QrCodeSavePath
}

func GetQrCodeFullPath() string {
	//runtime/qrcode/
	return setting.AppSetting.RuntimeRootPath + setting.AppSetting.QrCodeSavePath
}

func GetQrCodeFullUrl(name string) string {
	//  http://localhost:8000/qrcode/name
	return setting.AppSetting.PrefixUrl + "/" + GetQrCodePath() + name
}

func GetQrCodeFileName(value string) string {
	return util.EncodeMD5(value)
}

func (q *QrCode) GetQrCodeExt() string {
	return q.Ext
}

func (q *QrCode) CheckEncode(path string) bool {
	src := path + GetQrCodeFileName(q.URL) + q.GetQrCodeExt()
	if file.CheckNotExist(src) == true {
		return false
	}

	return true
}

func (q *QrCode) Encode(path string) (string, string, error) {
	//获取二维码生成路径
	name := GetQrCodeFileName(q.URL) + q.GetQrCodeExt()
	src := path + name
	if file.CheckNotExist(src) == true {

		//创建二维码
		code, err := qr.Encode(q.URL, q.Level, q.Mode)
		if err != nil {
			return "", "", err
		}

		//缩放二维码到指定大小
		code, err = barcode.Scale(code, q.Width, q.Height)
		if err != nil {
			return "", "", err
		}

		//新建存放二维码图片的文件
		f, err := file.MustOpen(name, path)
		if err != nil {
			return "", "", nil
		}

		defer f.Close()

		//将图像（二维码）以 JPEG 4：2：0 基线格式写入文件
		err = jpeg.Encode(f, code, nil) //第三个参数可设置其图像质量，默认值为 75
		if err != nil {
			return "", "", nil
		}
	}
	return name, path, nil
}
