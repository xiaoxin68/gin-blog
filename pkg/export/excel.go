package export

import "gin-blog/pkg/setting"

func GetExcelFullUrl(name string) string {
	//http://localhost:8000/export/name
	return setting.AppSetting.PrefixUrl + "/" + GetExcelPath() + name
}

func GetExcelPath() string {
	return setting.AppSetting.ExportSavePath
}

func GetExcelFullPath() string {
	//runtime/export/
	return setting.AppSetting.RuntimeRootPath + GetExcelPath()
}
